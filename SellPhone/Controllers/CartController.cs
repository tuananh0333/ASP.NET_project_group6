using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Services;
using SellPhone.Models;
using System.Net.Http;
using System.Net.Http.Headers;
using SellPhone.Models;
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

        [HttpPost]
        public ActionResult Confirm(string name, string phone, string address)
        {
            return View("~/Views/Cart/Confirm.cshtml");
        }
    }
}