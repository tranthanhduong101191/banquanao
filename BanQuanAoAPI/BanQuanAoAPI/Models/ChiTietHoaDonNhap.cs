using System;
using System.Collections.Generic;

// Code scaffolded by EF Core assumes nullable reference types (NRTs) are not used or disabled.
// If you have enabled NRTs for your project, then un-comment the following line:
// #nullable disable

namespace BanQuanAoAPI.Models
{
    public partial class ChiTietHoaDonNhap
    {
        public int MaChiTiet { get; set; }
        public int? MaSanPham { get; set; }
        public int? MaHoaDonNhap { get; set; }
        public int? SoLuong { get; set; }
        public double? DonGiaNhap { get; set; }

        public virtual HoaDonNhap MaHoaDonNhapNavigation { get; set; }
        public virtual SanPham MaSanPhamNavigation { get; set; }
    }
}
