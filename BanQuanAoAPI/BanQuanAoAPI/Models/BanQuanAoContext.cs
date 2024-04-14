using System;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata;

// Code scaffolded by EF Core assumes nullable reference types (NRTs) are not used or disabled.
// If you have enabled NRTs for your project, then un-comment the following line:
// #nullable disable

namespace BanQuanAoAPI.Models
{
    public partial class BanQuanAoContext : DbContext
    {
        public BanQuanAoContext()
        {
        }

        public BanQuanAoContext(DbContextOptions<BanQuanAoContext> options)
            : base(options)
        {
        }

        public virtual DbSet<ChiTietAnhSanPham> ChiTietAnhSanPham { get; set; }
        public virtual DbSet<ChiTietDonHang> ChiTietDonHang { get; set; }
        public virtual DbSet<ChiTietHoaDonNhap> ChiTietHoaDonNhap { get; set; }
        public virtual DbSet<ChiTietHoaDonXuat> ChiTietHoaDonXuat { get; set; }
        public virtual DbSet<ChiTietKho> ChiTietKho { get; set; }
        public virtual DbSet<ChiTietKhuyenMai> ChiTietKhuyenMai { get; set; }
        public virtual DbSet<ChiTietKiemKho> ChiTietKiemKho { get; set; }
        public virtual DbSet<ChiTietNhom> ChiTietNhom { get; set; }
        public virtual DbSet<DanhMuc> DanhMuc { get; set; }
        public virtual DbSet<DonHang> DonHang { get; set; }
        public virtual DbSet<DonViTinh> DonViTinh { get; set; }
        public virtual DbSet<GiaSanPham> GiaSanPham { get; set; }
        public virtual DbSet<GiamGia> GiamGia { get; set; }
        public virtual DbSet<HoaDonNhap> HoaDonNhap { get; set; }
        public virtual DbSet<HoaDonXuat> HoaDonXuat { get; set; }
        public virtual DbSet<KhachHang> KhachHang { get; set; }
        public virtual DbSet<Kho> Kho { get; set; }
        public virtual DbSet<KhuyenMai> KhuyenMai { get; set; }
        public virtual DbSet<KiemKho> KiemKho { get; set; }
        public virtual DbSet<LichSuGiaBan> LichSuGiaBan { get; set; }
        public virtual DbSet<Menu> Menu { get; set; }
        public virtual DbSet<NguoiDung> NguoiDung { get; set; }
        public virtual DbSet<NhaCungCap> NhaCungCap { get; set; }
        public virtual DbSet<NhaSanXuat> NhaSanXuat { get; set; }
        public virtual DbSet<NhomSanPham> NhomSanPham { get; set; }
        public virtual DbSet<SanPham> SanPham { get; set; }
        public virtual DbSet<Silde> Silde { get; set; }
        public virtual DbSet<TaiKhoan> TaiKhoan { get; set; }
        public virtual DbSet<ThongSoKyThuat> ThongSoKyThuat { get; set; }

        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            if (!optionsBuilder.IsConfigured)
            {
#warning To protect potentially sensitive information in your connection string, you should move it out of source code. See http://go.microsoft.com/fwlink/?LinkId=723263 for guidance on storing connection strings.
                optionsBuilder.UseSqlServer("Server=DESKTOP-7FAE4PK\\SQLEXPRESS;Database=BanQuanAo1;Trusted_Connection=True;");
            }
        }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            modelBuilder.Entity<ChiTietAnhSanPham>(entity =>
            {
                entity.HasKey(e => e.MaAnhChitiet);

                entity.Property(e => e.Anh)
                    .HasMaxLength(500)
                    .IsUnicode(false);

                entity.HasOne(d => d.MaSanPhamNavigation)
                    .WithMany(p => p.ChiTietAnhSanPham)
                    .HasForeignKey(d => d.MaSanPham)
                    .HasConstraintName("FK_ChiTietAnhSanPham_SanPham");
            });

            modelBuilder.Entity<ChiTietDonHang>(entity =>
            {
                entity.HasKey(e => e.MaChiTietDonHang);

                entity.HasOne(d => d.MaDonHangNavigation)
                    .WithMany(p => p.ChiTietDonHang)
                    .HasForeignKey(d => d.MaDonHang)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_ChiTietDonHang_DonHang");
            });

            modelBuilder.Entity<ChiTietHoaDonNhap>(entity =>
            {
                entity.HasKey(e => e.MaChiTiet);

                entity.Property(e => e.MaChiTiet).ValueGeneratedNever();

                entity.HasOne(d => d.MaHoaDonNhapNavigation)
                    .WithMany(p => p.ChiTietHoaDonNhap)
                    .HasForeignKey(d => d.MaHoaDonNhap)
                    .HasConstraintName("FK_ChiTietHoaDonNhap_HoaDonNhap");

                entity.HasOne(d => d.MaSanPhamNavigation)
                    .WithMany(p => p.ChiTietHoaDonNhap)
                    .HasForeignKey(d => d.MaSanPham)
                    .HasConstraintName("FK_ChiTietHoaDonNhap_SanPham");
            });

