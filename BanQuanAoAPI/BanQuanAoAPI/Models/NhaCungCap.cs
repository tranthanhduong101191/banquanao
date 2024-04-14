using System;
using System.Collections.Generic;

// Code scaffolded by EF Core assumes nullable reference types (NRTs) are not used or disabled.
// If you have enabled NRTs for your project, then un-comment the following line:
// #nullable disable

namespace BanQuanAoAPI.Models
{
    public partial class NhaCungCap
    {
        public NhaCungCap()
        {
            HoaDonNhap = new HashSet<HoaDonNhap>();
        }

        public int MaNhaCungCap { get; set; }
        public string TenNhaCungCap { get; set; }
        public string DiaChi { get; set; }
        public string SoDienThoai { get; set; }
        public string Email { get; set; }

        public virtual ICollection<HoaDonNhap> HoaDonNhap { get; set; }
    }
}
