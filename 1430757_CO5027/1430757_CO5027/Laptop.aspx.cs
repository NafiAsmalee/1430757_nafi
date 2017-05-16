using _1430757_CO5027.Models;
using Microsoft.AspNet.Identity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

//Retrieve from https://www.youtube.com/watch?v=SFDQ6Lkp8Ec
//Retrieve from https://www.youtube.com/watch?v=mBrxQQJdoHM


namespace _1430757_CO5027.Web_Form.Product
{
    public partial class Laptop : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            fPage();
        }

        protected void btnAddCart_Click(object sender, EventArgs e)
        {
            if (!string.IsNullOrWhiteSpace(Request.QueryString["ID"]))
            {
                string custID = Context.User.Identity.GetUserId();
                if (custID != null)
                {
                    int ID = Convert.ToInt32(Request.QueryString["ID"]);
                    int Quantity = Convert.ToInt32(ddlQuantity.SelectedValue);

                    tblPurchase cart = new tblPurchase
                    {
                        LP_price = Quantity,
                        cust_ID = custID,
                        LP_date = DateTime.Now,
                        in_Cart = true,
                        LP_ID = ID
                    };

                    PurchaseModel m = new PurchaseModel();
                    lblAction.Text = m.InsertPurchase(cart);
                }
                else
                {
                    lblAction.Text = "Please Signin to order Laptop!";
                }
            }
        }
        private void fPage()
        {
            //select laptop data
            if (!string.IsNullOrWhiteSpace(Request.QueryString["ID"]))
            {
                int ID = Convert.ToInt32(Request.QueryString["ID"]);
                LPModel model = new LPModel();
                tblProduct product = model.GetProduct(ID);

                //Fill page with data
                lblTitle.Text = product.LP_name;
                lblDesc.Text = product.LP_desc;
                lblPrice.Text = "Price per Item: $ " + product.LP_price;
                imgLaptop.ImageUrl = "~/Images/" + product.LP_image;
                lblProNo.Text = product.ID.ToString();

                //Fill quantity with numbers 1-20
                int[] amount = Enumerable.Range(1, 20).ToArray();
                ddlQuantity.DataSource = amount;
                ddlQuantity.AppendDataBoundItems = true;
                ddlQuantity.DataBind();
            }
        }
    }
}