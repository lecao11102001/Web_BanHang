using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Web_BanHang.Context;

namespace Web_BanHang.Models
{
    public class HomeModel
    {
        public List<Category> ListCategory { get; set; }
        public List<Product> ListProduct { get; set; }
    }
}