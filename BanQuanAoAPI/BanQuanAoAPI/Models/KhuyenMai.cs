using System;
using System.Collections.Generic;

// Code scaffolded by EF Core assumes nullable reference types (NRTs) are not used or disabled.
// If you have enabled NRTs for your project, then un-comment the following line:
// #nullable disable

namespace BanQuanAoAPI.Models
{
    public partial class KhuyenMai
    {
        public KhuyenMai()
        {
            ChiTietKhuyenMai = new HashSet<ChiTietKhuyenMai>();
        }

        public int MaKhuyenMai { get; set; }
        public string TenKhuyenMai { get; set; }
        public string MoTa { get; set; }

        public virtual ICollection<ChiTietKhuyenMai> ChiTietKhuyenMai { get; set; }
    }
}
