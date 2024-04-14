using System;
using System.Collections.Generic;

// Code scaffolded by EF Core assumes nullable reference types (NRTs) are not used or disabled.
// If you have enabled NRTs for your project, then un-comment the following line:
// #nullable disable

namespace BanQuanAoAPI.Models
{
    public partial class GiamGia
    {
        public int MaGiamGia { get; set; }
        public int? MaSanPham { get; set; }
        public double? PhanTram { get; set; }
        public DateTime? ThoiGianBatDau { get; set; }
        public DateTime? ThoiGianKetThuc { get; set; }
        public bool? TrangThai { get; set; }

        public virtual SanPham MaSanPhamNavigation { get; set; }
    }
}
