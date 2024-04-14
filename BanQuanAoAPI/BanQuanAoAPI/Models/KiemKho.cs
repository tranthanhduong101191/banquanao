using System;
using System.Collections.Generic;

// Code scaffolded by EF Core assumes nullable reference types (NRTs) are not used or disabled.
// If you have enabled NRTs for your project, then un-comment the following line:
// #nullable disable

namespace BanQuanAoAPI.Models
{
    public partial class KiemKho
    {
        public KiemKho()
        {
            ChiTietKiemKho = new HashSet<ChiTietKiemKho>();
        }

        public int MaKiemKho { get; set; }
        public int? MaNguoiDung { get; set; }
        public DateTime? ThoiGianBatDau { get; set; }
        public DateTime? ThoiGianKetThuc { get; set; }
        public int? TrangThaiKho { get; set; }
        public int? MaKho { get; set; }
        public string MoTa { get; set; }

        public virtual Kho MaKhoNavigation { get; set; }
        public virtual ICollection<ChiTietKiemKho> ChiTietKiemKho { get; set; }
    }
}
