using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Web_BanHang.Context;

namespace Web_BanHang.Controllers
{
    public class CategoryController : Controller
    {
        Web_BanHangEntities objWeb_BanHangEntities = new Web_BanHangEntities();
        // GET: Category
        public ActionResult Index()
        {
            var lstCategory = objWeb_BanHangEntities.Categories.ToList();
            return View(lstCategory);
        }
        public ActionResult ProductCategory(int Id)
        {
            var lstProduct = objWeb_BanHangEntities.Products.Where(n => n.CategoryId == Id).ToList();
            return View(lstProduct);
        }
    }
}