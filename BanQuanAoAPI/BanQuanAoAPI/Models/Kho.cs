using System;
using System.Collections.Generic;

// Code scaffolded by EF Core assumes nullable reference types (NRTs) are not used or disabled.
// If you have enabled NRTs for your project, then un-comment the following line:
// #nullable disable

namespace BanQuanAoAPI.Models
{
    public partial class Kho
    {
        public Kho()
        {
            ChiTietKho = new HashSet<ChiTietKho>();
            KiemKho = new HashSet<KiemKho>();
        }

        public int MaKho { get; set; }
        public string TenKho { get; set; }
        public string DiaChi { get; set; }

        public virtual ICollection<ChiTietKho> ChiTietKho { get; set; }
        public virtual ICollection<KiemKho> KiemKho { get; set; }
    }
}
