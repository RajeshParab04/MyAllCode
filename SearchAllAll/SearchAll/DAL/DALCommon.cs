using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace DAL
{
    public class DALCommon
    {
       // public static SqlConnection conn = new SqlConnection("Integrated Security=false;Initial Catalog=Axis_Corp_Retail_SME;Data Source=192.168.0.10;User id=crmnext;password=abc123;");

        private static string GetConnectionString()
        {
            return ConfigurationManager.
           ConnectionStrings["ConnectionString"].ConnectionString;

        }
        public static string AddIssueInDb(string Projectname, string TypeOfIssue, string Loggedby, string Instance, string IssueSubject, string Issuedescription, string issueresolution)
        {      
            try
            {
                Logging.WriteLog("Entered In AddIssueInDb:");
                SqlConnection conn = new SqlConnection(GetConnectionString());
                string InsertQuery = @"INSERT INTO Crmnext_IssueResolution_Master(ProjectName,InstanceName,[Type],LoggedDate,[Subject],LoggedBy,IssueDescription,IssueResolution)
                                     VALUES ( '" + Projectname + "','" + Instance + "','" + TypeOfIssue + "',getdate(),'" + IssueSubject.Replace("'", "") + "','" + Loggedby + "','" + Issuedescription.Replace("'", "") + "','" + issueresolution.Replace("'", "") + "')";
                Logging.WriteLog("Insert Query" + InsertQuery);
                conn.Open();
                SqlCommand cmd = new SqlCommand(InsertQuery, conn);
                cmd.ExecuteNonQuery();

                conn.Close();
                return "success";
            }
            catch (Exception e)
            {
                Logging.WriteLog("AddIssueInDb Exception :" + e.Message);
                Logging.WriteLog("AddIssueInDb Exception Stacktrace :" + e.StackTrace);
                return "fail";
            }
        }
        public static DataSet CallingSP(string SearchContent, DataSet ds)
        {
            try
            {
                SqlConnection conn = new SqlConnection(GetConnectionString());
                SqlCommand sqlComm = new SqlCommand("Sp_getSearchResult", conn);
                sqlComm.Parameters.AddWithValue("@searchString", SearchContent);

                sqlComm.CommandType = CommandType.StoredProcedure;

                SqlDataAdapter da = new SqlDataAdapter();
                da.SelectCommand = sqlComm;

                da.Fill(ds);
                return ds;
            }
            catch (Exception e)
            {
                Logging.WriteLog("AddIssueInDb Exception :" + e.Message);
                Logging.WriteLog("AddIssueInDb Exception Stacktrace :" + e.StackTrace);
                return ds;
            }
           // }
        }


        public static DataSet GetIssueCount(string FromDate,string Todate, DataSet ds)
        {
            try
            {
                SqlConnection conn = new SqlConnection(GetConnectionString());
                SqlCommand sqlComm = new SqlCommand("Search_IssueCount", conn);
                sqlComm.Parameters.AddWithValue("@FromDate", FromDate);
                sqlComm.Parameters.AddWithValue("@ToDate", Todate);

                sqlComm.CommandType = CommandType.StoredProcedure;

                SqlDataAdapter da = new SqlDataAdapter();
                da.SelectCommand = sqlComm;

                da.Fill(ds);
                return ds;
            }
            catch (Exception e)
            {
                Logging.WriteLog("GetIssueCount Exception :" + e.Message);
                Logging.WriteLog("GetIssueCount Exception Stacktrace :" + e.StackTrace);
                return ds;
            }
            // }
        }
    
    }
}
