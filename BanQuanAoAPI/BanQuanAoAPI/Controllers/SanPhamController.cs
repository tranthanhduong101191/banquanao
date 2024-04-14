using Microsoft.AspNetCore.Mvc;
using BanQuanAoAPI.Models;
using System.Linq;
using System;
using Microsoft.EntityFrameworkCore;

namespace BanQuanAoAPI.Controllers
{
    [ApiController]
    public class SanPhamController : Controller
    {
        BanQuanAoContext db = new BanQuanAoContext();
        [Route("get_all")]
        [HttpGet]
        public IActionResult Get_all()
        {
            var pd = db.SanPham.Select(x => new
            {
                MaSanPham = x.MaSanPham,
                MaDanhMuc = x.MaDanhMuc,
                TenSanPham = x.TenSanPham,
                MoTaSanPham = x.MoTaSanPham,
                AnhDaiDien = x.AnhDaiDien,
                MaNhaSanXuat = x.MaNhaSanXuat,
                MaDonViTinh = x.MaDonViTinh,
                NgayTao = x.NgayTao,
                Giatien = x.Giatien

            });
            return Json(pd);
        }
        [Route("get_by_id")]
        [HttpGet]
        public IActionResult Get_by_Id(int id)
        {
            var pd = db.SanPham.Select(x => new
            {
                MaSanPham = x.MaSanPham,
                MaDanhMuc = x.MaDanhMuc,
                TenSanPham = x.TenSanPham,
                MoTaSanPham = x.MoTaSanPham,
                AnhDaiDien = x.AnhDaiDien,
                MaNhaSanXuat = x.MaNhaSanXuat,
                MaDonViTinh = x.MaDonViTinh,
                NgayTao = x.NgayTao,
                Giatien =x.Giatien
            }).Where(x=>x.MaSanPham==id).FirstOrDefault();
            return Json(pd);
        }
        [Route("them_sp")]
        [HttpPost]
        public void add_sp(SanPham sp)
        {
            try
            {
                sp.NgayTao = DateTime.Now;
                db.SanPham.Add(sp);
                db.SaveChanges();
            }
            catch (Exception e)
            {

                throw e;
            }
           
        }
        [Route("edit_sp")]
        [HttpPut]
        public void edit_sp(SanPham sp)
        {
            try
            {
                sp.NgayTao = DateTime.Now;
                db.SanPham.Attach(sp);
                db.Entry(sp).State = EntityState.Modified;
                db.SaveChanges();
            }
            catch (Exception e)
            {

                throw e;
            }

        }
        [Route("remove_sp")]
        [HttpDelete]
        public void delete_sp(int idsp)
        {
            try
            {
                SanPham sp = db.SanPham.Where(x => x.MaSanPham == idsp).FirstOrDefault();
                db.SanPham.Remove(sp);
                db.SaveChanges();
            }
            catch (Exception e)
            {

                throw e;
            }

        }
        [Route("timkiem_theoten")]
        [HttpGet]
        public IActionResult timkiem(string any)
        {
            try
            {
                if (string.IsNullOrEmpty(any))
                {
                    var pd = db.SanPham.Select(x => new
                    {
                        MaSanPham = x.MaSanPham,
                        MaDanhMuc = x.MaDanhMuc,
                        TenSanPham = x.TenSanPham,
                        MoTaSanPham = x.MoTaSanPham,
                        AnhDaiDien = x.AnhDaiDien,
                        MaNhaSanXuat = x.MaNhaSanXuat,
                        MaDonViTinh = x.MaDonViTinh,
                        NgayTao = x.NgayTao,
                        Giatien = x.Giatien

                    }).ToList();
                    return Json(pd);
                }
                else
                {
                    var pd = db.SanPham.Select(x => new
                    {
                        MaSanPham = x.MaSanPham,
                        MaDanhMuc = x.MaDanhMuc,
                        TenSanPham = x.TenSanPham,
                        MoTaSanPham = x.MoTaSanPham,
                        AnhDaiDien = x.AnhDaiDien,
                        MaNhaSanXuat = x.MaNhaSanXuat,
                        MaDonViTinh = x.MaDonViTinh,
                        NgayTao = x.NgayTao,
                        Giatien = x.Giatien
                    }).Where(x => x.TenSanPham.Contains(any)).ToList();
                    return Json(pd);
                }
            }
            catch (Exception e)
            {

                throw e;
            }

        }
    [Route("get_all_chitietdonhang")]
    [HttpGet]
    public IActionResult Getallchitietdh()
    {
      var dh = db.ChiTietDonHang.Select(x => new
      {

        NgayDat = x.MaChiTietDonHang,
        MaDonHang = x.MaDonHang,
        MaSanPham = x.MaSanPham,
        GiaMua = x.GiaMua,
        SoLuong = x.SoLuong
      }).ToList();
      return Json(dh);
    }

  }
}
