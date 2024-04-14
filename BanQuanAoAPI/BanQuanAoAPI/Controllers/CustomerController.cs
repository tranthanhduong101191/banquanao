using Microsoft.AspNetCore.Mvc;
using BanQuanAoAPI.Models;
using System.Collections.Generic;
using System;
using System.Linq;


namespace BanQuanAoAPI.Controllers
{
  [ApiController] 
    
    [Route("api/customers")]
    public class CustomerController : Controller
    {
        private BanQuanAoContext db = new BanQuanAoContext();
        [Route("create-giohang")]
        [HttpPost]
        public IActionResult CreateItem([FromBody] GioHang model)
        {
            db.KhachHang.Add(model.khach);
            db.SaveChanges();

            int MaKhachHang = model.khach.MaKhachHang;
            DonHang dh = new DonHang();
            dh.MaKhachHang = MaKhachHang;
            dh.NgayDat = System.DateTime.Now;
            dh.TrangThaiDonHang = 1;

            db.DonHang.Add(dh);
            db.SaveChanges();
            int MaDonHang = dh.MaDonHang;

            if (model.donhang.Count > 0)
            {
                foreach (var item in model.donhang)
                {
                    item.MaDonHang = MaDonHang;
                    db.ChiTietDonHang.Add(item);
                }
                db.SaveChanges();
            }

            return Ok(new { data = "OK" });
        }
        [Route("test")]

        [HttpPost]
        public void postkh(KhachHang k)
        {
            db.KhachHang.Add(k);
            db.SaveChanges();
        }
        [HttpGet("taikhoan")]
        public IActionResult Getall()
        {
            var user = db.TaiKhoan.Select(x => new
            {
                x.MaTaiKhoan,
                x.TaiKhoan1,
                x.MatKhau,
                x.LoaiQuyet,
                x.NgayBatDau,
                x.NgayKetThuc,
                x.TrangThai
            });
            return Json(user);
        }

  
  }

    public class GioHang
    {
        public KhachHang khach { get; set; }
        public List<ChiTietDonHang> donhang { get; set; }
    }
}
