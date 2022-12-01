using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Web_BanHang.Context;
using Web_BanHang.Models;

namespace Web_BanHang.Controllers
{
    public class PaymentController : Controller
    {
        Web_BanHangEntities objWeb_BanHangEntities = new Web_BanHangEntities();

        // GET: Payment
        public ActionResult Index()
        {
            if (Session["idUser"] == null)
            {
                return RedirectToAction("Login", "Home");
            }
            else
            {
                // Lấy thông tin từ giỏ hàng từ biến session
                var lstCart = (List<CartModel>)Session["cart"];
                // gán dữ liệu cho Order
                Order objOrder = new Order();
                objOrder.Name = "DonHang" + DateTime.Now.ToString("yyyyMMddHHmmss");
                objOrder.UserId = int.Parse(Session["idUser"].ToString());
                objOrder.CreatedOnUtc = DateTime.Now;
                objOrder.Status = 1;
                objWeb_BanHangEntities.Orders.Add(objOrder);
                // Lưu thông tin dữ liệu vào bảng order
                objWeb_BanHangEntities.SaveChanges();

                // Lấy OrderId vừa mới tạo đẻ lưu vào bảng OrderDetail
                int inOrderId = objOrder.Id;

                List<OrderDetail> lstOrderDetail = new List<OrderDetail>();

                foreach(var item in lstCart)
                {
                    OrderDetail obj = new OrderDetail();
                    obj.Quantity = item.Quantity;
                    obj.OrderId = inOrderId;
                    obj.ProductId = item.Product.Id;
                    lstOrderDetail.Add(obj);
                }
                objWeb_BanHangEntities.OrderDetails.AddRange(lstOrderDetail);
                objWeb_BanHangEntities.SaveChanges();
            }
            return View();
        }
    }
}