            modelBuilder.Entity<ChiTietHoaDonXuat>(entity =>
            {
                entity.HasKey(e => e.MaChiTietHoaDonXuat);

                entity.Property(e => e.MaChiTietHoaDonXuat).ValueGeneratedNever();

                entity.HasOne(d => d.MaHoaDonXuatNavigation)
                    .WithMany(p => p.ChiTietHoaDonXuat)
                    .HasForeignKey(d => d.MaHoaDonXuat)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_ChiTietHoaDonXuat_HoaDonXuat");

                entity.HasOne(d => d.MaSanPhamNavigation)
                    .WithMany(p => p.ChiTietHoaDonXuat)
                    .HasForeignKey(d => d.MaSanPham)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_ChiTietHoaDonXuat_SanPham");
            });

            modelBuilder.Entity<ChiTietKho>(entity =>
            {
                entity.HasKey(e => e.MaChiTietKho);

                entity.Property(e => e.MaChiTietKho).ValueGeneratedNever();

                entity.Property(e => e.KhayKhe).HasMaxLength(1500);

                entity.HasOne(d => d.MaKhoNavigation)
                    .WithMany(p => p.ChiTietKho)
                    .HasForeignKey(d => d.MaKho)
                    .HasConstraintName("FK_ChiTietKho_Kho");

                entity.HasOne(d => d.MaSanPhamNavigation)
                    .WithMany(p => p.ChiTietKho)
                    .HasForeignKey(d => d.MaSanPham)
                    .HasConstraintName("FK_ChiTietKho_SanPham");
            });

            modelBuilder.Entity<ChiTietKhuyenMai>(entity =>
            {
                entity.HasKey(e => e.MaChiTietKhuyenMai);

                entity.Property(e => e.MaChiTietKhuyenMai).ValueGeneratedNever();

                entity.Property(e => e.NgayBatDau).HasColumnType("datetime");

                entity.Property(e => e.NgayKetThuc).HasColumnType("datetime");

                entity.HasOne(d => d.MaKhuyenMaiNavigation)
                    .WithMany(p => p.ChiTietKhuyenMai)
                    .HasForeignKey(d => d.MaKhuyenMai)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_ChiTietKhuyenMai_KhuyenMai");

                entity.HasOne(d => d.MaSanPhamNavigation)
                    .WithMany(p => p.ChiTietKhuyenMai)
                    .HasForeignKey(d => d.MaSanPham)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_ChiTietKhuyenMai_SanPham");
            });

            modelBuilder.Entity<ChiTietKiemKho>(entity =>
            {
                entity.HasKey(e => e.MaChiTietKiemKho);

                entity.Property(e => e.MaChiTietKiemKho).ValueGeneratedNever();

                entity.HasOne(d => d.MaKiemKhoNavigation)
                    .WithMany(p => p.ChiTietKiemKho)
                    .HasForeignKey(d => d.MaKiemKho)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_ChiTietKiemKho_KiemKho");

                entity.HasOne(d => d.MaSanPhamNavigation)
                    .WithMany(p => p.ChiTietKiemKho)
                    .HasForeignKey(d => d.MaSanPham)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_ChiTietKiemKho_SanPham");
            });

            modelBuilder.Entity<ChiTietNhom>(entity =>
            {
                entity.HasKey(e => e.MaChiTietNhom);

                entity.HasOne(d => d.MaNhomSanPhamNavigation)
                    .WithMany(p => p.ChiTietNhom)
                    .HasForeignKey(d => d.MaNhomSanPham)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_ChiTietNhom_NhomSanPham");

                entity.HasOne(d => d.MaSanPhamNavigation)
                    .WithMany(p => p.ChiTietNhom)
                    .HasForeignKey(d => d.MaSanPham)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_ChiTietNhom_SanPham");
            });

            modelBuilder.Entity<DanhMuc>(entity =>
            {
                entity.HasKey(e => e.MaDanhMuc);

                entity.Property(e => e.Stt).HasColumnName("STT");

                entity.Property(e => e.TenDanhMuc)
                    .IsRequired()
                    .HasMaxLength(250);
            });

            modelBuilder.Entity<DonHang>(entity =>
            {
                entity.HasKey(e => e.MaDonHang);

                entity.Property(e => e.NgayDat).HasColumnType("datetime");
            });

