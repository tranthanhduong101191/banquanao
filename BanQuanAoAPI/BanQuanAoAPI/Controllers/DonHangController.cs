using Microsoft.AspNetCore.Mvc;
using BanQuanAoAPI.Models;
using System.Linq;

namespace BanQuanAoAPI.Controllers
{
  [ApiController]
  public class DonHangController : Controller
  {
    BanQuanAoContext db = new BanQuanAoContext();
    [Route("get_khachhang_donhang")]
    [HttpGet]
    public IActionResult Getkhdh()
    {
      var dh = db.ChiTietDonHang.Select(x => new
      {

        MaChiTietDonHang = x.MaChiTietDonHang,
        MaDonHang = x.MaDonHang,
        MaSanPham = x.MaSanPham,
        SoLuong = x.SoLuong,
        GiaMua = x.GiaMua
      }).ToList();
      return Json(dh);
    }
    /* public IActionResult Getkhdh()
     {
       var dh = (from t in db.KhachHang
                 join n in db.DonHang on t.MaKhachHang equals n.MaKhachHang

                 select new { t.TenKhachHang, n.MaDonHang, }
                 ).ToList();
       return Json(dh);
     }*/
    [Route("get_all_donhang")]
        [HttpGet]
        public IActionResult Getall()
        {
            var dh = db.DonHang.Select(x => new
            {
         
         MaDonHang         = x.MaDonHang       ,
         MaKhachHang       = x.MaKhachHang     ,
              NgayDat           = x.NgayDat         ,
         TrangThaiDonHang  = x.TrangThaiDonHang

            }).ToList();
            return Json(dh);
        }
        [Route("Xoa_donhang")]
        [HttpDelete]
        public void Xoadonhang(int iddh)
        {
            try
            {
                DonHang dh = db.DonHang.Where(x => x.MaDonHang == iddh).FirstOrDefault();
                db.DonHang.Remove(dh);
                db.SaveChanges();
            }
            catch (System.Exception)
            {

                throw;
            }

        }
      /*  [Route("get_all_chitietdonhang")]
        [HttpGet]
        public IActionResult Getallchitietdh()
        {
            var dh = db.ChiTietDonHang.Select(x => new
            {
              
              NgayDat = x.MaChiTietDonHang,
                
                MaDonHang = x.MaDonHang,
               Tenkhachhang = x.TenKhachHang,
                 MaSanPham = x.MaSanPham,
                GiaMua = x.GiaMua,
                SoLuong = x.SoLuong
            }).ToList();
            return Json(dh);
        }
   */

  }
}
