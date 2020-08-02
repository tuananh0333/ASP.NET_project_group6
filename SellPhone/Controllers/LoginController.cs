﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
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
    }
}