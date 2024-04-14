using System;
using System.Collections.Generic;

// Code scaffolded by EF Core assumes nullable reference types (NRTs) are not used or disabled.
// If you have enabled NRTs for your project, then un-comment the following line:
// #nullable disable

namespace BanQuanAoAPI.Models
{
    public partial class SanPham
    {
        public SanPham()
        {
            ChiTietAnhSanPham = new HashSet<ChiTietAnhSanPham>();
            ChiTietHoaDonNhap = new HashSet<ChiTietHoaDonNhap>();
            ChiTietHoaDonXuat = new HashSet<ChiTietHoaDonXuat>();
            ChiTietKho = new HashSet<ChiTietKho>();
            ChiTietKhuyenMai = new HashSet<ChiTietKhuyenMai>();
            ChiTietKiemKho = new HashSet<ChiTietKiemKho>();
            ChiTietNhom = new HashSet<ChiTietNhom>();
            GiamGia = new HashSet<GiamGia>();
            LichSuGiaBan = new HashSet<LichSuGiaBan>();
        }

        public int MaSanPham { get; set; }
        public int MaDanhMuc { get; set; }
        public string TenSanPham { get; set; }
        public string MoTaSanPham { get; set; }
        public string AnhDaiDien { get; set; }
        public int MaNhaSanXuat { get; set; }
        public int MaDonViTinh { get; set; }
        public DateTime NgayTao { get; set; }
        public int? Giatien { get; set; }

        public virtual ICollection<ChiTietAnhSanPham> ChiTietAnhSanPham { get; set; }
        public virtual ICollection<ChiTietHoaDonNhap> ChiTietHoaDonNhap { get; set; }
        public virtual ICollection<ChiTietHoaDonXuat> ChiTietHoaDonXuat { get; set; }
        public virtual ICollection<ChiTietKho> ChiTietKho { get; set; }
        public virtual ICollection<ChiTietKhuyenMai> ChiTietKhuyenMai { get; set; }
        public virtual ICollection<ChiTietKiemKho> ChiTietKiemKho { get; set; }
        public virtual ICollection<ChiTietNhom> ChiTietNhom { get; set; }
        public virtual ICollection<GiamGia> GiamGia { get; set; }
        public virtual ICollection<LichSuGiaBan> LichSuGiaBan { get; set; }
    }
}
