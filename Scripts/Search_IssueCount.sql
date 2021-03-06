
CREATE PROCEDURE [dbo].[Search_IssueCount] (
	@FromDate VARCHAR(20)
	,@ToDate VARCHAR(30)
	)
AS
--[Search_IssueCount] '02/03/2017','06/06/2017'
BEGIN
	--SELECT LoggedBy,COUNT(id) IssueCount
	--FROM Crmnext_IssueResolution_Master
	--WHERE LoggedDate  BETWEEN @FromDate AND @ToDate GROUP BY LoggedBy
	SELECT LoggedBy
		,COUNT(LoggedBy) IssueCount
	FROM Crmnext_IssueResolution_Master
	WHERE CONVERT(VARCHAR(10), LoggedDate, 101) BETWEEN @FromDate
			AND @ToDate
	GROUP BY LoggedBy
	ORDER BY COUNT(LoggedBy) DESC
END
