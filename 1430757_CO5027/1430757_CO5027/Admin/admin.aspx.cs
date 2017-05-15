using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _1430757_CO5027
{
    public partial class admin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        

        protected void gvLP_RowEditing(object sender, GridViewEditEventArgs e)
        {
         
        }

        protected void gvLP_RowEditing1(object sender, GridViewEditEventArgs e)
        {
            //Get selected row
            GridViewRow row = gvLP.Rows[e.NewEditIndex];

            //Get Id of selected product
            int rowId = Convert.ToInt32(row.Cells[1].Text);

            //Redirect user to ManageProducts along with the selected rowId
            Response.Redirect("~/Admin/ManageLP.aspx?id=" + rowId);
        }
    }
}