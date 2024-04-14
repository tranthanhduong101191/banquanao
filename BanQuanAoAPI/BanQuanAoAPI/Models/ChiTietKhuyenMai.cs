using System;
using System.Collections.Generic;

// Code scaffolded by EF Core assumes nullable reference types (NRTs) are not used or disabled.
// If you have enabled NRTs for your project, then un-comment the following line:
// #nullable disable

namespace BanQuanAoAPI.Models
{
    public partial class ChiTietKhuyenMai
    {
        public int MaChiTietKhuyenMai { get; set; }
        public int MaSanPham { get; set; }
        public DateTime NgayBatDau { get; set; }
        public DateTime NgayKetThuc { get; set; }
        public int MaKhuyenMai { get; set; }
        public bool TrangThai { get; set; }

        public virtual KhuyenMai MaKhuyenMaiNavigation { get; set; }
        public virtual SanPham MaSanPhamNavigation { get; set; }
    }
}
