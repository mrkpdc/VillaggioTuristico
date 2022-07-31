using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Logging;
using VillaggioTuristico.Models;
using Microsoft.AspNetCore.Identity;
using VillaggioTuristico.Entities;
using VillaggioTuristico.Commons;
using Microsoft.EntityFrameworkCore;
using Microsoft.AspNetCore.Authorization;
using VillaggioTuristico.DB;


namespace VillaggioTuristico.Controllers
{
    public class HomeController : Controller
    {
        private readonly ILogger<HomeController> logger;
        private readonly Repository repository;
        private SignInManager<User> signInManager;
        private UserManager<User> userManager;
        private UserDBContext dbContext;

        public HomeController(SignInManager<User> signInManager,
            UserManager<User> userManager,
            UserDBContext dbContext,
             Repository repository)
        {
            this.signInManager = signInManager;
            this.userManager = userManager;
            this.dbContext = dbContext;
            this.repository = repository;
        }

        public IActionResult Index()
        {
            return View();
        }
        public IActionResult Camere()
        {
            return View();
        }

        public IActionResult Login()
        {
            return View();
        }

        [Authorize]
        public IActionResult UserPage()
        {
            return View();
        }

        [Authorize]
        public IActionResult AdminPage()
        {
            return View();
        }
        public IActionResult Prenotazione()
        {
            return View();
        }
        
        public IActionResult Registrazione()
        {
            return View();
        }

        // Create User
        [HttpPost("CreateUser")]
        public async Task<IActionResult> CreateUser([FromServices] UserManager<User> userManager, UsersAndRolesViewModel usersViewModel)
        {
            try
            {
                if (ModelState.IsValid)
                {
                    User user = await userManager.FindByEmailAsync(usersViewModel.Email);
                    if (user == null)
                    {
                        user = new User
                        {
                            UserName = usersViewModel.UserName,
                            Email = usersViewModel.Email
                        };
                        IdentityResult result = await userManager.CreateAsync(user, usersViewModel.Password);
                        if (result.Succeeded)
                            return Json("OK");

                        string errors = string.Empty;
                        foreach (IdentityError error in result.Errors)
                            errors += error.Code + ": " + error.Description + "\n";
                        return Json(errors);
                    }
                    else
                        return Json("Email già esistente, riprova.");
                }
            }
            catch (Exception ex)
            {
                logger.LogError(ex, ex.Message);
            }
            return Json("Richiesta non valida.");
        }
        

        // Login
        [HttpPost]
        public async Task<IActionResult> Login(LoginModel loginModel)
        {
            try 
            {
                User user = await userManager.FindByNameAsync(loginModel.UserName);
                if (user != null)
                {
                    var result = await signInManager.PasswordSignInAsync(loginModel.UserName, loginModel.Password, false, lockoutOnFailure: true);
                    if (result.Succeeded)
                    {

                        //if (User.IsInRole("Admin"))
                        //{
                        //    return Redirect("AdminPage");
                        //}
                        //else if (!User.IsInRole("Admin"))
                        //{
                        //    return Redirect("UserPage");
                        //}
                    }
                }
            }
            catch (Exception ex)
            {

            }
            return Redirect("Login");
        }

        // Logout
        [Authorize]
        public async Task<IActionResult> Logout()
        {
            try
            {
                if (signInManager.IsSignedIn(User))
                {
                    await signInManager.SignOutAsync();
                }
            }
            catch (Exception ex)
            {
            }
            return Redirect("Login");
        }

        [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
        public IActionResult Error()
        {
            return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
        }
    }
}
