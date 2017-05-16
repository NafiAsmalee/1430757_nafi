using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

//Retrieve from https://www.youtube.com/watch?v=hkiYuPBwnkQ-->

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
            // select -  row
            GridViewRow row = gvLP.Rows[e.NewEditIndex];

            //ID select from product
            int rowId = Convert.ToInt32(row.Cells[1].Text);

            //go to to ManageLP with the selected row
            Response.Redirect("~/Admin/ManageLP.aspx?id=" + rowId);
        }
    }
}