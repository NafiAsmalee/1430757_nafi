using System;
using System.Threading.Tasks;
using Microsoft.Owin;
using Owin;
using Microsoft.AspNet.Identity;
using Microsoft.Owin.Security.Cookies;

//Retrieve from https://www.youtube.com/watch?v=mBrxQQJdoHM

[assembly: OwinStartup(typeof(_1430757_CO5027.Startup))]

namespace _1430757_CO5027
{
    public class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            app.UseCookieAuthentication(new CookieAuthenticationOptions
            {
                AuthenticationType = DefaultAuthenticationTypes.ApplicationCookie,
                LoginPath = new PathString("/User/login.aspx")
            });
        }
    }
}
