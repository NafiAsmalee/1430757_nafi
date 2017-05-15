using _1430757_CO5027.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _1430757_CO5027
{
    public partial class product : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            fillpage();
        }
        private void fillpage()
        {
            LPModel m = new LPModel();
            List<tblProduct> p = m.GetAllProducts();

            if (p != null)
            {
                foreach (tblProduct product in p)
                {
                    Panel productPanel = new Panel();
                    ImageButton imageButton = new ImageButton
                    {
                        ImageUrl = "~/Images/" + product.LP_image,
                        CssClass = "LaptopImage",
                        PostBackUrl = string.Format("~/Laptop.aspx?ID={0}", product.ID)
                    };
                    Label lblName = new Label
                    {
                        Text = product.LP_name,
                        CssClass = "LaptopName"
                    };
                    Label lblPrice = new Label
                    {
                        Text = "$ " + product.LP_price,
                        CssClass = "LaptopPrice"
                    };

                    productPanel.Controls.Add(imageButton);
                    productPanel.Controls.Add(new Literal { Text = "<hr/>" });
                    productPanel.Controls.Add(lblName);
                    productPanel.Controls.Add(new Literal { Text = "<hr/>" });
                    productPanel.Controls.Add(lblPrice);

                    //Add dynamic controls to static control
                    pnlLaptop.Controls.Add(productPanel);
                }
            }
            else
                pnlLaptop.Controls.Add(new Literal { Text = "No Laptop found!" });

        }
    }
}
    
