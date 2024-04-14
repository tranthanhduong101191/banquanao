using BanQuanAoAPI.Models;
using BanQuanAoAPI.helper;
using System.IdentityModel.Tokens.Jwt;
using BanQuanAoAPI.Entities;
using Microsoft.IdentityModel.Tokens;
using System.Text;
using Microsoft.Extensions.Options;
using System.Security.Claims;
using System;
using System.Linq;
using System.Data;
namespace BanQuanAoAPI.Services
{
    public interface IUserService
    {
        Users Authenticate(string username, string password);
    }
    public class UserService : IUserService
    {
        public UserService(IOptions<AppSettings> appSettings)
        {
            _appSettings = appSettings.Value;
        }
        BanQuanAoContext db = new BanQuanAoContext();
        private readonly AppSettings _appSettings;

        public Users Authenticate(string username, string pass)
        {
            var result = from t in db.TaiKhoan
                         join n in db.NguoiDung on t.MaNguoiDung equals n.MaNguoiDung
                         select new Users { Role = t.LoaiQuyet, MaNguoiDung = t.MaNguoiDung, TaiKhoan = t.TaiKhoan1, HoTen = n.HoTen, MatKhau = t.MatKhau, DiaChi = n.DiaChi, DienThoai = n.DienThoai, Email = n.DienThoai };
            var user = result.SingleOrDefault(x => x.TaiKhoan == username && x.MatKhau == pass);
            if (user ==null)
            {
                return null;
            }
            var tokenHandler = new JwtSecurityTokenHandler();
            var key = Encoding.ASCII.GetBytes(_appSettings.Secret);
            var tokenDescriptor = new SecurityTokenDescriptor
            {
                Subject = new ClaimsIdentity(new Claim[]
                 {
                    new Claim(ClaimTypes.NameIdentifier, user.TaiKhoan.ToString()),
                    new Claim(ClaimTypes.MobilePhone, user.DienThoai.ToString()),
                    new Claim(ClaimTypes.Email, user.Email.ToString())
                 }),
                Expires = DateTime.UtcNow.AddDays(7),
                SigningCredentials = new SigningCredentials(new SymmetricSecurityKey(key), SecurityAlgorithms.HmacSha256Signature)
            };
            var token = tokenHandler.CreateToken(tokenDescriptor);
            user.Token = tokenHandler.WriteToken(token);
            return user.WithoutPassword();
        }
    }
   
}
