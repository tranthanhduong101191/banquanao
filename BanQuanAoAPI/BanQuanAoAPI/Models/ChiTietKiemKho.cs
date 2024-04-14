using System;
using System.Collections.Generic;

// Code scaffolded by EF Core assumes nullable reference types (NRTs) are not used or disabled.
// If you have enabled NRTs for your project, then un-comment the following line:
// #nullable disable

namespace BanQuanAoAPI.Models
{
    public partial class ChiTietKiemKho
    {
        public int MaChiTietKiemKho { get; set; }
        public int MaSanPham { get; set; }
        public int MaKiemKho { get; set; }
        public int? SoLuongDemDuoc { get; set; }
        public int? SoLuongTinhToan { get; set; }
        public int? SoLuongThayDoi { get; set; }

        public virtual KiemKho MaKiemKhoNavigation { get; set; }
        public virtual SanPham MaSanPhamNavigation { get; set; }
    }
}
