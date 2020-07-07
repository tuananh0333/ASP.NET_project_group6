using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using SellPhone.Models;
using System.Web.Services;

namespace SellPhone.Controllers
{
    public class ProductController : Controller
    {
        dbSellPhoneDataDataContext data = new dbSellPhoneDataDataContext();

        // GET: Product
        public ActionResult Index(int id)
        {
            var product = from p in data.Products where p.ID == id select p;

            ViewBag.Categories = data.Categories.ToList();
            return View(product);
        }

        [WebMethod(EnableSession = true)]
        public void SetCart(int value, int prodId, int newValue)
        {
            if (Session != null)
            {
                Session["cart"] = value;
                Dictionary<int, int> cartInfo = (Dictionary<int, int>) Session["cartInfo"];

                cartInfo[prodId] += newValue;
                Session["cartInfo"] = cartInfo;
            }
        }
    }
}