using Microsoft.AspNetCore.Mvc;
using BanQuanAoAPI.Models;
using System.Linq;
namespace BanQuanAoAPI.Controllers
{
    [ApiController]
    public class KhachhangControllercs : Controller
    {
        BanQuanAoContext db = new BanQuanAoContext();
        [Route("get_all_kh")]
        [HttpGet]
        public IActionResult getall()
        {
           var kh = db.KhachHang.Select(x => new{
            MaKhachHang = x.MaKhachHang,
            TenKhachHang =x.TenKhachHang,
            DiaChi      = x.DiaChi      ,
            SoDienThoai = x.SoDienThoai ,
            Email       = x.Email         
           
           }).ToList();
            return Json(kh);
        }
    }
}
