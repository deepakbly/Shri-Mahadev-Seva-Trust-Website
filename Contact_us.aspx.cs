using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.Net.Mail;

public partial class Contact_us : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            SmtpClient client = new SmtpClient("smtp.gmail.com", 587);
            client.EnableSsl = true;
            client.DeliveryMethod = SmtpDeliveryMethod.Network;
            client.UseDefaultCredentials = false;
            client.Credentials = new NetworkCredential("shrimahadevsevatrust@gmail.com", "shrimahadevsevatrust@1234");
            MailMessage msb = new MailMessage();
            msb.To.Add("shrimahadevsevatrust@gmail.com");
            msb.From = new MailAddress("shrimahadevsevatrust@gmail.com");
            msb.Subject = txtEmail.Text;
            msb.IsBodyHtml = true;
            msb.Body = @"<HTML><head></head><body><table><tr><td>Name :</td><td>" + txtName.Text + "</td></tr><tr><td>Subject :</td><td>" + txtSubject.Text + "</td></tr><tr><td>Email :</td><td>" + txtEmail.Text + "</td></tr><tr><td>Massege :</td><td>" + txtMassege.Text + "</td></tr> </table> </body></html>";

            client.Send(msb);

            ScriptManager.RegisterStartupScript(this, this.GetType(), "popup", "alert('Message has been send successfully')", true);
        }
        catch (Exception ex)
        {
            Response.Write("Couldnot send gmail" + ex.Message);
        }
        txtName.Text = txtEmail.Text = txtMassege.Text = txtSubject.Text = "";
    }
}