using System;
using System.Collections.Generic;

// Code scaffolded by EF Core assumes nullable reference types (NRTs) are not used or disabled.
// If you have enabled NRTs for your project, then un-comment the following line:
// #nullable disable

namespace BanQuanAoAPI.Models
{
    public partial class Menu
    {
        public int MaMenu { get; set; }
        public string TenMenu { get; set; }
        public bool TrangThai { get; set; }
    }
}