            modelBuilder.Entity<DonViTinh>(entity =>
            {
                entity.HasKey(e => e.MaDonViTinh);

                entity.Property(e => e.TenDonViTinh).HasMaxLength(100);
            });

            modelBuilder.Entity<GiaSanPham>(entity =>
            {
                entity.HasKey(e => e.MaGiaSanPham)
                    .HasName("PK_GiaSanPham_1");

                entity.Property(e => e.NgayBatDau).HasColumnType("datetime");

                entity.Property(e => e.NgayKetThuc).HasColumnType("datetime");
            });

            modelBuilder.Entity<GiamGia>(entity =>
            {
                entity.HasKey(e => e.MaGiamGia);

                entity.Property(e => e.MaGiamGia).ValueGeneratedNever();

                entity.Property(e => e.ThoiGianBatDau).HasColumnType("datetime");

                entity.Property(e => e.ThoiGianKetThuc).HasColumnType("datetime");

                entity.HasOne(d => d.MaSanPhamNavigation)
                    .WithMany(p => p.GiamGia)
                    .HasForeignKey(d => d.MaSanPham)
                    .HasConstraintName("FK_GiamGia_SanPham");
            });

            modelBuilder.Entity<HoaDonNhap>(entity =>
            {
                entity.HasKey(e => e.MaHoaDonNhap);

                entity.Property(e => e.MaHoaDonNhap).ValueGeneratedNever();

                entity.Property(e => e.NgayNhap).HasColumnType("datetime");

                entity.Property(e => e.SoHoaDon)
                    .IsRequired()
                    .HasMaxLength(50)
                    .IsFixedLength();

                entity.HasOne(d => d.MaNguoiDungNavigation)
                    .WithMany(p => p.HoaDonNhap)
                    .HasForeignKey(d => d.MaNguoiDung)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_HoaDonNhap_NguoiDung");

                entity.HasOne(d => d.MaNhaCungCapNavigation)
                    .WithMany(p => p.HoaDonNhap)
                    .HasForeignKey(d => d.MaNhaCungCap)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_HoaDonNhap_NhaCungCap");
            });

            modelBuilder.Entity<HoaDonXuat>(entity =>
            {
                entity.HasKey(e => e.MaHoaDonXuat);

                entity.Property(e => e.MaHoaDonXuat).ValueGeneratedNever();

                entity.Property(e => e.NgayXuat).HasColumnType("datetime");

                entity.Property(e => e.SoHoaDon)
                    .HasMaxLength(50)
                    .IsFixedLength();

                
            });

            modelBuilder.Entity<KhachHang>(entity =>
            {
                entity.HasKey(e => e.MaKhachHang);

                entity.Property(e => e.DiaChi).HasMaxLength(1500);

                entity.Property(e => e.Email)
                    .HasMaxLength(50)
                    .IsUnicode(false);

                entity.Property(e => e.SoDienThoai)
                    .HasMaxLength(20)
                    .IsUnicode(false);

                entity.Property(e => e.TenKhachHang).HasMaxLength(250);
            });

            modelBuilder.Entity<Kho>(entity =>
            {
                entity.HasKey(e => e.MaKho);

                entity.Property(e => e.MaKho).ValueGeneratedNever();

                entity.Property(e => e.DiaChi)
                    .IsRequired()
                    .HasMaxLength(500);

                entity.Property(e => e.TenKho)
                    .IsRequired()
                    .HasMaxLength(250);
            });

            modelBuilder.Entity<KhuyenMai>(entity =>
            {
                entity.HasKey(e => e.MaKhuyenMai);

                entity.Property(e => e.MaKhuyenMai).ValueGeneratedNever();

                entity.Property(e => e.MoTa).HasColumnType("ntext");

                entity.Property(e => e.TenKhuyenMai).HasMaxLength(250);
            });

            modelBuilder.Entity<KiemKho>(entity =>
            {
                entity.HasKey(e => e.MaKiemKho);

                entity.Property(e => e.MaKiemKho).ValueGeneratedNever();

                entity.Property(e => e.MoTa).HasColumnType("ntext");

                entity.Property(e => e.ThoiGianBatDau).HasColumnType("datetime");

                entity.Property(e => e.ThoiGianKetThuc).HasColumnType("datetime");

                entity.HasOne(d => d.MaKhoNavigation)
                    .WithMany(p => p.KiemKho)
                    .HasForeignKey(d => d.MaKho)
                    .HasConstraintName("FK_KiemKho_Kho");
            });

