using System;
using System.Collections.Generic;

// Code scaffolded by EF Core assumes nullable reference types (NRTs) are not used or disabled.
// If you have enabled NRTs for your project, then un-comment the following line:
// #nullable disable

namespace BanQuanAoAPI.Models
{
    public partial class NguoiDung
    {
        public NguoiDung()
        {
            HoaDonNhap = new HashSet<HoaDonNhap>();
            TaiKhoan = new HashSet<TaiKhoan>();
        }

        public int MaNguoiDung { get; set; }
        public string HoTen { get; set; }
        public string DiaChi { get; set; }
        public string Email { get; set; }
        public string DienThoai { get; set; }
        public bool? TrangThai { get; set; }

        public virtual ICollection<HoaDonNhap> HoaDonNhap { get; set; }
        public virtual ICollection<TaiKhoan> TaiKhoan { get; set; }
    }
}
