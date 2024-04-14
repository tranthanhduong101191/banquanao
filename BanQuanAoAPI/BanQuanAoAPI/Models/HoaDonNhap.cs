using System;
using System.Collections.Generic;

// Code scaffolded by EF Core assumes nullable reference types (NRTs) are not used or disabled.
// If you have enabled NRTs for your project, then un-comment the following line:
// #nullable disable

namespace BanQuanAoAPI.Models
{
    public partial class HoaDonNhap
    {
        public HoaDonNhap()
        {
            ChiTietHoaDonNhap = new HashSet<ChiTietHoaDonNhap>();
        }

        public int MaHoaDonNhap { get; set; }
        public string SoHoaDon { get; set; }
        public DateTime NgayNhap { get; set; }
        public int MaNguoiDung { get; set; }
        public int MaNhaCungCap { get; set; }

        public virtual NguoiDung MaNguoiDungNavigation { get; set; }
        public virtual NhaCungCap MaNhaCungCapNavigation { get; set; }
        public virtual ICollection<ChiTietHoaDonNhap> ChiTietHoaDonNhap { get; set; }
    }
}