            modelBuilder.Entity<LichSuGiaBan>(entity =>
            {
                entity.HasKey(e => e.MaGiaBan);

                entity.Property(e => e.MaGiaBan).ValueGeneratedNever();

                entity.Property(e => e.NgayBatDau).HasColumnType("datetime");

                entity.Property(e => e.NgayKetThuc).HasColumnType("datetime");

                entity.HasOne(d => d.MaSanPhamNavigation)
                    .WithMany(p => p.LichSuGiaBan)
                    .HasForeignKey(d => d.MaSanPham)
                    .HasConstraintName("FK_LichSuGiaBan_SanPham");
            });

            modelBuilder.Entity<Menu>(entity =>
            {
                entity.HasKey(e => e.MaMenu);

                entity.Property(e => e.MaMenu).ValueGeneratedNever();

                entity.Property(e => e.TenMenu)
                    .IsRequired()
                    .HasMaxLength(250);
            });

            modelBuilder.Entity<NguoiDung>(entity =>
            {
                entity.HasKey(e => e.MaNguoiDung);

                entity.Property(e => e.MaNguoiDung).ValueGeneratedNever();

                entity.Property(e => e.DiaChi).HasMaxLength(1500);

                entity.Property(e => e.DienThoai)
                    .HasMaxLength(20)
                    .IsUnicode(false)
                    .IsFixedLength();

                entity.Property(e => e.Email).HasMaxLength(100);

                entity.Property(e => e.HoTen).HasMaxLength(250);
            });

            modelBuilder.Entity<NhaCungCap>(entity =>
            {
                entity.HasKey(e => e.MaNhaCungCap);

                entity.Property(e => e.MaNhaCungCap).ValueGeneratedNever();

                entity.Property(e => e.DiaChi).HasMaxLength(500);

                entity.Property(e => e.Email)
                    .HasMaxLength(50)
                    .IsUnicode(false)
                    .IsFixedLength();

                entity.Property(e => e.SoDienThoai)
                    .HasMaxLength(20)
                    .IsUnicode(false)
                    .IsFixedLength();

                entity.Property(e => e.TenNhaCungCap).HasMaxLength(250);
            });

            modelBuilder.Entity<NhaSanXuat>(entity =>
            {
                entity.HasKey(e => e.MaNhaSanXuat);

                entity.Property(e => e.MoTa).HasColumnType("ntext");

                entity.Property(e => e.TenNhaSanXuat)
                    .IsRequired()
                    .HasMaxLength(250);
            });

            modelBuilder.Entity<NhomSanPham>(entity =>
            {
                entity.HasKey(e => e.MaNhomSanPham);

                entity.Property(e => e.TenNhom).HasMaxLength(250);
            });

            modelBuilder.Entity<SanPham>(entity =>
            {
                entity.HasKey(e => e.MaSanPham);

                entity.Property(e => e.AnhDaiDien)
                    .IsRequired()
                    .HasMaxLength(500)
                    .IsUnicode(false);

                entity.Property(e => e.MoTaSanPham)
                    .IsRequired()
                    .HasColumnType("ntext");

                entity.Property(e => e.NgayTao).HasColumnType("datetime");

                entity.Property(e => e.TenSanPham)
                    .IsRequired()
                    .HasMaxLength(250);
            });

            modelBuilder.Entity<Silde>(entity =>
            {
                entity.HasKey(e => e.MaSilde);

                entity.Property(e => e.Anh)
                    .HasMaxLength(250)
                    .IsUnicode(false);

                entity.Property(e => e.Link)
                    .HasMaxLength(250)
                    .IsUnicode(false);
            });

            modelBuilder.Entity<TaiKhoan>(entity =>
            {
                entity.HasKey(e => e.MaTaiKhoan);

                entity.Property(e => e.MaTaiKhoan).ValueGeneratedNever();

                entity.Property(e => e.MatKhau)
                    .HasMaxLength(100)
                    .IsUnicode(false);

                entity.Property(e => e.NgayBatDau).HasColumnType("datetime");

                entity.Property(e => e.NgayKetThuc).HasColumnType("datetime");

                entity.Property(e => e.TaiKhoan1)
                    .HasColumnName("TaiKhoan")
                    .HasMaxLength(100)
                    .IsUnicode(false);

                entity.HasOne(d => d.MaNguoiDungNavigation)
                    .WithMany(p => p.TaiKhoan)
                    .HasForeignKey(d => d.MaNguoiDung)
                    .HasConstraintName("FK_TaiKhoan_NguoiDung");
            });

            modelBuilder.Entity<ThongSoKyThuat>(entity =>
            {
                entity.HasKey(e => e.MaThongSo);

                entity.Property(e => e.MaThongSo).ValueGeneratedNever();

                entity.Property(e => e.MoTa).HasMaxLength(500);

                entity.Property(e => e.TenThongSo).HasMaxLength(150);

              
            });

            OnModelCreatingPartial(modelBuilder);
        }

        partial void OnModelCreatingPartial(ModelBuilder modelBuilder);
    }
}
