using System.ComponentModel.DataAnnotations;

namespace BanQuanAoAPI.Services
{
    public class AuthenticateModel
    {
        [Required]
        public string Username { get; set; }

        [Required]
        public string Password { get; set; }
    }
}
