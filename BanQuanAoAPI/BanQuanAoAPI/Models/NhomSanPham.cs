using System;
using System.Collections.Generic;

// Code scaffolded by EF Core assumes nullable reference types (NRTs) are not used or disabled.
// If you have enabled NRTs for your project, then un-comment the following line:
// #nullable disable

namespace BanQuanAoAPI.Models
{
    public partial class NhomSanPham
    {
        public NhomSanPham()
        {
            ChiTietNhom = new HashSet<ChiTietNhom>();
        }

        public int MaNhomSanPham { get; set; }
        public string TenNhom { get; set; }
        public bool? TrangThai { get; set; }

        public virtual ICollection<ChiTietNhom> ChiTietNhom { get; set; }
    }
}
