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
            ViewData["sortValues"] = null;

            ViewBag.Categories = data.Categories.ToList();
            return View();
        }

        public ActionResult Sort(FormCollection collection)
        {
            String option = Request.Params["option"];
            String cate = Request.Params["category"];

            var cateNum = Int16.Parse(cate);

            IQueryable<Product> sortValue = null;

            switch (option)
            {
                case "t-c":
                    sortValue = from p in data.Products where p.CategoryID == cateNum orderby p.Price ascending select p;
                    break;
                case "c-t":
                    sortValue = from p in data.Products where p.CategoryID == cateNum orderby p.Price descending select p;
                    break;
                default:
                    sortValue = from p in data.Products where p.CategoryID == cateNum orderby p.Name ascending select p;
                    break;
            }

            var products = from p in data.Products where p.CategoryID == 1 select p;
            var category = from c in data.Categories where c.ID == 1 select c;

            ViewData["products"] = products;
            ViewData["category"] = category;
            ViewData["sortValues"] = sortValue;

            ViewBag.Categories = data.Categories.ToList();

            return View("~/Views/Category/Index.cshtml");
        }
    }
}