﻿using _1430757_CO5027.Models;
using Microsoft.AspNet.Identity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace _1430757_CO5027
{
    public partial class done : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            List<tblPurchase> carts = (List<tblPurchase>)Session[User.Identity.GetUserId()];

            PurchaseModel model = new PurchaseModel();
            model.MOAPaid(carts);

            Session[User.Identity.GetUserId()] = null;
        }
    }
}