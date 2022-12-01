using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Services.Description;
using Web_BanHang.Context;
using Web_BanHang.Models;

namespace Web_BanHang.Controllers
{
    public class CartController : Controller
    {
        Web_BanHangEntities objWeb_BanHangEntities = new Web_BanHangEntities();
        // GET: Cart
        public ActionResult Index()
        {
            return View((List<CartModel>)Session["cart"]);
        }

        public ActionResult AddToCart(int id, int quantity)
        {
            if (Session["cart"] == null)
            {
                List<CartModel> cart = new List<CartModel>();
                cart.Add(new CartModel { Product = objWeb_BanHangEntities.Products.Find(id), Quantity = quantity });
                Session["cart"] = cart;
                Session["count"] = 1;
            }
            else
            {
                List<CartModel> cart = (List<CartModel>)Session["cart"];
                // Kiêmr tra sản phẩm có tồn tại trong hàng chưa??
                int index = isExist(id);
                if(index != -1)
                {
                    //Nế sp tồn tại trong giỏ hàng thì cộng thêm số lượng
                    cart[index].Quantity += quantity;
                }
                else
                {
                    // Nếu không tồn tại thì thêm sản phẩm vào hior hàng
                    cart.Add(new CartModel { Product = objWeb_BanHangEntities.Products.Find(id), Quantity = quantity });
                    // Tính lại số sản phẩm trong giỏ hàng
                    Session["count"] = Convert.ToInt32(Session["count"]) + 1;
                }
                Session["cart"] = cart;
            }
            return Json(new { Message = "Thành Công", JsonRequestBehavior.AllowGet });
        }

        private int isExist(int id)
        {
            List<CartModel> cart = (List<CartModel>)Session["cart"];
            for (int i = 0; i < cart.Count; i++)
                if (cart[i].Product.Id.Equals(id))
                    return i;
            return -1;
        }

        //Xoá sp khỏi giỏ hàng theo id
        public ActionResult Remove(int id)
        {
            List<CartModel> li = (List<CartModel>)Session["cart"];
            li.RemoveAll(x => x.Product.Id == id);
            Session["cart"] = li;
            Session["count"] = Convert.ToInt32(Session["count"]) - 1;
            return Json(new { Message = "Thành Công", JsonRequestBehavior.AllowGet });
        }
    }
}