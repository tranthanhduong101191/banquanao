using System;
using System.Collections.Generic;

// Code scaffolded by EF Core assumes nullable reference types (NRTs) are not used or disabled.
// If you have enabled NRTs for your project, then un-comment the following line:
// #nullable disable

namespace BanQuanAoAPI.Models
{
    public partial class TaiKhoan
    {
        public int MaTaiKhoan { get; set; }
        public int? MaNguoiDung { get; set; }
        public string TaiKhoan1 { get; set; }
        public string MatKhau { get; set; }
        public DateTime? NgayBatDau { get; set; }
        public DateTime? NgayKetThuc { get; set; }
        public bool? TrangThai { get; set; }
        public int? LoaiQuyet { get; set; }

        public virtual NguoiDung MaNguoiDungNavigation { get; set; }
    }
}
