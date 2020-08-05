using System;
using System.Collections.Generic;
using System.Linq;
using System.Web.Mvc;
using System.Web.Services;
using SellPhone.Models;
using System.Net.Http;
using System.Net.Http.Headers;
using Newtonsoft.Json.Linq;

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

        public JToken callApi(String link, String geta)
        {
            HttpClient client = new HttpClient();
            client.BaseAddress = new Uri(link);
            client.DefaultRequestHeaders.Accept.Add(
            new MediaTypeWithQualityHeaderValue("application/json"));

            HttpResponseMessage response = client.GetAsync(geta).Result;
            String dataObjects = response.Content.ReadAsStringAsync().Result;

            var apiObject = JToken.Parse(@dataObjects);

            return apiObject;
        }

        public ActionResult Address()
        {
            var categories = data.Categories.ToList();
            ViewBag.Categories = categories;

            var listCities = new List<string>();
            var listCityIds = new List<string>();

            var cityObject = callApi("https://thongtindoanhnghiep.co/api/city", "");
            var cities = cityObject.Children<JProperty>().FirstOrDefault(x => x.Name == "LtsItem").Value;
            foreach (var item in cities.Children())
            {
                var itemProperties = item.Children<JProperty>();
                var myElement = itemProperties.FirstOrDefault(x => x.Name == "Title");
                listCities.Add(myElement.Value.ToString());
                myElement = itemProperties.FirstOrDefault(x => x.Name == "ID");
                listCityIds.Add(myElement.Value.ToString());
            }

            ViewData["listCities"] = listCities;
            ViewData["listCityIds"] = listCityIds;

            return View("~/Views/Cart/Address.cshtml");
        }

        [WebMethod(EnableSession = true)]
        public String getDistricts(int cityId)
        {
            var listDistricts = new List<string>();
            var listDistrictIds = new List<string>();
            var districtObject = callApi("https://thongtindoanhnghiep.co/api/city"+ "/" + cityId + "/district", "");

            foreach (var item in districtObject.Children())
            {
                var itemProperties = item.Children<JProperty>();
                var myElement = itemProperties.FirstOrDefault(x => x.Name == "Title");
                listDistricts.Add(myElement.Value.ToString());
                myElement = itemProperties.FirstOrDefault(x => x.Name == "ID");
                listDistrictIds.Add(myElement.Value.ToString());
            }
            String output = "";

            foreach(String district in listDistricts)
            {
                output += district;
                output += "$" + listDistrictIds[listDistricts.IndexOf(district)];
                if (listDistricts.IndexOf(district) != listDistricts.Count-1)
                {
                    output += "#";
                }
            }

            return output;
        }

        [WebMethod(EnableSession = true)]
        public String getWards(int districtId)
        {
            var listWards = new List<string>();
            var listWardIds = new List<string>();
            var wardObject = callApi("https://thongtindoanhnghiep.co/api/district" + "/" + districtId + "/ward", "");

            foreach (var item in wardObject.Children())
            {
                var itemProperties = item.Children<JProperty>();
                var myElement = itemProperties.FirstOrDefault(x => x.Name == "Title");
                listWards.Add(myElement.Value.ToString());
                myElement = itemProperties.FirstOrDefault(x => x.Name == "ID");
                listWardIds.Add(myElement.Value.ToString());
            }
            String output = "";

            foreach (String ward in listWards)
            {
                output += ward;
                output += "$" + listWardIds[listWards.IndexOf(ward)];
                if (listWards.IndexOf(ward) != listWards.Count - 1)
                {
                    output += "#";
                }
            }

            return output;
        }

        [HttpPost]
        public ActionResult Confirm(string name, string phone, string city, string district, string ward, string homeDetail)
        {
            var categories = data.Categories.ToList();
            ViewBag.Categories = categories;

            String userInfo = name + "#" + phone + "#" + city + "#" + district + "#" + ward + "#" + homeDetail;
            Session["userInfo"] = userInfo;

            var cityObject = callApi("https://thongtindoanhnghiep.co/api/city" + "/" + city, "");
            var districtObject = callApi("https://thongtindoanhnghiep.co/api/district" + "/" + district, "");
            var wardObject = callApi("https://thongtindoanhnghiep.co/api/ward" + "/" + ward, "");

            var itemProperties = cityObject.Children<JProperty>();
            var cityName = itemProperties.FirstOrDefault(x => x.Name == "Title").Value.ToString();
            itemProperties = districtObject.Children<JProperty>();
            var districtName = itemProperties.FirstOrDefault(x => x.Name == "Title").Value.ToString();
            itemProperties = wardObject.Children<JProperty>();
            var wardName = itemProperties.FirstOrDefault(x => x.Name == "Title").Value.ToString();

            userInfo = name + "#" + phone + "#" + cityName + "#" + districtName + "#" + wardName + "#" + homeDetail;

            ViewData["userInfo"] = userInfo;

            var cartInfo = (Dictionary<int, int>)Session["cartInfo"];
            List<Product> list = new List<Product>();

            foreach (var prod in cartInfo)
            {
                if (prod.Value > 0)
                {
                    var product = from p in data.Products where p.ID == prod.Key select p;
                    list.Add(product.First());
                }
            }
            ViewData["cartValues"] = list;

            return View("~/Views/Cart/Confirm.cshtml");
        }

        public ActionResult Complete()
        {
            var categories = data.Categories.ToList();
            ViewBag.Categories = categories;

            String billInfo = (String)Session["userInfo"];

            var name = billInfo.Split('#')[0];
            var phone = billInfo.Split('#')[1];
            var address = billInfo.Split('#')[2] + "#" + billInfo.Split('#')[3] + "#" + billInfo.Split('#')[4] + "#" + billInfo.Split('#')[5];
            var products = "";
            var totalPrice = 0;
            var cartInfo = (Dictionary<int, int>)Session["cartInfo"];
            foreach (var prod in cartInfo)
            {
                if (prod.Value > 0)
                {
                    products += prod.Key + "$" + prod.Value + "#";
                    var product = from p in data.Products where p.ID == prod.Key select p;
                    totalPrice += product.First().Price * prod.Value;
                }
            }

            Bill objbill = new Bill();
            objbill.name = name;
            objbill.mobile = phone;
            objbill.address = address;
            if (Session["currentUser"] != null)
            {
                objbill.userId = ((Customer)Session["currentUser"]).ID;
            }
            else
            {
                objbill.userId = null;
            }
            objbill.products = products;
            objbill.totalPrice = totalPrice;

            data.Bills.InsertOnSubmit(objbill);
            data.SubmitChanges();

            var prodcts = data.Products.ToList();
            var cartIf = new Dictionary<int, int>();
            foreach (var prdt in prodcts)
            {
                cartIf.Add(prdt.ID, 0);
            }
            Session["cartInfo"] = cartIf;
            Session["cart"] = 0;
            return View();
        }
    }
}