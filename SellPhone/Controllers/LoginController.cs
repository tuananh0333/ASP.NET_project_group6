using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Services;
using SellPhone.Models;

namespace SellPhone.Controllers
{
    public class LoginController : Controller
    {
        dbSellPhoneDataDataContext data = new dbSellPhoneDataDataContext();

        // GET: Login
        public ActionResult Index()
        {
            var categories = data.Categories.ToList();
            ViewBag.Categories = categories;

            return View();
        }

        [HttpPost]
        public Boolean login(string username, string password)
        {
            var users = from u in data.Customers where u.Name == username select u;

            if (users.Any())
            {
                if (users.First().Password.Equals(password))
                {
                    Session["currentUser"] = users.First();
                    return true;
                } else
                {
                    return false;
                }
            }

            return false;
        }

        public ActionResult Inquiry()
        {
            var categories = data.Categories.ToList();
            ViewBag.Categories = categories;

            return View();
        }
    }
}