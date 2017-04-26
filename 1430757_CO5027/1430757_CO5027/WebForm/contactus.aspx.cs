using System;
using System.Net.Mail;

// Retrieve from https://www.youtube.com/watch?v=ngldKCSXA6U 
// Retrieve from https://www.youtube.com/watch?v=Fw1X7HLZfos 
namespace _1430757_CO5027.WebForm
{
    public partial class contactus : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            try
            {
                if (Page.IsValid)
                {

                    MailMessage MM = new MailMessage();
                    MM.From = new MailAddress(txtEml.Text);
                    MM.To.Add("naftech.30@gmail.com");
                    MM.Subject = txtTpc.Text;

                    MM.Body = "<b>Sender Name : </b>" + txtNm.Text + "<br/>"
                        + "<b>Sender Email : </b>" + txtEml.Text + "<br/>"
                        + "<b>Comments : </b>" + txtCom.Text;
                    MM.IsBodyHtml = true;

                    SmtpClient SC = new SmtpClient("smtp.gmail.com", 587);
                    SC.EnableSsl = true;
                    SC.Credentials = new System.Net.NetworkCredential("naftech.30@gmail.com", "12345630");
                    SC.Send(MM);

                    info.ForeColor = System.Drawing.Color.Blue;
                    info.Text = "Thank you for contacting us";

                    txtNm.Enabled = false;
                    txtEml.Enabled = false;
                    txtCom.Enabled = false;
                    txtTpc.Enabled = false;
                    btnSubmit.Enabled = false;
                }
            }
            catch (Exception ex)
            {
                // Log - Event Viewer or table 
                info.ForeColor = System.Drawing.Color.Blue;
                info.ForeColor = System.Drawing.Color.Red;
                info.Text = "There is an unknown problem";
            }
        }
    }
}