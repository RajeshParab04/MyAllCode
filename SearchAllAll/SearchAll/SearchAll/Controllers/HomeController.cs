using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using SearchAll.Models;
using Newtonsoft.Json;
using Newtonsoft.Json.Serialization;
using System.Data.SqlClient;
using DAL;
using System.Data;

namespace SearchAll.Controllers
{
    public class HomeController : Controller
    {

        public ActionResult HomeLanding()
        {
            return View("HomeLanding");
        }


        [AllowHtml]
        public static string HtmlString { get; set; }
        //
        // GET: /Home/

        public ActionResult Index()
        {
            return View();
        }
        
        public string GetIssueList(string SearchContent)
        {

            DataSet ds = new DataSet();
            ds =DALCommon.CallingSP(SearchContent, ds);
            DataTable Dt = ds.Tables[0];
            Issues oIssues = new Issues();

            List<Issues> olist = new List<Issues>();
            for (int i = 0; i < Dt.Rows.Count;i++)
            {
               olist.Add(new Issues { ProjectName = Convert.ToString(Dt.Rows[i]["ProjectName"]), Subject = Convert.ToString(Dt.Rows[i]["Subject"]), IssueType = Convert.ToString(Dt.Rows[i]["Type"]), Instance = Convert.ToString(Dt.Rows[i]["InstanceName"]), Loggedby = Convert.ToString(Dt.Rows[i]["LoggedBy"]), LoggedOn = Convert.ToString(Dt.Rows[i]["LoggedDate"]), Description = Convert.ToString(Dt.Rows[i]["IssueDescription"]), Resolution = Convert.ToString(Dt.Rows[i]["IssueResolution"]) });
            }

            object obj = JsonConvert.SerializeObject(olist);

            return obj.ToString();

            // return Json(new { olist }, JsonRequestBehavior.AllowGet);
        }

        public ActionResult AddIssue()
        {
            return View();
        }
        [ValidateInput(false)]
        public ActionResult ShowResolution(FormCollection formvalue)
        {
            string HtmlString = Request.QueryString["htmlraw"].ToString();

            ViewBag.HTMLResolution = HtmlString;
            return Content(HtmlString, "text/html");

                
        }

        public string InsertIssue(string Projectname,string TypeOfIssue,string Loggedby,string Instance,string IssueSubject,string Issuedescription,string issueresolution)
        {
            try
            {;
               return DALCommon.AddIssueInDb(Projectname, TypeOfIssue, Loggedby, Instance, IssueSubject, Issuedescription, issueresolution);
           // return "success";
            }
            catch (Exception e)
            {
                return "";
              //  Console.WriteLine("Exception Occre while creating table:" + e.Message + "\t" + e.GetType());
            }
           
        }

        public string ShowReport(string FromDate, string ToDate)
        {
            try
            {
                DataSet ds = new DataSet();
                GetIssue IssueCount = new GetIssue();
                List<GetIssue> Countlist = new List<GetIssue>();

                ds = DALCommon.GetIssueCount(FromDate, ToDate, ds);

                if (ds != null && ds.Tables.Count > 0)
                {
                    DataTable Dt = ds.Tables[0];

                    for (int i = 0; i < Dt.Rows.Count; i++)
                    {
                        Countlist.Add(new GetIssue { LoggedName = Convert.ToString(Dt.Rows[i]["LoggedBy"]), IssueCount = Convert.ToString(Dt.Rows[i]["IssueCount"]) });
                    }

                  
                }
                object obj = JsonConvert.SerializeObject(Countlist);

                return obj.ToString();
                //return "success";
            }
            catch (Exception e)
            {
                return "";
                //  Console.WriteLine("Exception Occre while creating table:" + e.Message + "\t" + e.GetType());
            }

        }
        public ActionResult ShowCountReport()
        {
            return View();
        }


    }
}
