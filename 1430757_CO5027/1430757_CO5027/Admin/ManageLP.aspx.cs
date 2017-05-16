using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Collections;
using System.IO;
using _1430757_CO5027.Models;

//Retrieve from https://www.youtube.com/watch?v=BKujvivVFKI 
//Retrieve from https://www.youtube.com/watch?v=hkiYuPBwnkQ

namespace _1430757_CO5027
{
    public partial class ManageLP : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
                GetImg();
            //Check url if its contains an ID parameter
            if (!String.IsNullOrWhiteSpace(Request.QueryString["ID"]))
            {
                int id = Convert.ToInt32(Request.QueryString["ID"]);
                FillWebPage(id);
            }
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {

            LPModel product = new LPModel();
            tblProduct p = CreateLaptop();

            //Check url if its contains an ID parameter
            if (!String.IsNullOrWhiteSpace(Request.QueryString["ID"]))
            {
                //if ID exists can edit and Update row
                int ID = Convert.ToInt32(Request.QueryString["ID"]);
                lblDesc.Text = product.UpdateLaptop(ID, p);
            }
            else
            {
                //if ID not exist then Create a new row
                lblDesc.Text = product.InsertLaptop(p);
            }
        }

        private void FillWebPage(int ID)
        {
            //selected Laptop from DB
            LPModel productModel = new LPModel();
            tblProduct product = productModel.GetProduct(ID);

            //Fill in the Textbox
            txtDes.Text = product.LP_desc;
            txtNm.Text = product.LP_name;
            txtPrc.Text = product.LP_price.ToString();

            //Set the values of drop down list
            ddlImg.SelectedValue = product.LP_image;
            ddlTyp.SelectedValue = product.Type_ID.ToString();
        }

        private void GetImg()
        {
            try
            {
                //the image filepaths
                string[] imgs = Directory.GetFiles(Server.MapPath("~/Images/"));

                //the filenames and add to an arraylist
                ArrayList imgList = new ArrayList();
                foreach (string img in imgs)
                {
                    string imageName = img.Substring(img.LastIndexOf(@"\", StringComparison.Ordinal) + 1);
                    imgList.Add(imageName);
                }

                //Set the arrayList as the dropdownview's datasource and refresh
                ddlImg.DataSource = imgList;
                ddlImg.AppendDataBoundItems = true;
                ddlImg.DataBind();
            }
            catch (Exception e)
            {
                lblDesc.Text = e.ToString();
            }
        }

        private tblProduct CreateLaptop()
        {
            tblProduct product = new tblProduct();

            product.LP_name = txtNm.Text;
            product.LP_price = Convert.ToInt32(txtPrc.Text);
            product.Type_ID = Convert.ToInt32(ddlTyp.SelectedValue);
            product.LP_desc = txtDes.Text;
            product.LP_image = ddlImg.SelectedValue;

            return product;
        }

      
    }
}