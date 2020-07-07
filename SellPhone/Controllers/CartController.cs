using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Services;
using SellPhone.Models;

namespace SellPhone.Controllers
{
    public class CartController : Controller
    {
        dbSellPhoneDataDataContext data = new dbSellPhoneDataDataContext();

        // GET: Cart
        public ActionResult Index()
        {
            var categories = data.Categories.ToList();
            var cartInfo = (Dictionary<int, int>)Session["cartInfo"];

            List<Product> list = new List<Product>();

            foreach(var prod in cartInfo)
            {
                if (prod.Value > 0)
                {
                    var product = from p in data.Products where p.ID == prod.Key select p;
                    list.Add(product.First());
                }
            }

            ViewData["cartInfo"] = cartInfo;
            ViewData["cartValues"] = list;
            ViewBag.Categories = categories;
            return View();
        }

        [WebMethod(EnableSession = true)]
        public void removeCart(int id)
        {
            if (Session != null)
            {
                int cart = (int)Session["cart"];
                Dictionary<int, int> cartInfo = (Dictionary<int, int>)Session["cartInfo"];

                cartInfo[id] -= 1;
                cart -= 1;
                Session["cartInfo"] = cartInfo;
                Session["cart"] = cart;
            }
        }
    }
}