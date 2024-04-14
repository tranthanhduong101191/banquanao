using System;
using System.Collections.Generic;

// Code scaffolded by EF Core assumes nullable reference types (NRTs) are not used or disabled.
// If you have enabled NRTs for your project, then un-comment the following line:
// #nullable disable

namespace BanQuanAoAPI.Models
{
    public partial class LichSuGiaBan
    {
        public int MaGiaBan { get; set; }
        public int? MaSanPham { get; set; }
        public DateTime? NgayBatDau { get; set; }
        public DateTime? NgayKetThuc { get; set; }
        public double? Gia { get; set; }

        public virtual SanPham MaSanPhamNavigation { get; set; }
    }
}
