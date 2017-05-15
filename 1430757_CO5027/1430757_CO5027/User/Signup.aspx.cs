using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;
using Microsoft.Owin.Security;
using _1430757_CO5027.Models;

namespace _1430757_CO5027.User
{
    public partial class Signup : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSignUp_Click(object sender, EventArgs e)
        {
            // Default UserStore constructor uses the default connection string named: DefaultConnection
            var userStore = new UserStore<IdentityUser>();

            //Set ConnectionString to GarageConnectionString
            userStore.Context.Database.Connection.ConnectionString =
                System.Configuration.ConfigurationManager.ConnectionStrings["db_1430757_co5027_naftechConnectionString"].ConnectionString;
            var manager = new UserManager<IdentityUser>(userStore);

            //Create new user and try to store in DB.
            var user = new IdentityUser { UserName = txtUname.Text };

            if (txtPword.Text == txtCPword.Text)
            {
                try
                {
                    IdentityResult result = manager.Create(user, txtPword.Text);
                    if (result.Succeeded)
                    {
                        tblUser userDetail = new tblUser
                        {
                            LP_address = txtAdd.Text,
                            LP_FName = txtFname.Text,
                            LP_LName = txtLname.Text,
                            GU_ID = user.Id,
                            LP_PCode = Convert.ToInt32(txtPcode.Text)
                        };

                        UserModel model = new UserModel();
                        model.InsertUserDetail(userDetail);

                        //Store user in DB
                        var authenticationManager = HttpContext.Current.GetOwinContext().Authentication;
                        var userIdentity = manager.CreateIdentity(user, DefaultAuthenticationTypes.ApplicationCookie);

                        //If succeedeed, log in the new user and set a cookie and redirect to homepage
                        authenticationManager.SignIn(new AuthenticationProperties(), userIdentity);
                        Response.Redirect("~/default.aspx");
                    }
                    else
                    {
                        litStatMsg.Text = result.Errors.FirstOrDefault();
                    }
                }
                catch (Exception ex)
                {
                    litStatMsg.Text = ex.ToString();
                }
            }
            else
            {
                litStatMsg.Text = "Passwords must match!";
            }
        }
    }
}