--TRUNCATE TABLE Crmnext_IssueResolution_Master



INSERT INTO Crmnext_IssueResolution_Master(LoggedDate,ProjectName,InstanceName,[Type],[Subject],IssueDescription,IssueResolution,LoggedBy) VALUES(GETDATE(),'COMMON','QA','OTHERS','OTHERS','Application and database server utilization goes high with out running the load test.','<p><b>Step of Analysis-</b>First check the Application and database server configuration in Load testing environment and compare it to Production environment.</br><b>TroubleShooting Steps-</b> If Configuration is not same as production  in the Load testing environment so sugeest customer to setup the load testing environment with the same configuration in production.</p>','Shashank')
INSERT INTO Crmnext_IssueResolution_Master(LoggedDate,ProjectName,InstanceName,[Type],[Subject],IssueDescription,IssueResolution,LoggedBy) VALUES(GETDATE(),'COMMON','QA','OTHERS','OTHERS','When you face performance issue.
Or we need to check before start of Load testing.','<p><b>Step of Analysis-</b>Check Application and Database Server.
</br><b>TroubleShooting Steps-</b> Application Server : 
1) Go to the services and check memcached service is present or not.
2) Check followings DLL is registered or not in Application and services.
     a) Acidaes.BusinessNext.Caching.dll
     b) Acidaes.BusinessNext.Caching.Memcached.dll
     c) Enyim.Caching.dll 
3) Check caching server address in Memcached tag in application and services web config files.
4) Check Following 2 tags in application and services Web config.
      a) <add key=""IsCachingAllow"" value=""true""/>
      b) <add key=""IsEnterprise"" value=""True""/>
5) Check ETag  configuration on application Server.
6) Check Set Common Header option on Application Server.
7) Check compression is enabled or not.
8) Check Anonymous and windows Authentication is enabled or not.

Database Server : 
1) Max degree of parallelism value should be  8.
2) Cost threshold for parallelism value should be 15.
3) Read comitted Snapshot value should be 1.
4) Compatibiliy level value should be 100.
</p>','Shashank')
INSERT INTO Crmnext_IssueResolution_Master(LoggedDate,ProjectName,InstanceName,[Type],[Subject],IssueDescription,IssueResolution,LoggedBy) VALUES(GETDATE(),'COMMON','QA','OTHERS','OTHERS','When database server performance goes high.','<p><b>Step of Analysis-</b>1) First open the database on server.
2) Right click on Server.
3) Click on Properties.
4) In memory tab Check in maximum server memory(in mb) text box.</br><b>TroubleShooting Steps-</b> 1)  Memory should be 70% of total memory of database server(in mb).</p>','Shashank')
INSERT INTO Crmnext_IssueResolution_Master(LoggedDate,ProjectName,InstanceName,[Type],[Subject],IssueDescription,IssueResolution,LoggedBy) VALUES(GETDATE(),'COMMON','QA','OTHERS','OTHERS','Performance related.','<p><b>Step of Analysis-</b>1) Check the scope of user.
2) All the user should have company scope.</br><b>TroubleShooting Steps-</b> 1) IF user have team scope or other so update all the user with company scope.
For updation of scope of users use following tables.
A) Az_appuser
b) Usercontact</p>','Shashank')


INSERT INTO Crmnext_IssueResolution_Master(LoggedDate,ProjectName,InstanceName,[Type],[Subject],IssueDescription,IssueResolution,LoggedBy) VALUES(GETDATE(),'COMMON','QA','LDAP','OTHERS','After configuration of LDAP on Application server.
IF you found the connectivity issue through LDAP.','<p><b>Step of Analysis-</b>Check the connectivity  Inforamation Related to LDAP Server in LDAP config provided by Client
For checking the connectivity of LDAP Server and Application Server do the followings.
1) Copy the LDAP Testing tool on Application Server.
2) Open the Tool.
3) A pop up window will open.
4) Fill all the required information for connectivity with LDAP Server provided by client.
5) IF Connectivity information is wrong It will show an error.so that you can identified which attribute is wrong</br><b>TroubleShooting Steps-</b> 
1) after Correcting the information,test the connection.
2) If connection is right so It will show a success message and a ''Save'' button.
3)  click on Save button It will generate the LDAP config.
4) Copy the newly generated LDAP config in app folder.
</p>','Shashank')

