using System;
using System.Web;
using System.Web.UI;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;
using Microsoft.Owin.Security;

namespace _1430757_CO5027.User
{
    public partial class Signin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSignIn_OnClick(object sender, EventArgs e)
        {
            UserStore<IdentityUser> userStore = new UserStore<IdentityUser>();

            userStore.Context.Database.Connection.ConnectionString =
                System.Configuration.ConfigurationManager.
                ConnectionStrings["db_1430757_co5027_naftechConnectionString"].ConnectionString;

            UserManager<IdentityUser> manager = new UserManager<IdentityUser>(userStore);

            var user = manager.Find(txtUname.Text, txtPword.Text);

            if (user != null)
            {
                //Call OWIN functionality
                var authenticationManager = HttpContext.Current.GetOwinContext().Authentication;
                var userIdentity = manager.CreateIdentity(user, DefaultAuthenticationTypes.ApplicationCookie);

                //Sign in user
                authenticationManager.SignIn(new AuthenticationProperties
                {
                    IsPersistent = false
                }, userIdentity);

                //Redirect user to homepage
                Response.Redirect("~/default.aspx");
            }
            else
            {
                //litStatus.Text = "Incorrect username or password";
            }
        }
    
    }
}