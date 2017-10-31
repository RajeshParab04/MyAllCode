using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SearchAll.Models
{
    public class Issues
    {
        public string ProjectName { get; set; }
        public string Subject { get; set; }
        public string Description { get; set; }
        public string IssueType { get; set; }
        public string Instance { get; set; }
        public string Loggedby { get; set; }
        public string LoggedOn { get; set; }
        public string Resolution { get; set; } 
    }
    public class GetIssue
    {
        public string LoggedName { get; set; }
        public string IssueCount { get; set; }
    }
}