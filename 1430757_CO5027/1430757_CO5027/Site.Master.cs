using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.AspNet.Identity;

using Microsoft.Owin.Security;
using _1430757_CO5027.Models;


 //Retrieve from https://www.youtube.com/watch?v=mBrxQQJdoHM
 //Retrieve from https://www.youtube.com/watch?v=67fW_kNLghc


namespace _1430757_CO5027
{
    public partial class Site : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            var u = Context.User.Identity;
            if (u.IsAuthenticated)
            {
                lnkSignIn.Visible = false;
                lnkSignUp.Visible = false;

                Status.Visible = true;
                btnSignOut.Visible = true;

                
                PurchaseModel model = new PurchaseModel();
                string userId = HttpContext.Current.User.Identity.GetUserId();
                Status.Text = string.Format("{0} ({1})", Context.User.Identity.Name, model.GAOrder(userId));
            }
            else
            {
                lnkSignIn.Visible = true;
                lnkSignUp.Visible = true;

                Status.Visible = false;
                btnSignOut.Visible = false;
            }
        }

        protected void lnkSignOut_Click(object sender, EventArgs e)
        {
            IAuthenticationManager authenticationManager = HttpContext.Current.GetOwinContext().Authentication;
            authenticationManager.SignOut();
            Response.Redirect("/User/login.aspx");
        }
    }
}