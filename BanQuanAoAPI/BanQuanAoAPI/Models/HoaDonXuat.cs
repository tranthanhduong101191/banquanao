using System;
using System.Collections.Generic;

// Code scaffolded by EF Core assumes nullable reference types (NRTs) are not used or disabled.
// If you have enabled NRTs for your project, then un-comment the following line:
// #nullable disable

namespace BanQuanAoAPI.Models
{
    public partial class HoaDonXuat
    {
        public HoaDonXuat()
        {
            ChiTietHoaDonXuat = new HashSet<ChiTietHoaDonXuat>();
        }

        public int MaHoaDonXuat { get; set; }
        public string SoHoaDon { get; set; }
        public DateTime? NgayXuat { get; set; }
        public int? MaKhachHang { get; set; }
        public int? MaNguoiDung { get; set; }

        public virtual KhachHang MaKhachHangNavigation { get; set; }
        public virtual ICollection<ChiTietHoaDonXuat> ChiTietHoaDonXuat { get; set; }
    }
}
