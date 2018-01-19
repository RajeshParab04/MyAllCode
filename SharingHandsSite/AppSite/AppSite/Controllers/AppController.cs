using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace AppSite.Controllers
{
    public class AppController : Controller
    {
        //
        // GET: /App/
    [ ActionName("SharingHands")]
        public ActionResult Index()
        {
            return View();
        }

    }
}
