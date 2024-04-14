using Microsoft.AspNetCore.Mvc;
using BanQuanAoAPI.Models;
using System.Linq;

namespace BanQuanAoAPI.Controllers
{
    public class NhasanxuatController : Controller
    {
        BanQuanAoContext db = new BanQuanAoContext();
        [Route("get_all_nsx")]
        [HttpGet]
        public IActionResult getall()
        {
            var nsx = db.NhaSanXuat.Select(x => new
            {
                MaNhaSanXuat = x.MaNhaSanXuat,
                TenNhaSanXuat = x.TenNhaSanXuat,
            }).ToList();
            return Json(nsx);
        }
    }
}
