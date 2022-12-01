using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Web_BanHang.Context;

namespace Web_BanHang.Controllers
{
    public class ProductController : Controller
    {
        // GET: Product
        Web_BanHangEntities objWeb_BanHangEntities = new Web_BanHangEntities();

        // GET: Product
        public ActionResult Detail(int Id)
        {
            var objProduct = objWeb_BanHangEntities.Products.Where(n => n.Id == Id).FirstOrDefault();
            return View(objProduct);
        }
    }
}