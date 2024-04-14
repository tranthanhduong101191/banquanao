using Microsoft.AspNetCore.Mvc;
using BanQuanAoAPI.Models;
using System.Linq;
using System;
using Microsoft.EntityFrameworkCore;

namespace BanQuanAoAPI.Controllers
{
    [ApiController]
    public class DanhmucController : Controller
    {
        BanQuanAoContext db = new BanQuanAoContext();
        [Route("get_all_danhmuc")]
        [HttpGet]
        public IActionResult Get_all()
        {
            var pd = db.DanhMuc.Select(x => new
            {
                MaDanhMuc = x.MaDanhMuc,
                TenDanhMuc = x.TenDanhMuc,
            }).ToList();
            return Json(pd);
        }
        [Route("getdanhmuc_by_id")]
        [HttpGet]
        public IActionResult Get_by_Id(int id)
        {
            var pd = db.DanhMuc.Select(x => new
            {
                MaDanhMuc = x.MaDanhMuc,
                TenDanhMuc = x.TenDanhMuc,
            }).Where(x => x.MaDanhMuc == id).FirstOrDefault();
            return Json(pd);
        }
        [Route("them_danhmuc")]
        [HttpPost]
        public void add_sp(DanhMuc dm)
        {
            try
            {
                db.DanhMuc.Add(dm);
                db.SaveChanges();
            }
            catch (Exception e)
            {

                throw e;
            }

        }
        [Route("sua_dm")]
        [HttpPut]
        public void suadanhmuc(DanhMuc dm)
        {
            try
            {

                db.DanhMuc.Attach(dm);
                db.Entry(dm).State = EntityState.Modified;
                db.SaveChanges();
            }
            catch (Exception e)
            {

                throw e;
            }

        }
        [Route("xoa_dm")]
        [HttpDelete]
        public void xoadanhmuc(int iddm)
        {
            try
            {
                DanhMuc sp = db.DanhMuc.Where(x => x.MaDanhMuc == iddm).FirstOrDefault();
                db.DanhMuc.Remove(sp);
                db.SaveChanges();
            }
            catch (Exception e)
            {

                throw e;
            }

        }
    }
}
