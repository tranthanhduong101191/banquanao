using System;
using System.Collections.Generic;

// Code scaffolded by EF Core assumes nullable reference types (NRTs) are not used or disabled.
// If you have enabled NRTs for your project, then un-comment the following line:
// #nullable disable

namespace BanQuanAoAPI.Models
{
    public partial class ChiTietHoaDonXuat
    {
        public int MaChiTietHoaDonXuat { get; set; }
        public int MaHoaDonXuat { get; set; }
        public int MaSanPham { get; set; }
        public int SoLuong { get; set; }
        public double GiaBan { get; set; }
        public double? ChietKhau { get; set; }
        public int? TraLai { get; set; }

        public virtual HoaDonXuat MaHoaDonXuatNavigation { get; set; }
        public virtual SanPham MaSanPhamNavigation { get; set; }
    }
}
