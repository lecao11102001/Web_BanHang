using PagedList;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Web_BanHang.Context;

namespace Web_BanHang.Areas.Admin.Controllers
{
    public class ProductController : Controller
    {
        Web_BanHangEntities objWeb_BanHangEntities = new Web_BanHangEntities();

        // GET: Admin/Product
        //public ActionResult Index(string SearchString)
        //{
        //    var lstProduct = objWeb_BanHangEntities.Products.Where(n => n.Name.Contains(SearchString)).ToList();
        //    //var lstProduct = objWeb_BanHangEntities.Products.ToList();
        //    return View(lstProduct);
        //}
        public ActionResult Index(string currentFilter, string SearchString, int? page)
        {
            var lstProduct = new List<Product>();
            if(SearchString != null)
            {
                page = 1;
            }
            else
            {
                SearchString = currentFilter;
            }
            if (!String.IsNullOrEmpty(SearchString))
            {
                //Lấy ds sản phẩn theo từ khoá tìm kiếm
                lstProduct = objWeb_BanHangEntities.Products.Where(n => n.Name.Contains(SearchString)).ToList();
            }
            else
            {
                //Lấy ds sản phẩm trong bản product
                lstProduct = objWeb_BanHangEntities.Products.ToList();
            }
            ViewBag.CurrentFilter = SearchString;
            //số lượng item của 1 trang bằng 4
            int pageSize = 4;
            int pageNumber = (page ?? 1);
            //Sắp xếp theo id sản phẩm, sp mới đưa lên đầu
            lstProduct = lstProduct.OrderByDescending(n => n.Id).ToList();
            return View(lstProduct.ToPagedList(pageNumber, pageSize));
        }

        [HttpGet]
        public ActionResult Create()
        {
            return View();
        }

        [HttpPost]
        public ActionResult Create(Product objProduct)
        {
            try
            {
                if (objProduct.ImageUpload != null)
                {
                    string fileName = Path.GetFileNameWithoutExtension(objProduct.ImageUpload.FileName);
                    string extension = Path.GetExtension(objProduct.ImageUpload.FileName);
                    fileName = fileName + "_" + long.Parse(DateTime.Now.ToString("yyyyMMddhhmmss")) + extension;
                    objProduct.Avatar = fileName;
                    objProduct.ImageUpload.SaveAs(Path.Combine(Server.MapPath("~/Content/images/"), fileName));
                }
                objWeb_BanHangEntities.Products.Add(objProduct);
                objWeb_BanHangEntities.SaveChanges();
                return RedirectToAction("Index");
            }
            catch (Exception)
            {
                return RedirectToAction("Index");
            }
        }

        [HttpGet]
        public ActionResult Edit(int Id)
        {
            var objProduct = objWeb_BanHangEntities.Products.Where(x => x.Id == Id).FirstOrDefault();
            return View(objProduct);
        }

        [HttpPost]
        public ActionResult Edit(Product objProduct)
        {
            if (objProduct.ImageUpload != null)
            {
                string fileName = Path.GetFileNameWithoutExtension(objProduct.ImageUpload.FileName);
                string extension = Path.GetExtension(objProduct.ImageUpload.FileName);
                fileName = fileName + "_" + long.Parse(DateTime.Now.ToString("yyyyMMddhhmmss")) + extension;
                objProduct.Avatar = fileName;
                objProduct.ImageUpload.SaveAs(Path.Combine(Server.MapPath("~/Content/images/"), fileName));
            }
            objWeb_BanHangEntities.Entry(objProduct).State = System.Data.Entity.EntityState.Modified;
            objWeb_BanHangEntities.SaveChanges();
            //return View(objProduct);
            return RedirectToAction("Index");
        }

        [HttpGet]
        public ActionResult Details(int Id)
        {
            var objProduct = objWeb_BanHangEntities.Products.Where(x => x.Id == Id).FirstOrDefault();
            return View(objProduct);
        }

        [HttpGet]
        public ActionResult Delete(int Id)
        {
            var objProduct = objWeb_BanHangEntities.Products.Where(x => x.Id == Id).FirstOrDefault();
            return View(objProduct);
        }

        [HttpPost]
        public ActionResult Delete(Product objPro)
        {
            var objProduct = objWeb_BanHangEntities.Products.Where(x => x.Id == objPro.Id).FirstOrDefault();

            objWeb_BanHangEntities.Products.Remove(objProduct);
            objWeb_BanHangEntities.SaveChanges();
            return RedirectToAction("Index");
        }
    }
}