using BanQuanAoAPI.Services;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using BanQuanAoAPI.Models;
using System.Linq;

namespace BanQuanAoAPI.Controllers
{
    [Authorize]
    [ApiController]
    [Route("api/[controller]")]
    public class LoginController : Controller
    {
        BanQuanAoContext db = new BanQuanAoContext();
            private IUserService _userService;
            public LoginController(IUserService userService)
            {
                _userService = userService;
            }
            [AllowAnonymous]
            [HttpPost("authenticate")]
            public IActionResult Authenticate([FromBody] AuthenticateModel model)
            {
                var user = _userService.Authenticate(model.Username, model.Password);
                if (user == null)
                    return BadRequest(new { message = "not correct!" });
                return Ok(user);
            }
       


    }
    }