INSERT INTO Crmnext_IssueResolution_Master(LoggedDate,ProjectName,InstanceName,[Type],[Subject],IssueDescription,IssueResolution,LoggedBy) VALUES(GETDATE(),'COMMON','QA','OTHERS','OTHERS','Product and category not getting created on production ','<p><b>Step of Analysis-</b>There were two scenorios for this:
1.The value of Product id in products table for was set to 0.
2.While creating any product a checkbox needs to be check in order to make it visible in the view.  </br><b>TroubleShooting Steps-</b> 1.Make the row invalid by setting ownerid as a negative value.
2.Please make sure to check mark the visible to all teams and members check box.</p>','Acharya')


INSERT INTO Crmnext_IssueResolution_Master(LoggedDate,ProjectName,InstanceName,[Type],[Subject],IssueDescription,IssueResolution,LoggedBy) VALUES(GETDATE(),'COMMON','QA','OTHERS','OTHERS','Violation of PRIMARY KEY constraint','<p><b>Step of Analysis-</b>Check if object id is new or update on destination DB  </br><b>TroubleShooting Steps-</b> Make changes accordingly in delete statement</p>','Lalchand')
INSERT INTO Crmnext_IssueResolution_Master(LoggedDate,ProjectName,InstanceName,[Type],[Subject],IssueDescription,IssueResolution,LoggedBy) VALUES(GETDATE(),'COMMON','QA','OTHERS','OTHERS','Individual block does not execute','<p><b>Step of Analysis-</b>Find any procedure in test script</br><b>TroubleShooting Steps-</b> Write Go at starting and ending of such block</p>','Lalchand')
INSERT INTO Crmnext_IssueResolution_Master(LoggedDate,ProjectName,InstanceName,[Type],[Subject],IssueDescription,IssueResolution,LoggedBy) VALUES(GETDATE(),'COMMON','QA','OTHERS','OTHERS','Setup get executed successfully but MigrationDetails entry not present','<p><b>Step of Analysis-</b>Find -> use DB name in test script
It will run on mentioned db in test script instead of db provided while running setup</br><b>TroubleShooting Steps-</b> Comment the use DB name statement </p>','Lalchand')
INSERT INTO Crmnext_IssueResolution_Master(LoggedDate,ProjectName,InstanceName,[Type],[Subject],IssueDescription,IssueResolution,LoggedBy) VALUES(GETDATE(),'COMMON','QA','OTHERS','OTHERS','setup rollback because of MigrationDetails Error','<p><b>Step of Analysis-</b>No data present in MigrationDetails</br><b>TroubleShooting Steps-</b> Fill atlest one entry in MigrationDetails</p>','Lalchand')
INSERT INTO Crmnext_IssueResolution_Master(LoggedDate,ProjectName,InstanceName,[Type],[Subject],IssueDescription,IssueResolution,LoggedBy) VALUES(GETDATE(),'COMMON','QA','OTHERS','OTHERS',' SmartActivity Migration ','<p><b>Step of Analysis-</b>After Migartion Status code of SmartActivity
shoud get migrated with it.</br><b>TroubleShooting Steps-</b> ProcesStatusCodeMapping should get 
 migrate if we need to map Status code in  SmartActivity</p>','Lalchand')
INSERT INTO Crmnext_IssueResolution_Master(LoggedDate,ProjectName,InstanceName,[Type],[Subject],IssueDescription,IssueResolution,LoggedBy) VALUES(GETDATE(),'COMMON','QA','OTHERS','OTHERS','For Tool Tip migartion  in Layout.','<p><b>Step of Analysis-</b>Tool Tip is not visible in Layout.</br><b>TroubleShooting Steps-</b> For ToolTip migartion FieldHelp table 
needs to be migrate with respect to layoutid.</p>','Varsha')



INSERT INTO Crmnext_IssueResolution_Master(LoggedDate,ProjectName,InstanceName,[Type],[Subject],IssueDescription,IssueResolution,LoggedBy) VALUES(GETDATE(),'COMMON','QA','OTHERS','OTHERS','Date Time Hardening(Oracle).','<p><b>Step of Analysis-</b>Here columns contains date time values so unable to cast in
numeric values.
EXAMPLE:
begin crm_hardening_single_column (''Lea_ex1'',''Lea_ex1_1'',''NUMBER(10,0)''); anonymous block completed
/
begin crm_hardening_single_column (''Lea_ex1'',''Lea_ex1_4'',''NUMBER(10,0)''); anonymous block completed
/
begin crm_hardening_single_column (''Lea_ex1'',''Lea_ex1_26'',''nvarchar2(256)''); anonymous block completed
/
begin crm_hardening_single_column (''LEA_EX1'',''LEA_EX1_35'',''Date''); Table Name: LEA_EX1 Column Name: LEA_EX1_35, Message: Failed</br><b>TroubleShooting Steps-</b> If the column name contains the date time value it is not possible to convert
it to number so, first we need to store the values in different column  then make the required column blank.Now hardened it to numeric value.</p>','Acharya')
INSERT INTO Crmnext_IssueResolution_Master(LoggedDate,ProjectName,InstanceName,[Type],[Subject],IssueDescription,IssueResolution,LoggedBy) VALUES(GETDATE(),'COMMON','QA','OTHERS','OTHERS','Syntax must be proper.','<p><b>Step of Analysis-</b>exec Crm_hardening_single_column ''acc_ex4'',''acc_ex4_1'',''nvarchar(20)'';

exec Crm_hardening_single_column ''acc_ex4'',''acc_ex4_3'',''nvarchar(20);
</br><b>TroubleShooting Steps-</b> please make it a point to write proper syntax.</p>','lalchand')
INSERT INTO Crmnext_IssueResolution_Master(LoggedDate,ProjectName,InstanceName,[Type],[Subject],IssueDescription,IssueResolution,LoggedBy) VALUES(GETDATE(),'COMMON','QA','OTHERS','OTHERS','Data value must be proper in synk with the
data size provided in datatype.','<p><b>Step of Analysis-</b>exec Crm_hardening_single_column ''acc_ex4'',''acc_ex4_2'',''nvarchar(20)'';
NOTE: nvarchar(20) is Target Data Type.</br><b>TroubleShooting Steps-</b> If the data is alredy present on the to be hardened column then make 
sure the size of the data is less than the target data type.</p>','Vishal')
INSERT INTO Crmnext_IssueResolution_Master(LoggedDate,ProjectName,InstanceName,[Type],[Subject],IssueDescription,IssueResolution,LoggedBy) VALUES(GETDATE(),'COMMON','QA','OTHERS','OTHERS','The specified column don’t get hardened
 post the hardening process. ','<p><b>Step of Analysis-</b>This is due to auto hardening is set to ON.</br><b>TroubleShooting Steps-</b> Make it a point to make sure auto hardening is set to OFF in web config.</p>','Acharya')




 INSERT INTO Crmnext_IssueResolution_Master(LoggedDate,ProjectName,InstanceName,[Type],[Subject],IssueDescription,IssueResolution,LoggedBy) VALUES(GETDATE(),'COMMON','QA','OTHERS','OTHERS',' The Hook is not being fired.','<p><b>Step of Analysis-</b>We have to Check CustomAction Table entry because to activate the Custom Hooks, an entry needs to be made for each hook in the 
CustomAction Table.</br><b>TroubleShooting Steps-</b> We have to follow the below description for CustomAction Table entry
S.No.          Column Name             ---    Description
1                   OwnerId                                 Unique id of the Owner
2                   CustomActionID                  Unique ID of the Custom action entry
3                   ItemTypeID                           CRMnext Object ID
4                   ActionID                                 1   -    save new
                                                                        2   -    save edit
                                                                        3   -    Lead qualify
5                  TypeID                                     Always set as 4 for SP based Custom hook
6                   SQL Statement                    Name of the hook SP
7                  Execution Order                  If there are multiple hooks on the same transition
                                                                        point for an object 
8                  AssemblyName                    Null for SP based Custom Hook
9                  ClassName                              Null for SP based Custom Hook</p>','Komal')
INSERT INTO Crmnext_IssueResolution_Master(LoggedDate,ProjectName,InstanceName,[Type],[Subject],IssueDescription,IssueResolution,LoggedBy) VALUES(GETDATE(),'COMMON','QA','OTHERS','OTHERS','Hook should be fired on save new but it is not being fired on save new or vice versa.','<p><b>Step of Analysis-</b>We have to check ActionID in CustomAction table.</br><b>TroubleShooting Steps-</b> ActionID should be 1 for save new and 2 for save edit.</p>','Komal')
INSERT INTO Crmnext_IssueResolution_Master(LoggedDate,ProjectName,InstanceName,[Type],[Subject],IssueDescription,IssueResolution,LoggedBy) VALUES(GETDATE(),'COMMON','QA','OTHERS','OTHERS',' Custom Hooks not fired for perticular object
','<p><b>Step of Analysis-</b>We have to check company Setting Mask</br><b>TroubleShooting Steps-</b> To enable the Stored Procedure based Hook for specific CRMnext object, the
flag for allowing SQL custom action on that object should be set as TRUE in the
Company Settings Mask.
</p>','Komal/Nitish/kishalya')
INSERT INTO Crmnext_IssueResolution_Master(LoggedDate,ProjectName,InstanceName,[Type],[Subject],IssueDescription,IssueResolution,LoggedBy) VALUES(GETDATE(),'COMMON','QA','OTHERS','OTHERS','API hook not fired.','<p><b>Step of Analysis-</b>When we didnt replace dll of new build with build deployment then API hook will not fire
</br><b>TroubleShooting Steps-</b> We have to replace all dll attached  with new build in bin folder of application as well as in
Integration</p>','Shashank')
INSERT INTO Crmnext_IssueResolution_Master(LoggedDate,ProjectName,InstanceName,[Type],[Subject],IssueDescription,IssueResolution,LoggedBy) VALUES(GETDATE(),'COMMON','QA','OTHERS','OTHERS','Hook not fired because of error in sp','<p><b>Step of Analysis-</b>We have to check Sp .</br><b>TroubleShooting Steps-</b> We have to create a temp table and check that correct data is coming or not.</p>','Vishal')
INSERT INTO Crmnext_IssueResolution_Master(LoggedDate,ProjectName,InstanceName,[Type],[Subject],IssueDescription,IssueResolution,LoggedBy) VALUES(GETDATE(),'COMMON','QA','OTHERS','OTHERS',' Hook not fired','<p><b>Step of Analysis-</b>1.) Execution order of hook
2.) Check data type hardening is done or not
3.)Check no of BER amd Alert rule on Perticular object.</br><b>TroubleShooting Steps-</b> 1.) Execution order of hook
2.) Check data type hardening is done or not
3.)Check no of BER amd Alert rule on Perticular object.</p>','Vishal')



INSERT INTO Crmnext_IssueResolution_Master(LoggedDate,ProjectName,InstanceName,[Type],[Subject],IssueDescription,IssueResolution,LoggedBy) VALUES(GETDATE(),'COMMON','QA','OTHERS','OTHERS','Syndication service does
not get started more often from service.msc 
window.','<p><b>Step of Analysis-</b>Some of the  contents of  the service
are not either extracted or goes missing.</br><b>TroubleShooting Steps-</b> Make sure if the service is extracted successfully and check if the necessary dlls are present.</p>','Santosh')
INSERT INTO Crmnext_IssueResolution_Master(LoggedDate,ProjectName,InstanceName,[Type],[Subject],IssueDescription,IssueResolution,LoggedBy) VALUES(GETDATE(),'COMMON','QA','OTHERS','OTHERS','The status of the service 
shows stopped even if the
service is installed 
successfully.','<p><b>Step of Analysis-</b>There can be an error with connection string and its syntax.</br><b>TroubleShooting Steps-</b> Check with the connection string and if not resolved copy the whole conncetion string tag from the
applications web.config file and replace it in the services config file.</p>','Santosh')
INSERT INTO Crmnext_IssueResolution_Master(LoggedDate,ProjectName,InstanceName,[Type],[Subject],IssueDescription,IssueResolution,LoggedBy) VALUES(GETDATE(),'COMMON','QA','OTHERS','OTHERS','Logs are not generated
to keep track of the activities.','<p><b>Step of Analysis-</b>A key in the config file must be set to true.</br><b>TroubleShooting Steps-</b> Check in the config file of the service and search for isenablelogging key.set it to true.</p>','Santosh')
INSERT INTO Crmnext_IssueResolution_Master(LoggedDate,ProjectName,InstanceName,[Type],[Subject],IssueDescription,IssueResolution,LoggedBy) VALUES(GETDATE(),'COMMON','QA','OTHERS','OTHERS','Mails are not captured
successfully and most 
of them get failed.','<p><b>Step of Analysis-</b>Check for the any blocked mail domain in the syndication config setting in the 
product.</br><b>TroubleShooting Steps-</b> Ask the client to remove the domain name from blocked setting.</p>','Santosh')
INSERT INTO Crmnext_IssueResolution_Master(LoggedDate,ProjectName,InstanceName,[Type],[Subject],IssueDescription,IssueResolution,LoggedBy) VALUES(GETDATE(),'COMMON','QA','OTHERS','OTHERS','Sometimes syndication service does not work properly and both polled status and capture status  shows failed status','<p><b>Step of Analysis-</b>This is due to mismatch of dll file versions.</br><b>TroubleShooting Steps-</b> Do check all the dll versions and also check with the SA team if any updated dll need to be replaced.</p>','Santosh')
INSERT INTO Crmnext_IssueResolution_Master(LoggedDate,ProjectName,InstanceName,[Type],[Subject],IssueDescription,IssueResolution,LoggedBy) VALUES(GETDATE(),'COMMON','QA','OTHERS','OTHERS','For any MVC application which is upgraded from non mvc application syndication service does work properly.','<p><b>Step of Analysis-</b>There are some pre requisites that need to be fulfilled. Need to check with the SA team and engagement team</br><b>TroubleShooting Steps-</b> There can be scripts or dlls that need to be run along with the setup.Need to co ordinate with the SA 
Team </p>','Santosh')
INSERT INTO Crmnext_IssueResolution_Master(LoggedDate,ProjectName,InstanceName,[Type],[Subject],IssueDescription,IssueResolution,LoggedBy) VALUES(GETDATE(),'COMMON','QA','OTHERS','OTHERS','Syndication service does not get fired propely','<p><b>Step of Analysis-</b>Check with the config file of the service and required keys and its respective values</br><b>TroubleShooting Steps-</b> For the keys related queries please refer the email syndication service document and also check if 
there are any spaces in between the values of the related keys.</p>','Santosh')



INSERT INTO Crmnext_IssueResolution_Master(LoggedDate,ProjectName,InstanceName,[Type],[Subject],IssueDescription,IssueResolution,LoggedBy) VALUES(GETDATE(),'COMMON','QA','OTHERS','OTHERS','Checklist for Webservice','<p><b>Step of Analysis-</b>EDS Webservice Configuration</br><b>TroubleShooting Steps-</b> 1. Check the WSDL file Location
2. Browse that path and check whether it is open or not
3.check the return type of method
4.If WCF Service then enable Is WCF Client flag
5. Check the table Externalsourcelog </p>','Lalchand')
INSERT INTO Crmnext_IssueResolution_Master(LoggedDate,ProjectName,InstanceName,[Type],[Subject],IssueDescription,IssueResolution,LoggedBy) VALUES(GETDATE(),'COMMON','QA','OTHERS','OTHERS','Checklist for SQL','<p><b>Step of Analysis-</b>EDS Configuration</br><b>TroubleShooting Steps-</b> 1.Check the connection eg. Databasename,Username,Password
2. Check the store procedure Name
3. Compare Input parameter with store procedures Input parameter
4.Compare Output parameter with store procedures Output parameter
5. Check the table Externalsourcelog</p>','Lalchand')
INSERT INTO Crmnext_IssueResolution_Master(LoggedDate,ProjectName,InstanceName,[Type],[Subject],IssueDescription,IssueResolution,LoggedBy) VALUES(GETDATE(),'COMMON','QA','OTHERS','OTHERS','Configured web service does not give output','<p><b>Step of Analysis-</b>1.check connection string of web service
</br><b>TroubleShooting Steps-</b> 1. browse  that wsdl file on browser  
2. if it is not open then there is problem</p>','Rajesh')
INSERT INTO Crmnext_IssueResolution_Master(LoggedDate,ProjectName,InstanceName,[Type],[Subject],IssueDescription,IssueResolution,LoggedBy) VALUES(GETDATE(),'COMMON','QA','OTHERS','OTHERS','When Datapresenter configure on screen and it gives invalid data at line 1,at position 1 error
','<p><b>Step of Analysis-</b>1.check input XML file which is added while adding datasource</br><b>TroubleShooting Steps-</b> 1.connect to Sql Server and check table ExternalsourceLog 
2. In input XML file ,XML Tag value should be in  ''  ''</p>','Rajesh')
INSERT INTO Crmnext_IssueResolution_Master(LoggedDate,ProjectName,InstanceName,[Type],[Subject],IssueDescription,IssueResolution,LoggedBy) VALUES(GETDATE(),'COMMON','QA','OTHERS','OTHERS','When webservice configure through Web Integration URL and it gives error as Can not import namespace and element is missing
','<p><b>Step of Analysis-</b>WIP</br><b>TroubleShooting Steps-</b> WIP</p>','Rajesh')
INSERT INTO Crmnext_IssueResolution_Master(LoggedDate,ProjectName,InstanceName,[Type],[Subject],IssueDescription,IssueResolution,LoggedBy) VALUES(GETDATE(),'COMMON','QA','OTHERS','OTHERS','Webservice gives output but it is not proper design format','<p><b>Step of Analysis-</b>1.check if any XSLT file added with input XML</br><b>TroubleShooting Steps-</b> 1. check web service output with soupui
2.check the Tag name with output of SoupUI 
3. if there is mismatch then change it</p>','Rajesh')
INSERT INTO Crmnext_IssueResolution_Master(LoggedDate,ProjectName,InstanceName,[Type],[Subject],IssueDescription,IssueResolution,LoggedBy) VALUES(GETDATE(),'COMMON','QA','OTHERS','OTHERS','Facing issue while creating Opportunity in Axis Webservice for Credit Layout','<p><b>Step of Analysis-</b>There are 2 system fields 
1.OPPProductID 
2. CurrentStageID
whose tags are not visible in XML.</br><b>TroubleShooting Steps-</b> WIP</p>','Vivek Kumar')
INSERT INTO Crmnext_IssueResolution_Master(LoggedDate,ProjectName,InstanceName,[Type],[Subject],IssueDescription,IssueResolution,LoggedBy) VALUES(GETDATE(),'COMMON','QA','OTHERS','OTHERS','Facing issue while creating Customer(Account)
in Axis Webservice','<p><b>Step of Analysis-</b>There is 1 system field
1.AccountCurrentOwnerId
whose tag is not visible in XML.</br><b>TroubleShooting Steps-</b> WIP</p>','Sumati')
INSERT INTO Crmnext_IssueResolution_Master(LoggedDate,ProjectName,InstanceName,[Type],[Subject],IssueDescription,IssueResolution,LoggedBy) VALUES(GETDATE(),'COMMON','QA','OTHERS','OTHERS','Web Service was unable to return the data.
Error was ""Unable to binding basic HTTP from Namespace TempURI.org""','<p><b>Step of Analysis-</b>1. Check if the Web Service was working from SOAPUI.
2. Check the configuration of Web Service</br><b>TroubleShooting Steps-</b> 1. In Configuration enable the check box ""IsWCFClient"".

2. Give the ServiceName as a Class Name used in the WCF Service.</p>','Rajesh')
INSERT INTO Crmnext_IssueResolution_Master(LoggedDate,ProjectName,InstanceName,[Type],[Subject],IssueDescription,IssueResolution,LoggedBy) VALUES(GETDATE(),'COMMON','QA','OTHERS','OTHERS','Perennial Issues in CRMNext WebAPI for Lead Creation(Axis Bank,IIFL)','<p><b>Step of Analysis-</b>Check the Visual Studio Settings</br><b>TroubleShooting Steps-</b> In Visual Studio  having to mode asynchronous operations 

1. When adding this reference, you will need to click the ""Advanced ..."" button and open the ""Service Reference configuration"" window. 

2. You need to make sure that the ""Generate asynchronous operations"" checkbox is checked

3. Make sure you perform above settings before consuming any web Service.</p>','Lalchand')
INSERT INTO Crmnext_IssueResolution_Master(LoggedDate,ProjectName,InstanceName,[Type],[Subject],IssueDescription,IssueResolution,LoggedBy) VALUES(GETDATE(),'COMMON','QA','OTHERS','OTHERS','Web Service -New Connection ','<p><b>Step of Analysis-</b>When to give UserName And Password</br><b>TroubleShooting Steps-</b> WIP</p>','Lalchand')
INSERT INTO Crmnext_IssueResolution_Master(LoggedDate,ProjectName,InstanceName,[Type],[Subject],IssueDescription,IssueResolution,LoggedBy) VALUES(GETDATE(),'COMMON','QA','OTHERS','OTHERS','API Base Service','<p><b>Step of Analysis-</b>Why and how to configure api base service when we have wcf service</br><b>TroubleShooting Steps-</b> WIP</p>','Lalchand')
INSERT INTO Crmnext_IssueResolution_Master(LoggedDate,ProjectName,InstanceName,[Type],[Subject],IssueDescription,IssueResolution,LoggedBy) VALUES(GETDATE(),'COMMON','QA','OTHERS','OTHERS','WCF Service Configuration','<p><b>Step of Analysis-</b>In which reqiurement we can use 
Password Format  
Security Standard  
Certificate Validation 
Connection Security  
Client Credential Type
UserName Protection
Use Reflection</br><b>TroubleShooting Steps-</b> WIP</p>','Lalchand')
INSERT INTO Crmnext_IssueResolution_Master(LoggedDate,ProjectName,InstanceName,[Type],[Subject],IssueDescription,IssueResolution,LoggedBy) VALUES(GETDATE(),'COMMON','QA','OTHERS','OTHERS','MDX Data Provider','<p><b>Step of Analysis-</b>Why to use MDX Data Connection and how to
 do it</br><b>TroubleShooting Steps-</b> WIP</p>','Lalchand')
INSERT INTO Crmnext_IssueResolution_Master(LoggedDate,ProjectName,InstanceName,[Type],[Subject],IssueDescription,IssueResolution,LoggedBy) VALUES(GETDATE(),'COMMON','QA','OTHERS','OTHERS','Add Data Source -OutPut Parameter','<p><b>Step of Analysis-</b>When to use 
Reference Field,Tag,Node Xpath,Success Code,Code Xpath,Message Xpath,Primary Field,Total count XPath ,Current Record Count Xpath,Return as XML </br><b>TroubleShooting Steps-</b> WIP</p>','Lalchand')
INSERT INTO Crmnext_IssueResolution_Master(LoggedDate,ProjectName,InstanceName,[Type],[Subject],IssueDescription,IssueResolution,LoggedBy) VALUES(GETDATE(),'COMMON','QA','OTHERS','OTHERS','Add Data Source -InPut Parameter','<p><b>Step of Analysis-</b>When to use
Transaction Parameter,UserID Parameter</br><b>TroubleShooting Steps-</b> WIP</p>','Lalchand')
INSERT INTO Crmnext_IssueResolution_Master(LoggedDate,ProjectName,InstanceName,[Type],[Subject],IssueDescription,IssueResolution,LoggedBy) VALUES(GETDATE(),'COMMON','QA','OTHERS','OTHERS','Web Service -Method Result Type','<p><b>Step of Analysis-</b>What is Result type such as Single,Multiple,Primitive</br><b>TroubleShooting Steps-</b> WIP</p>','Lalchand')
INSERT INTO Crmnext_IssueResolution_Master(LoggedDate,ProjectName,InstanceName,[Type],[Subject],IssueDescription,IssueResolution,LoggedBy) VALUES(GETDATE(),'COMMON','QA','OTHERS','OTHERS','SQL Data Connection','<p><b>Step of Analysis-</b>If SQL Query Returns multiple table Data then how to Configure </br><b>TroubleShooting Steps-</b> WIP</p>','Lalchand')
INSERT INTO Crmnext_IssueResolution_Master(LoggedDate,ProjectName,InstanceName,[Type],[Subject],IssueDescription,IssueResolution,LoggedBy) VALUES(GETDATE(),'COMMON','QA','OTHERS','OTHERS','XSLT File','<p><b>Step of Analysis-</b>When creating Xslt file, there are two ways to add xslt file.
what is purpose of keeping these two option </br><b>TroubleShooting Steps-</b> WIP</p>','Lalchand')
INSERT INTO Crmnext_IssueResolution_Master(LoggedDate,ProjectName,InstanceName,[Type],[Subject],IssueDescription,IssueResolution,LoggedBy) VALUES(GETDATE(),'COMMON','QA','OTHERS','OTHERS','Steps to pass logged in users CRMNEXT UserId in EDS as a parameter value','<p><b>Step of Analysis-</b>If we want to pass logged in users CRMNEXT UserId as a i/p parameter to EDS then we need to update parameter name of UserId parameter (same name that is specified in input parameter section while configuring EDS) in ""UserIdParameter"" field in ""MashupDataSource"" table for respective EDS.
Note: We need to update this value in EDS everytime EDS is edit/saved or corresponding mashup control used for data display ((e.g. Widget)) is edit/saved through UI.</br><b>TroubleShooting Steps-</b> 1. Check detailof input parameter section from EDS log (Assumption being logging is enabled in EDS).
2. Check if correct logged in users UserId is passed to EDS or not.
3. If no, check name of the UserId parameter in input parameter section of EDS. Same name must be specified in ""UserIdParameter"" field of ""MashupDataSource"" table for that EDS for it to work correctly</p>','Mahesh')



INSERT INTO Crmnext_IssueResolution_Master(LoggedDate,ProjectName,InstanceName,[Type],[Subject],IssueDescription,IssueResolution,LoggedBy) VALUES(GETDATE(),'COMMON','QA','OTHERS','OTHERS','Integration-Data insertion/updation/deletion - Exception thrown Exception like ""Subquery returned more than 1 value. This is not permitted when the subquery follows =, !=, , >= or when the subquery is used as an expression"" occuring due 
','<p><b>Step of Analysis-</b>1.Take out Stored Procedure
2.Find Sub query used  in Stored Procedure</br><b>TroubleShooting Steps-</b> 1.Add filter on sub query to generate required output 
2.Use Top 1 key word in sub query</p>','Nitish')
INSERT INTO Crmnext_IssueResolution_Master(LoggedDate,ProjectName,InstanceName,[Type],[Subject],IssueDescription,IssueResolution,LoggedBy) VALUES(GETDATE(),'COMMON','QA','OTHERS','OTHERS','Exception in move file Type job','<p><b>Step of Analysis-</b>1.Check Source and Destination path
2.Check for  Access Permission  of Integration User </br><b>TroubleShooting Steps-</b> 1.Put Correct Source and Destination Path without Extra Space</p>','Nitish')
INSERT INTO Crmnext_IssueResolution_Master(LoggedDate,ProjectName,InstanceName,[Type],[Subject],IssueDescription,IssueResolution,LoggedBy) VALUES(GETDATE(),'COMMON','QA','OTHERS','OTHERS','Integration Jobs not running as per scheduler','<p><b>Step of Analysis-</b>1.Check Time of Integration server and application server</br><b>TroubleShooting Steps-</b> Issue occur due to time difference in integration server</p>','Nitish')
INSERT INTO Crmnext_IssueResolution_Master(LoggedDate,ProjectName,InstanceName,[Type],[Subject],IssueDescription,IssueResolution,LoggedBy) VALUES(GETDATE(),'COMMON','QA','OTHERS','OTHERS','Customer data is not getting mapped on UI','<p><b>Step of Analysis-</b>1.Take Out procedure and look for excepted coloumn
2.Check Mapping for Task is there
3.Check spell of column in SP as well as in Table  </br><b>TroubleShooting Steps-</b> 1.Correct Your Sp
2.Put Mapping for required column
</p>','Nitish')
INSERT INTO Crmnext_IssueResolution_Master(LoggedDate,ProjectName,InstanceName,[Type],[Subject],IssueDescription,IssueResolution,LoggedBy) VALUES(GETDATE(),'COMMON','QA','OTHERS','OTHERS','Coloumn does not Exits in Table DataSource','<p><b>Step of Analysis-</b>1. Check Mapping on Task
2. Check Mapping Spells of mapped column
3. Check Stored procedure return column which were mapped 
4. Check Column is harden or not</br><b>TroubleShooting Steps-</b> 1. Put Mapping of Column 
2. For Harden report it to Concern Person</p>','Lalchand')
INSERT INTO Crmnext_IssueResolution_Master(LoggedDate,ProjectName,InstanceName,[Type],[Subject],IssueDescription,IssueResolution,LoggedBy) VALUES(GETDATE(),'COMMON','QA','OTHERS','OTHERS','Values are not getting affected in fields','<p><b>Step of Analysis-</b>1. Check Mapping on Task
2. Check Mapping Spells of mapped column
3. Check Stored procedure return column which were mapped 
4. Check Column is harden or not
5.Confirm on field </br><b>TroubleShooting Steps-</b> 1. Put Mapping of Column 
2. For Harden report it to Concern Person</p>','Lalchand')
INSERT INTO Crmnext_IssueResolution_Master(LoggedDate,ProjectName,InstanceName,[Type],[Subject],IssueDescription,IssueResolution,LoggedBy) VALUES(GETDATE(),'COMMON','QA','OTHERS','OTHERS','Network level connection issue','<p><b>Step of Analysis-</b>1. Ensure Connection with DB server
2. Confirm on User name and Password
3. Confirn on Datasource and ServerId </br><b>TroubleShooting Steps-</b> 1.  Connect SQL Studio with  Provided User and credential
2.  Permission Access
3. Connect with DBA</p>','Lalchand')
INSERT INTO Crmnext_IssueResolution_Master(LoggedDate,ProjectName,InstanceName,[Type],[Subject],IssueDescription,IssueResolution,LoggedBy) VALUES(GETDATE(),'COMMON','QA','OTHERS','OTHERS','Dupplicate key','<p><b>Step of Analysis-</b>1. Check Mapping on Task
2. Check Mapping Spells of mapped column
3. Check Stored procedure return column which were mapped 
4. Check Column is harden or not
5. Check Stored Procedure  
6. check ID values of object is -1 or not</br><b>TroubleShooting Steps-</b> 1. Put Mapping of Column 
2. For Harden report it to Concern Person
3. Check ID values of object is -1 like Accountid -1 

</p>','Lalchand')
INSERT INTO Crmnext_IssueResolution_Master(LoggedDate,ProjectName,InstanceName,[Type],[Subject],IssueDescription,IssueResolution,LoggedBy) VALUES(GETDATE(),'COMMON','QA','OTHERS','OTHERS','Created Records are not visible on UI ','<p><b>Step of Analysis-</b>1. Check Mapping on Task
2. Check Mapping Spells of mapped column
3. Check Stored procedure return column which were mapped 
4. Check Column is harden or not
5. Confirm on field 
6. Check Mapping of Mandatory field  
7. Compare Data in Table</br><b>TroubleShooting Steps-</b> 1. Create Record From UI
2. Compare Records in table
3.  Put Mapping of Column 
4.  For Harden report it to Concern Person</p>','Lalchand')
INSERT INTO Crmnext_IssueResolution_Master(LoggedDate,ProjectName,InstanceName,[Type],[Subject],IssueDescription,IssueResolution,LoggedBy) VALUES(GETDATE(),'COMMON','QA','OTHERS','OTHERS','Integration Job is remain Initialisation state','<p><b>Step of Analysis-</b>1. Check Integration service
2. Check DB server Event Log
3. Check FileGroup Size
4. Check IDLIST for the job</br><b>TroubleShooting Steps-</b> 1. Filegroup is full then Increase it with sufficient size after discussion with DBA
2. Update IDLIST for the Integration job 
3. Restart the Integration Service</p>','Lalchand')
INSERT INTO Crmnext_IssueResolution_Master(LoggedDate,ProjectName,InstanceName,[Type],[Subject],IssueDescription,IssueResolution,LoggedBy) VALUES(GETDATE(),'COMMON','QA','OTHERS','OTHERS','document is not getting attched on Object','<p><b>Step of Analysis-</b>1. Check App server Event Log 
2. Check DMS Path
3. check web config keys in Application config and Integration service config
4. check access on DMS Path</br><b>TroubleShooting Steps-</b> 1. Rectify DMS location
2. Provide access to integration user of DMS </p>','Lalchand')
INSERT INTO Crmnext_IssueResolution_Master(LoggedDate,ProjectName,InstanceName,[Type],[Subject],IssueDescription,IssueResolution,LoggedBy) VALUES(GETDATE(),'COMMON','QA','OTHERS','OTHERS','Exception in reading File filename.csv is: Exception Details String or binary data would be truncated. at System.Data.SqlClient.SqlBulkCopy.ConvertValue(Object value, _SqlMetaData metadata, Boolean isNull, Boolean& isSqlType, Boolean& coercedToDataFeed) The given value of type String from the data source cannot be converted to type nvarchar of the specified target column','<p><b>Step of Analysis-</b>1.Exception While importing CSV to LT
2.Check the size of nvarchar coulumn of table .
3.This is because of Nvarchar column size specified is lesser than the value which we are inserting in table.
</br><b>TroubleShooting Steps-</b> Increase the size of nvarchar type column in table.</p>','Nazmeen')
INSERT INTO Crmnext_IssueResolution_Master(LoggedDate,ProjectName,InstanceName,[Type],[Subject],IssueDescription,IssueResolution,LoggedBy) VALUES(GETDATE(),'COMMON','QA','OTHERS','OTHERS','F:\IDFC_CustImport_ini is not a valid path. Make sure that the path name is spelled correctly and that you are connected to the server on which the file resides.','<p><b>Step of Analysis-</b>This error arise while reading CSV from server to import in LT.
</br><b>TroubleShooting Steps-</b> 1.Go and check path permission is accessible to everyone 
2.Close all docummnets/Files of specified path, if file in specified path is open then it is not accessible.
</p>','Nazmeen')
INSERT INTO Crmnext_IssueResolution_Master(LoggedDate,ProjectName,InstanceName,[Type],[Subject],IssueDescription,IssueResolution,LoggedBy) VALUES(GETDATE(),'COMMON','QA','OTHERS','OTHERS','The given folder path is Invalid or not accessable. /Cannot bulk load because the file ""E:IDFCprodCSV"" could not be opened. Operating system error code 5(Access is denied.)','<p><b>Step of Analysis-</b>Exception while importing CSV file with pipe(|) delimiter.
</br><b>TroubleShooting Steps-</b> 1.Go and check path permission is accessible to everyone 
2.Close all docummnets/Files of specified path, if file in specified path is open then it is not accessible.
3.Use Schema.ini file for importing data in LT having pipe delimiter </p>','Nazmeen')
INSERT INTO Crmnext_IssueResolution_Master(LoggedDate,ProjectName,InstanceName,[Type],[Subject],IssueDescription,IssueResolution,LoggedBy) VALUES(GETDATE(),'COMMON','QA','OTHERS','OTHERS','Failure records after successful job execution','<p><b>Step of Analysis-</b>1.Acidaes.Xml.dll
2.Perceiveit.Data.dll iisues Exception</br><b>TroubleShooting Steps-</b> Copy paste Acidaes.Xml.dll and Perceiveit.Data.dll in Integration Service folder from app/bin.</p>','Sumati')
INSERT INTO Crmnext_IssueResolution_Master(LoggedDate,ProjectName,InstanceName,[Type],[Subject],IssueDescription,IssueResolution,LoggedBy) VALUES(GETDATE(),'COMMON','QA','OTHERS','OTHERS','New task is not getting created from ui and not visible if done entry from db','<p><b>Step of Analysis-</b>Check CIS_SyncIDList</br><b>TroubleShooting Steps-</b> Update CIS_SyncIDList</p>','Sumati')



INSERT INTO Crmnext_IssueResolution_Master(LoggedDate,ProjectName,InstanceName,[Type],[Subject],IssueDescription,IssueResolution,LoggedBy) VALUES(GETDATE(),'COMMON','QA','OTHERS','OTHERS','Service does not get started after all the necessary changes','<p><b>Step of Analysis-</b>Check with the config file in service and put correct connection string</br><b>TroubleShooting Steps-</b> Copy the whole of connection string tag from web.config and paste in in the 
service config file under connection string tag.</p>','Acharya')
INSERT INTO Crmnext_IssueResolution_Master(LoggedDate,ProjectName,InstanceName,[Type],[Subject],IssueDescription,IssueResolution,LoggedBy) VALUES(GETDATE(),'COMMON','QA','OTHERS','OTHERS','Some rules don’t get fired
even if the service is running succesfully.','<p><b>Step of Analysis-</b>Check if the rules are created properly and have the correct priviledges.This need to be clarified by the complainant.</br><b>TroubleShooting Steps-</b> This is due to some guidelines that does not meet with the rule feature.Must be clarified by the client.</p>','Acharya')
INSERT INTO Crmnext_IssueResolution_Master(LoggedDate,ProjectName,InstanceName,[Type],[Subject],IssueDescription,IssueResolution,LoggedBy) VALUES(GETDATE(),'COMMON','QA','OTHERS','OTHERS','Service does not work after starting.','<p><b>Step of Analysis-</b>Dlls may be missing.</br><b>TroubleShooting Steps-</b> Check with extracted service contents and do the necessary replacements with updated dlls.Set 
enable logging to true in config file to keep track of the activities.</p>','Acharya')
INSERT INTO Crmnext_IssueResolution_Master(LoggedDate,ProjectName,InstanceName,[Type],[Subject],IssueDescription,IssueResolution,LoggedBy) VALUES(GETDATE(),'COMMON','QA','OTHERS','OTHERS','Performance slowness issue.','<p><b>Step of Analysis-</b>Caching needs to be enabled.</br><b>TroubleShooting Steps-</b> Check with enablecaching key in service config file.Set it to true.Also memcached need to be 
 installed on the server and registered.Refer to the memcached installation document.</p>','Sashank')
INSERT INTO Crmnext_IssueResolution_Master(LoggedDate,ProjectName,InstanceName,[Type],[Subject],IssueDescription,IssueResolution,LoggedBy) VALUES(GETDATE(),'COMMON','QA','OTHERS','OTHERS','Escalation service shows stopped even after starting it.','<p><b>Step of Analysis-</b>Check with the owner id key and crmnextserverid key in service config file.</br><b>TroubleShooting Steps-</b> set the value of ownerid to corresponding clients id value and set the serverid value same as in web.config file of the application.</p>','Acharya')
INSERT INTO Crmnext_IssueResolution_Master(LoggedDate,ProjectName,InstanceName,[Type],[Subject],IssueDescription,IssueResolution,LoggedBy) VALUES(GETDATE(),'COMMON','QA','OTHERS','OTHERS','services cannot connect to the local system error while starting','<p><b>Step of Analysis-</b>Issue can be with the configuration files and its various tags.</br><b>TroubleShooting Steps-</b> Check keys and its values.Check for wrong syntaxes in the file.Apart from this check the serverid value. </p>','Acharya')
INSERT INTO Crmnext_IssueResolution_Master(LoggedDate,ProjectName,InstanceName,[Type],[Subject],IssueDescription,IssueResolution,LoggedBy) VALUES(GETDATE(),'COMMON','QA','OTHERS','OTHERS','Service does not get started form the services.msc with error throwing can not be connected to local system','<p><b>Step of Analysis-</b>Config file key showwinform needs to be false.</br><b>TroubleShooting Steps-</b> Do the necessary changes in the config file.Set the value to false.</p>','Acharya')



INSERT INTO Crmnext_IssueResolution_Master(LoggedDate,ProjectName,InstanceName,[Type],[Subject],IssueDescription,IssueResolution,LoggedBy) VALUES(GETDATE(),'COMMON','QA','OTHERS','OTHERS','First time  build deployment needs  the followings steps to be done for performance.
OR
When you face performance related issue.','<p><b>Step of Analysis-</b>Check Application and Database Server.



</br><b>TroubleShooting Steps-</b> Application Server : 
1) Go to the services and check memcached service is present or not.
2) Check followings DLL is registered or not in Application and services.
     a) Acidaes.BusinessNext.Caching.dll
     b) Acidaes.BusinessNext.Caching.Memcached.dll
     c) Enyim.Caching.dll 
3) Check caching server address in Memcached tag in application and services web config files.
4) Check Following 2 tags in application and services Web config.
      a) <add key=""IsCachingAllow"" value=""true""/>
      b) <add key=""IsEnterprise"" value=""True""/>
5) Check ETag  configuration on application Server.
6) Check Set Common Header option on Application Server.
7) Check compression is enabled or not.
8) Check Anonymous and windows Authentication is enabled or not.

Database Server : 
1) Max degree of parallelism value should be  8.
2) Cost threshold for parallelism value should be 15.
3) Read comitted Snapshot value should be 1.
4) Compatibiliy level value should be 100.
</p>','Shashank')
INSERT INTO Crmnext_IssueResolution_Master(LoggedDate,ProjectName,InstanceName,[Type],[Subject],IssueDescription,IssueResolution,LoggedBy) VALUES(GETDATE(),'COMMON','QA','OTHERS','OTHERS','Server not found error while browsing
 the application.','<p><b>Step of Analysis-</b>We have to check Application pool is stop or not.</br><b>TroubleShooting Steps-</b> Start the application pool.</p>','Shashank')
INSERT INTO Crmnext_IssueResolution_Master(LoggedDate,ProjectName,InstanceName,[Type],[Subject],IssueDescription,IssueResolution,LoggedBy) VALUES(GETDATE(),'COMMON','QA','OTHERS','OTHERS','After deployment Application shows
 old version.','<p><b>Step of Analysis-</b>We have to check the new assets folder.</br><b>TroubleShooting Steps-</b> Again copy the newly extracted app into the existing app. </p>','Shashank')
INSERT INTO Crmnext_IssueResolution_Master(LoggedDate,ProjectName,InstanceName,[Type],[Subject],IssueDescription,IssueResolution,LoggedBy) VALUES(GETDATE(),'COMMON','QA','OTHERS','OTHERS','Rollback of setup','<p><b>Step of Analysis-</b>We have to check BatchNumber in Batchhistory that there is huge difference betwen last entries.</br><b>TroubleShooting Steps-</b> First we have to confirm from build master about the batchnumber gaps.
According to build master either we can delete the entry or build master will provide the updated build with updated scripts.</p>','Komal')
INSERT INTO Crmnext_IssueResolution_Master(LoggedDate,ProjectName,InstanceName,[Type],[Subject],IssueDescription,IssueResolution,LoggedBy) VALUES(GETDATE(),'COMMON','QA','OTHERS','OTHERS','Redirect Loop in load balancer','<p><b>Step of Analysis-</b>In Load balancer Git hit 2 to 3 server simulteniously </br><b>TroubleShooting Steps-</b> We have to remove catching. </p>','Komal')
INSERT INTO Crmnext_IssueResolution_Master(LoggedDate,ProjectName,InstanceName,[Type],[Subject],IssueDescription,IssueResolution,LoggedBy) VALUES(GETDATE(),'COMMON','QA','OTHERS','OTHERS','After login the login page becomes
 completely blank.','<p><b>Step of Analysis-</b>We have to check two keys validation and module in Web config.</br><b>TroubleShooting Steps-</b> In Webconfig we have to add two keys one is module
 and the second is validation.</p>','Komal')
INSERT INTO Crmnext_IssueResolution_Master(LoggedDate,ProjectName,InstanceName,[Type],[Subject],IssueDescription,IssueResolution,LoggedBy) VALUES(GETDATE(),'COMMON','QA','OTHERS','OTHERS','In Picklist feature Ajax issue occur','<p><b>Step of Analysis-</b>Http handler configration in iis</br><b>TroubleShooting Steps-</b> We need to place four properties in order under http Handler Configuration.</p>','Komal')
INSERT INTO Crmnext_IssueResolution_Master(LoggedDate,ProjectName,InstanceName,[Type],[Subject],IssueDescription,IssueResolution,LoggedBy) VALUES(GETDATE(),'COMMON','QA','OTHERS','OTHERS','DLL required error comes while 
executing the setup','<p><b>Step of Analysis-</b>This error comes because of some dll are not fixed in build.</br><b>TroubleShooting Steps-</b> So it should be fixed first and then execute setup again.</p>','Komal')
INSERT INTO Crmnext_IssueResolution_Master(LoggedDate,ProjectName,InstanceName,[Type],[Subject],IssueDescription,IssueResolution,LoggedBy) VALUES(GETDATE(),'COMMON','QA','OTHERS','OTHERS','Httphandler related issue occurs while browsing the applicatio in first time deployment.','<p><b>Step of Analysis-</b>1) First Open the IIS.
2) Click on IIS.
3) Click on  right side HttpHandler and It will show Installed http handler with bit version (32bit or 64 bit) is properly  Installed or not.</br><b>TroubleShooting Steps-</b> We need to again installed the .net framework.</p>','Shashank')
INSERT INTO Crmnext_IssueResolution_Master(LoggedDate,ProjectName,InstanceName,[Type],[Subject],IssueDescription,IssueResolution,LoggedBy) VALUES(GETDATE(),'COMMON','QA','OTHERS','OTHERS','After browsing the application  if it is showing some invalid path errro.','<p><b>Step of Analysis-</b>1) Check the apppath key in application web config.
2)Check application path where application is deployed  value is right or not in apppath key.</br><b>TroubleShooting Steps-</b> 1) IF application path in apppath key is not right so change the path.</p>','Shashank')
INSERT INTO Crmnext_IssueResolution_Master(LoggedDate,ProjectName,InstanceName,[Type],[Subject],IssueDescription,IssueResolution,LoggedBy) VALUES(GETDATE(),'COMMON','QA','OTHERS','OTHERS','After deployement if escalation service is not getting started.','<p><b>Step of Analysis-</b>Check in escalation web config that some spaces may be in web config.</br><b>TroubleShooting Steps-</b> Remove the spaces in web config and start the services</p>','Shashank')
INSERT INTO Crmnext_IssueResolution_Master(LoggedDate,ProjectName,InstanceName,[Type],[Subject],IssueDescription,IssueResolution,LoggedBy) VALUES(GETDATE(),'COMMON','QA','OTHERS','OTHERS','After browsing the application IF you getting the error performance counter is not a custom counter
(Mostly first time build deployment)','<p><b>Step of Analysis-</b>1) Check the following DLLs is registered in Application bin folder.
 a) Acidaes.BusinessNext.Caching.dll
 b)Acidaes.BusinessNext.Caching.Memcached.dll
 c) Enyim.Caching.dll 
if DLLs is registered so you will find log files with same name correspondning to the above DLLs.</br><b>TroubleShooting Steps-</b> IF not registered so registered the following DLL through Command Prompt(Refer Memcached installation Document) </p>','Shashank')
INSERT INTO Crmnext_IssueResolution_Master(LoggedDate,ProjectName,InstanceName,[Type],[Subject],IssueDescription,IssueResolution,LoggedBy) VALUES(GETDATE(),'COMMON','QA','OTHERS','OTHERS','After browsing the application IF you getting the error Unable to find the request .Net Framework data provider.It may not be installed
(Mostly first time build deployment)','<p><b>Step of Analysis-</b>Check the Dataprovider for .Net framework is installed or not on Application Server.</br><b>TroubleShooting Steps-</b> Installed Dataprovider on application Server.</p>','Shashank')
INSERT INTO Crmnext_IssueResolution_Master(LoggedDate,ProjectName,InstanceName,[Type],[Subject],IssueDescription,IssueResolution,LoggedBy) VALUES(GETDATE(),'COMMON','QA','OTHERS','OTHERS','After login into the mobile application(mobile deployment) IF you getting the error on home page related to Acidaes.CRMnext.UI.Controller.

','<p><b>Step of Analysis-</b>1) First go to the path ''app\Areas\Mobile\Views\Shared''.
2) Check Homepage.cshtml file is present or not.</br><b>TroubleShooting Steps-</b> If Homepage.cshtml is present so delete the same file.</p>','Shashank')
INSERT INTO Crmnext_IssueResolution_Master(LoggedDate,ProjectName,InstanceName,[Type],[Subject],IssueDescription,IssueResolution,LoggedBy) VALUES(GETDATE(),'COMMON','QA','OTHERS','OTHERS','While login into app/mobile if getting error as System.Data.SqlClient.SqlException: Invalid column name TargetField','<p><b>Step of Analysis-</b>Database issue</br><b>TroubleShooting Steps-</b> Ask for correct database.</p>','Sumati')
INSERT INTO Crmnext_IssueResolution_Master(LoggedDate,ProjectName,InstanceName,[Type],[Subject],IssueDescription,IssueResolution,LoggedBy) VALUES(GETDATE(),'COMMON','QA','OTHERS','OTHERS','While login into app if getting error of this sp SQL_SP_USER_SETTINGS_DETAIL','<p><b>Step of Analysis-</b>First check if this sp is present at database or not</br><b>TroubleShooting Steps-</b> Create the sp.</p>','Sumati')
INSERT INTO Crmnext_IssueResolution_Master(LoggedDate,ProjectName,InstanceName,[Type],[Subject],IssueDescription,IssueResolution,LoggedBy) VALUES(GETDATE(),'COMMON','QA','OTHERS','OTHERS','Invalid login userid and password error','<p><b>Step of Analysis-</b>Check pointed db in webconfig also the userid and password in databse
Check for asset tag is written right or wrong</br><b>TroubleShooting Steps-</b> Copy paste the extracted app again or clear browser history
Write asset tags correctly.</p>','Sumati')
INSERT INTO Crmnext_IssueResolution_Master(LoggedDate,ProjectName,InstanceName,[Type],[Subject],IssueDescription,IssueResolution,LoggedBy) VALUES(GETDATE(),'COMMON','QA','OTHERS','OTHERS','New task is not getting created from UI
even if entry done from db as well','<p><b>Step of Analysis-</b>Check CIS_SyncIDList</br><b>TroubleShooting Steps-</b> Update CIS_SyncIDList</p>','Sumati')
INSERT INTO Crmnext_IssueResolution_Master(LoggedDate,ProjectName,InstanceName,[Type],[Subject],IssueDescription,IssueResolution,LoggedBy) VALUES(GETDATE(),'COMMON','QA','OTHERS','OTHERS','Incorrect UI screen visibility. All controls floating on summary page post login.','<p><b>Step of Analysis-</b>Check if system and custom records present in SSPTemplate table</br><b>TroubleShooting Steps-</b> 1. Update system records from other DB of same build from backup/some other instance.
2. Update custom records from backup DB of same build version</p>','Mahesh')
INSERT INTO Crmnext_IssueResolution_Master(LoggedDate,ProjectName,InstanceName,[Type],[Subject],IssueDescription,IssueResolution,LoggedBy) VALUES(GETDATE(),'COMMON','QA','OTHERS','OTHERS','Page Refreshment error on Login Page  while loging  first Time in New UX','<p><b>Step of Analysis-</b>While Login with correct credentials, It will give page refreshment error. And if you login second time then it navigate to the Home page.</br><b>TroubleShooting Steps-</b> Set IsEncriptedPassword  tag as False in AppSetting of App Webconfig.</p>','Varsha')
INSERT INTO Crmnext_IssueResolution_Master(LoggedDate,ProjectName,InstanceName,[Type],[Subject],IssueDescription,IssueResolution,LoggedBy) VALUES(GETDATE(),'COMMON','QA','OTHERS','OTHERS','AccessDenie error in Autoflow in New UX','<p><b>Step of Analysis-</b>While Viewing The Autoflow, Access denied Window popup. </br><b>TroubleShooting Steps-</b> Include <WebConfigKey>…..</WebConfigKey> tag content inside the Appsetting of app webconfig. </p>','Varsha')


