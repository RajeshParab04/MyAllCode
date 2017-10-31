
DROP FUNCTION [dbo].[udfCountString]
GO

CREATE FUNCTION [dbo].[udfCountString](
    @InputString    VARCHAR(MAX),
    @SearchString    VARCHAR(100)
)
RETURNS INT
BEGIN
    RETURN (LEN(@InputString) -
            LEN(REPLACE(@InputString, @SearchString, ''))) /
            LEN(@SearchString)
END
GO
DROP FUNCTION [dbo].[SplitWordList]
GO
CREATE function [dbo].[SplitWordList]
(
 @list varchar(8000)
)
returns @t table 
(
 Word varchar(50) not null,
 Position int identity(1,1) not null
)
as begin
  declare 
    @pos int,
    @lpos int,
    @item varchar(100),
    @ignore varchar(100),
    @dl int,
    @a1 int,
    @a2 int,
    @z1 int,
    @z2 int,
    @n1 int,
    @n2 int,
    @c varchar(1),
    @a smallint
  select 
    @a1 = ascii('a'),
    @a2 = ascii('A'),
    @z1 = ascii('z'),
    @z2 = ascii('Z'),
    @n1 = ascii('0'),
    @n2 = ascii('9')
  set @ignore = '''"'
  set @pos = 1
  set @dl = datalength(@list)
  set @lpos = 1
  set @item = ''
  while (@pos <= @dl) begin
    set @c = substring(@list, @pos, 1)
    if (@ignore not like '%' + @c + '%') begin
      set @a = ascii(@c)
      if ((@a >= @a1) and (@a <= @z1))  
        or ((@a >= @a2) and (@a <= @z2))
        or ((@a >= @n1) and (@a <= @n2))
      begin
        set @item = @item + @c
      end else if (@item > '') begin
        insert into @t values (@item)
        set @item = ''
      end
    end 
    set @pos = @pos + 1
  end
  if (@item > '') begin
    insert into @t values (@item)
  end
  return
end
GO

DROP TABLE [dbo].[Crmnext_IssueResolution_Master]
GO


CREATE TABLE [dbo].[Crmnext_IssueResolution_Master](
	[Id] [int] NULL,
	[ProjectName] [varchar](100) NOT NULL,
	[InstanceName] [varchar](100) NULL,
	[Type] [varchar](100) NULL,
	[LoggedDate] [datetime] NULL,
	[Subject] [varchar](200) NOT NULL,
	[LoggedBy] [varchar](100) NULL,
	[IssueDescription] [varchar](max) NOT NULL,
	[IssueResolution] [varchar](max) NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
insert into Crmnext_IssueResolution_Master values (1 , 'Axis','Dev','Migration',getdate(),'Migration delta x y Is not working','Siddhesh','mig x y','heheheheheheheheh')
insert into Crmnext_IssueResolution_Master values (1 , 'HDFC','Dev','Migration1',getdate(),'Migration Migration Is not working','Siddhesh','Migration Migration MigrationMigration Migration is too slow','heheheheheheheheh')
insert into Crmnext_IssueResolution_Master values (1 , 'demo','Dev','Migration2',getdate(),'Migration x Migration Migration Is not working','Siddhesh','Migration x MigrationMigration MigrationMigration Migration Migration is too slow','heheheheheheheheh')
insert into Crmnext_IssueResolution_Master values (1 , 'Axis','Dev','Migration3',getdate(),'Migration Migration Migration Migration Is not working','Siddhesh','rajesh migration','heheheheheheheheh')
GO

DROP PROCEDURE [dbo].[Sp_getSearchResult]
GO

CREATE  PROCEDURE [dbo].[Sp_getSearchResult](

@searchString  varchar(200)                 --Input parameter  

)
AS
BEGIN
--[Sp_getSearchResult] 'mig'
DECLARE @ProjectName      VARCHAR(100),
        @InstanceName     VARCHAR(100),
        @Type             VARCHAR(100),
        @LoggedDate       DATETIME,
        @Subject          VARCHAR(200),
        @LoggedBy         VARCHAR(100),
        @IssueDescription VARCHAR(max),
        @IssueResolution  VARCHAR(max),
        @score            INT,
        @count            INT,
        @word             varchar(100),
        @position         INT


CREATE TABLE #searchWords
  (
     word     VARCHAR(100),
     position INT
  )

CREATE TABLE #searchResults
  (
     ProjectName      VARCHAR(100),
     InstanceName     VARCHAR(100),
     Type             VARCHAR(100),
     LoggedDate       DATETIME,
     Subject          VARCHAR(200),
     LoggedBy         VARCHAR(100),
     IssueDescription VARCHAR(max),
     IssueResolution  VARCHAR(Max),
     --  quality    TINYINT,
     score            INT
  )

  
		INSERT INTO #searchWords SELECT word, position from SplitWordList(@searchString)

DECLARE ContentCursor CURSOR FAST_FORWARD FOR
  SELECT ProjectName,
         InstanceName,
         Type,
         LoggedDate,
         Subject,
         LoggedBy,
         IssueDescription,
         IssueResolution
  FROM   Crmnext_IssueResolution_Master
DECLARE SearchWordCursor CURSOR DYNAMIC FOR
  SELECT word,
         position
  FROM   #searchWords

OPEN SearchWordCursor

OPEN ContentCursor

FETCH NEXT FROM ContentCursor INTO @ProjectName, @InstanceName, @Type, @LoggedDate, @Subject, @LoggedBy, @IssueDescription, @IssueResolution

WHILE @@FETCH_STATUS = 0
  BEGIN
      FETCH FIRST FROM SearchWordCursor INTO @word, @position

      WHILE @@FETCH_STATUS = 0
        BEGIN
            -- place more weight on the first search term
            SELECT @score = CASE @position
                              WHEN 1 THEN 3
                              WHEN 2 THEN 2
                              ELSE 1
                            END

            -- search the TITLE 
            SET @count = dbo.Udfcountstring(@Subject, @word)

            IF @count > 0
              BEGIN
                  INSERT INTO #searchResults
                  VALUES      (@ProjectName,
                               @InstanceName,
                               @Type,
                               @LoggedDate,
                               @Subject,
                               @LoggedBy,
                               @IssueDescription,
                               @IssueResolution,
                               @score * 10)
              END

            -- search the PAGE
            SET @count = dbo.Udfcountstring(@IssueDescription, @word)

            IF @count > 0
              BEGIN
                  INSERT INTO #searchResults
                  VALUES      (@ProjectName,
                               @InstanceName,
                               @Type,
                               @LoggedDate,
                               @Subject,
                               @LoggedBy,
                               @IssueDescription,
                               @IssueResolution,
                               @score)
              END

            FETCH NEXT FROM SearchWordCursor INTO @word, @position
        END

      FETCH NEXT FROM ContentCursor INTO @ProjectName, @InstanceName, @Type, @LoggedDate, @Subject, @LoggedBy, @IssueDescription, @IssueResolution
  END

CLOSE ContentCursor

DEALLOCATE ContentCursor

CLOSE SearchWordCursor

DEALLOCATE SearchWordCursor

SELECT TOP 100 ProjectName,
         InstanceName,
         Type,
       --  LoggedDate,
		 CONVERT(VARCHAR(11),LoggedDate,6) LoggedDate,
         Subject,
         LoggedBy,
         IssueDescription,
         IssueResolution,
              Sum(S.score) AS Score
FROM   #searchResults S
GROUP  BY ProjectName,
         InstanceName,
         Type,
         LoggedDate,
         Subject,
         LoggedBy,
         IssueDescription,
         IssueResolution
ORDER  BY Sum(S.score) DESC
    
--	select * from #searchResults
	  
		 drop table #searchWords 
		 	 drop table #searchResults 

			 end
GO





