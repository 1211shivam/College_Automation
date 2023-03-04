using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Preskool.User1
{
    public partial class SignUp1 : System.Web.UI.Page
    {
        SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["Constr"].ConnectionString);
        SqlCommand cmd = new SqlCommand();
        string qry;
        string uname, umob, uemail, upass;
        string fname;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_submit_Click(object sender, EventArgs e)
        {
            String randomcode;
            Random rand = new Random();
            randomcode = (rand.Next(99999)).ToString();


            MailMessage mail = new MailMessage();
            string mailid = Session["uemail"].ToString();
            mail.To.Add(mailid);
            mail.From = new MailAddress("harnish.dhimar@gmail.com");
            mail.Subject = "Registration";
            string Body = "HI, Harnish Here..!" + randomcode;
            mail.Body = Body;
            mail.IsBodyHtml = true;

            SmtpClient smtp = new SmtpClient();

            smtp.Host = "smtp.gmail.com";
            smtp.Credentials = new System.Net.NetworkCredential("harnish.dhimar@gmail.com", "flpignqjeunasvwg");
            smtp.Port = 587;
            smtp.EnableSsl = true;
            smtp.Send(mail);

            uname = Session["uname"].ToString();
            umob = Session["umob"].ToString();
            uemail = Session["uemail"].ToString();
            upass = Session["upass"].ToString();
            cn.Open();
            qry = "CrudUser";
            cmd = new SqlCommand(qry, cn);
            cmd.CommandType = System.Data.CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@action", "Insert");
            cmd.Parameters.AddWithValue("@uname", uname);
            cmd.Parameters.AddWithValue("@umob", umob);
            cmd.Parameters.AddWithValue("@uemail", uemail);
            cmd.Parameters.AddWithValue("@upass", upass);
            cmd.Parameters.AddWithValue("@ucourse", ddl_UCourse.SelectedValue);
            cmd.Parameters.AddWithValue("@usem", ddl_USemester.SelectedValue);
            cmd.Parameters.AddWithValue("@uimg", FileUpload1.FileName);
            cmd.Parameters.AddWithValue("@otp", randomcode);
            cmd.Parameters.AddWithValue("@verify", 0);
            cmd.ExecuteNonQuery();
            cn.Close();

            if (FileUpload1.HasFile)
            {
                if (FileUpload1.PostedFile.ContentType == "image/jpeg")
                {
                    if (FileUpload1.PostedFile.ContentLength < 50000000)
                    {
                        fname = FileUpload1.FileName;
                        FileUpload1.SaveAs(Server.MapPath("~/User/User image/" + fname));
                        //Image1.ImageUrl = "~/Faculty/Faculty image/" + FileUpload1.FileName;
                        lbl_disp.Text = "Your Data has been Stored...!";
                    }
                    else
                    {
                        lbl_disp.Text = "file is too large..!";
                    }
                }
                else
                {
                    lbl_disp.Text = "please select only image file..!";
                }
            }
            else
            {
                lbl_disp.Text = "please select file...!";
            }
        }

        
       
    }
}