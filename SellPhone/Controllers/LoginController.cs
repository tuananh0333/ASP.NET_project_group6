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
            var users = from u in data.Customers where u.username == username select u;

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

        public ActionResult Address()
        {
            var categories = data.Categories.ToList();
            ViewBag.Categories = categories;

            return View();
        }

        public ActionResult Inquiry()
        {
            var categories = data.Categories.ToList();
            ViewBag.Categories = categories;

            var usr = (Customer)Session["currentUser"];
            var bills = from bll in data.Bills where bll.userId == usr.ID select bll;

            List<Dictionary<Product, int>> lstProducts = new List<Dictionary<Product, int>>();
            foreach (var bill in bills)
            {
                Dictionary<Product, int> prsInBill = new Dictionary<Product, int>();
                String[] str = bill.products.Split('#');
                foreach (String prdtail in str)
                {
                    if(!prdtail.Equals(str[str.Length-1]))
                    {
                        var prid = Int32.Parse(prdtail.Split('$')[0]);
                        var prcd = Int32.Parse(prdtail.Split('$')[1]);

                        var pr = from p in data.Products where p.ID == prid select p;
                        prsInBill.Add(pr.First(), prcd);
                    }
                }
                lstProducts.Add(prsInBill);
            }

            ViewData["lstProducts"] = lstProducts;
            ViewData["bills"] = bills.ToList();
            return View();
        }

        [HttpPost]
        public String SignOut()
        {
            Session["currentUser"] = null;

            return "signedOut";
        }
    }
}