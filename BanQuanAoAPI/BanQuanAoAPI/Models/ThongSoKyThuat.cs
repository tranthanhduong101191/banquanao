using System;
using System.Collections.Generic;

// Code scaffolded by EF Core assumes nullable reference types (NRTs) are not used or disabled.
// If you have enabled NRTs for your project, then un-comment the following line:
// #nullable disable

namespace BanQuanAoAPI.Models
{
    public partial class ThongSoKyThuat
    {
        public int MaThongSo { get; set; }
        public int? MaSanPham { get; set; }
        public string TenThongSo { get; set; }
        public string MoTa { get; set; }

        public virtual SanPham MaSanPhamNavigation { get; set; }
    }
}
