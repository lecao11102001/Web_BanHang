using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Web_BanHang.Context;

namespace Web_BanHang.Models
{
    public class CartModel
    {
        public Product Product { get; set; }
        public int Quantity { get; set; }
    }
}