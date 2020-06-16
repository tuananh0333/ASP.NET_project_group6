using System;
using System.Collections.Generic;
using System.Dynamic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using SellPhone.Models;

namespace SellPhone.Controllers
{
    public class CategoryController : Controller
    {
        dbSellPhoneDataDataContext data = new dbSellPhoneDataDataContext();

        // GET: Category
        public ActionResult Index(int id)
        {
            var products = from p in data.Products where p.CategoryID == id select p;
            var category = from c in data.Categories where c.ID == id select c;

            ViewData["products"] = products;
            ViewData["category"] = category;

            ViewBag.Categories = data.Categories.ToList();
            return View();
        }
    }
}