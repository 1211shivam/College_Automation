using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Preskool.User
{
    public partial class Resend : System.Web.UI.Page
    {
        SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["Constr"].ConnectionString);
        SqlCommand cmd = new SqlCommand();
        SqlDataReader dr;
        string qry;
        String uemail;
        protected void Page_Load(object sender, EventArgs e)
        {
            uemail = Session["uemail"].ToString();
            cn.Open();
            qry = "CrudUser";
            cmd = new SqlCommand(qry, cn);
            cmd.CommandType = System.Data.CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@action", "Resend");
            cmd.Parameters.AddWithValue("@uemail", uemail);
            dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                dr.Read();
                MailMessage mail = new MailMessage();
                string mailid = uemail;
                mail.To.Add(mailid);
                mail.From = new MailAddress("harnish.dhimar@gmail.com");
                mail.Subject = "Registration";
                string Body = "HI, Harnish Here..!" + dr["otp"];
                mail.Body = Body;
                mail.IsBodyHtml = true;

                SmtpClient smtp = new SmtpClient();

                smtp.Host = "smtp.gmail.com";
                smtp.Credentials = new System.Net.NetworkCredential("harnish.dhimar@gmail.com", "flpignqjeunasvwg");
                smtp.Port = 587;
                smtp.EnableSsl = true;
                smtp.Send(mail);

            }
            cn.Close();
            Response.Redirect("../User/Verify.aspx");
        }
    }
}