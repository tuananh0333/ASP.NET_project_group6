using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using SellPhone.Models;

namespace SellPhone.Controllers
{
    public class HomeController : Controller
    {
        dbSellPhoneDataDataContext data = new dbSellPhoneDataDataContext();

        // GET: Home
        public ActionResult Index()
        {
            var categories = data.Categories.ToList();
            var products = data.Products.ToList();

            Session["cart"] = 0;
            var cartInfo = new Dictionary<int, int>();
            foreach (var prod in products)
            {
                cartInfo.Add(prod.ID, 0);
            }
            Session["cartInfo"] = cartInfo;

            ViewBag.Categories = categories;
            return View(categories);
        }

        public ActionResult CategogiesList()
        {
            var categories = from c in data.Categories select c;
            ViewBag.Categories = categories;
            return View("~/Views/Shared/CategogiesList.cshtml");
        }
    }
}