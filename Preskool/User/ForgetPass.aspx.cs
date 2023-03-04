using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Preskool.User
{
    public partial class ForgetPass : System.Web.UI.Page
    {
        SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["Constr"].ConnectionString);
        SqlCommand cmd = new SqlCommand();
        string qry;
        SqlDataReader dr;
        
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_submit_Click(object sender, EventArgs e)
        {
            cn.Open();
            qry = "CrudUser";
            cmd = new SqlCommand(qry, cn);
            cmd.CommandType = System.Data.CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@action", "ForgetPass");
            cmd.Parameters.AddWithValue("@uemail", txt_uemail.Text);
            dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                dr.Read();
                MailMessage mail = new MailMessage();
                string mailid = txt_uemail.Text;
                mail.To.Add(mailid);
                mail.From = new MailAddress("harnish.dhimar@gmail.com");
                mail.Subject = "Registration";
                string Body = "HI, Password Is.." + dr["upass"].ToString();
                mail.Body = Body;
                mail.IsBodyHtml = true;

                SmtpClient smtp = new SmtpClient();

                smtp.Host = "smtp.gmail.com";
                smtp.Credentials = new System.Net.NetworkCredential("harnish.dhimar@gmail.com", "flpignqjeunasvwg");
                smtp.Port = 587;
                smtp.EnableSsl = true;
                smtp.Send(mail);

                lbl_disp.Text = "Your Password has been sent successfully on your email address..!";
            }
            cn.Close();
        }
    }
}