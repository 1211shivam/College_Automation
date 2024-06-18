using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Net.Mail;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace Preskool.User1
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["Constr"].ConnectionString);
        SqlCommand cmd = new SqlCommand();
        string qry;
        string uname, umob, uemail, upass;
        string fname;
        SqlDataReader dr;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        

        protected void btn_next_Click1(object sender, EventArgs e)
        {
            


            //cn.Open();
            //qry = "CrudUser";
            //cmd = new SqlCommand(qry, cn);
            //cmd.CommandType = System.Data.CommandType.StoredProcedure;
            //cmd.Parameters.AddWithValue("@action", "Insert");
            //cmd.Parameters.AddWithValue("@uname", txt_uname.Text);
            //cmd.Parameters.AddWithValue("@umob", txt_umob.Text);
            //cmd.Parameters.AddWithValue("@uemail", txt_uemail.Text);
            //cmd.Parameters.AddWithValue("@upass", txt_upass.Text);
            ////cmd.Parameters.AddWithValue("@ucourse", ddl_UCourse.SelectedValue);
            ////cmd.Parameters.AddWithValue("@usem", ddl_USemester.SelectedValue);
            //cmd.Parameters.AddWithValue("@uimg", FileUpload1.FileName);
            //cmd.Parameters.AddWithValue("@otp", randomcode);
            //cmd.Parameters.AddWithValue("@verify", 0);
            //cmd.ExecuteNonQuery();
            //cn.Close();

            //if (FileUpload1.HasFile)
            //{
            //    if (FileUpload1.PostedFile.ContentType == "image/jpeg")
            //    {
            //        if (FileUpload1.PostedFile.ContentLength < 50000000)
            //        {
            //            fname = FileUpload1.FileName;
            //            FileUpload1.SaveAs(Server.MapPath("~/User/User image/" + fname));
            //            //Image1.ImageUrl = "~/Faculty/Faculty image/" + FileUpload1.FileName;
            //            lbl_disp.Text = "Your Data has been Stored...!";
            //        }
            //        else
            //        {
            //            lbl_disp.Text = "file is too large..!";
            //        }
            //    }
            //    else
            //    {
            //        lbl_disp.Text = "please select only image file..!";
            //    }
            //}
            //else
            //{
            //    lbl_disp.Text = "please select file...!";
            //}


            cn.Open();
            qry = "select * from user_mstr where uemail='" + txt_uemail.Text + "'";
            cmd = new SqlCommand(qry, cn);
            dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                dr.Read();
                lbl_disp.Text = "This User is Alredy exists With this Email ID ";
            }
            else
            {

                Session["uname"] = txt_uname.Text;

                String randomcode;
                Random rand = new Random();
                randomcode = (rand.Next(99999)).ToString();


                MailMessage mail = new MailMessage();
                string mailid = txt_uemail.Text;
                mail.To.Add(mailid);
                mail.From = new MailAddress("dream.college01@gmail.com");
                mail.Subject = "Registration";
                //string Body = "HI, Harnish Here..!" + randomcode;
                //mail.Body = Body;
                mail.Body = "<!DOCTYPE html PUBLIC '-//W3C//DTD XHTML 1.0 Transitional//EN' 'http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd'> <html xmlns='http://www.w3.org/1999/xhtml' xmlns:o='urn:schemas-microsoft-com:office:office'> <head> <meta charset='UTF-8'> <meta content='width=device-width, initial-scale=1' name='viewport'> <meta name='x-apple-disable-message-reformatting'> <meta http-equiv='X-UA-Compatible' content='IE=edge'> <meta content='telephone=no' name='format-detection'> <title></title> <link href='https://fonts.googleapis.com/css?family=Oswald:300,700&display=swap' rel='stylesheet'> <style> /* CONFIG STYLES Please do not delete and edit CSS styles below / / IMPORTANT THIS STYLES MUST BE ON FINAL EMAIL / #outlook a { padding: 0; } .ExternalClass { width: 100%; } .ExternalClass, .ExternalClass p, .ExternalClass span, .ExternalClass font, .ExternalClass td, .ExternalClass div { line-height: 100%; } .es-button { text-decoration: none !important; } a[x-apple-data-detectors] { color: inherit !important; text-decoration: none !important; font-size: inherit !important; font-family: inherit !important; font-weight: inherit !important; line-height: inherit !important; } .es-desk-hidden { display: none; float: left; overflow: hidden; width: 0; max-height: 0; line-height: 0; } [data-ogsb] .es-button { border-width: 0 !important; padding: 25px 40px 25px 40px !important; } / END OF IMPORTANT / html, body { width: 100%; -webkit-text-size-adjust: 100%; -ms-text-size-adjust: 100%; } body { font-family: 'Open Sans', sans-serif; } table { border-collapse: collapse; border-spacing: 0px; } table td, html, body, .es-wrapper { padding: 0; Margin: 0; } .es-content, .es-header, .es-footer { table-layout: fixed !important; width: 100%; } img { display: block; border: 0; outline: none; text-decoration: none; -ms-interpolation-mode: bicubic; } table tr { border-collapse: collapse; } p, hr { Margin: 0; } h1, h2, h3, h4, h5 { Margin: 0; line-height: 120%; font-family: Oswald, sans-serif; } p, ul li, ol li, a { -webkit-text-size-adjust: none; -ms-text-size-adjust: none; } .es-left { float: left; } .es-right { float: right; } .es-p5 { padding: 5px; } .es-p5t { padding-top: 5px; } .es-p5b { padding-bottom: 5px; } .es-p5l { padding-left: 5px; } .es-p5r { padding-right: 5px; } .es-p10 { padding: 10px; } .es-p10t { padding-top: 10px; } .es-p10b { padding-bottom: 10px; } .es-p10l { padding-left: 10px; } .es-p10r { padding-right: 10px; } .es-p15 { padding: 15px; } .es-p15t { padding-top: 15px; } .es-p15b { padding-bottom: 15px; } .es-p15l { padding-left: 15px; } .es-p15r { padding-right: 15px; } .es-p20 { padding: 20px; } .es-p20t { padding-top: 20px; } .es-p20b { padding-bottom: 20px; } .es-p20l { padding-left: 20px; } .es-p20r { padding-right: 20px; } .es-p25 { padding: 25px; } .es-p25t { padding-top: 25px; } .es-p25b { padding-bottom: 25px; } .es-p25l { padding-left: 25px; } .es-p25r { padding-right: 25px; } .es-p30 { padding: 30px; } .es-p30t { padding-top: 30px; } .es-p30b { padding-bottom: 30px; } .es-p30l { padding-left: 30px; } .es-p30r { padding-right: 30px; } .es-p35 { padding: 35px; } .es-p35t { padding-top: 35px; } .es-p35b { padding-bottom: 35px; } .es-p35l { padding-left: 35px; } .es-p35r { padding-right: 35px; } .es-p40 { padding: 40px; } .es-p40t { padding-top: 40px; } .es-p40b { padding-bottom: 40px; } .es-p40l { padding-left: 40px; } .es-p40r { padding-right: 40px; } .es-menu td { border: 0; } .es-menu td a img { display: inline-block !important; } / END CONFIG STYLES */ a { text-decoration: underline; } p, ul li, ol li { font-family: 'Open Sans', sans-serif; line-height: 150%; } ul li, ol li { Margin-bottom: 15px; margin-left: 0; } .es-menu td a { text-decoration: none; display: block; font-family: 'Open Sans', sans-serif; } .es-wrapper { width: 100%; height: 100%; background-repeat: repeat; background-position: center top; } .es-wrapper-color, .es-wrapper { background-color: #f5f5f5; } .es-header { background-color: #1b2a2f; background-repeat: repeat; background-position: center top; } .es-header-body { background-color: #1b2a2f; } .es-header-body p, .es-header-body ul li, .es-header-body ol li { color: #bcbdbd; font-size: 14px; } .es-header-body a { color: #ef0d33; font-size: 14px; } .es-content-body { background-color: #f5f5f5; } .es-content-body p, .es-content-body ul li, .es-content-body ol li { color: #262626; font-size: 14px; } .es-content-body a { color: #ef0d33; font-size: 14px; } .es-footer { background-color: #111517; background-repeat: repeat; background-position: center top; } .es-footer-body { background-color: #111517; } .es-footer-body p, .es-footer-body ul li, .es-footer-body ol li { color: #bcbdbd; font-size: 12px; } .es-footer-body a { color: #ef0d33; font-size: 12px; } .es-infoblock, .es-infoblock p, .es-infoblock ul li, .es-infoblock ol li { line-height: 120%; font-size: 16px; color: #ffffff; } .es-infoblock a { font-size: 16px; color: #ffffff; } h1 { font-size: 28px; font-style: normal; font-weight: bold; color: #262626; } h2 { font-size: 20px; font-style: normal; font-weight: bold; color: #262626; } h3 { font-size: 14px; font-style: normal; font-weight: bold; color: #888888; letter-spacing: 0px; } .es-header-body h1 a, .es-content-body h1 a, .es-footer-body h1 a { font-size: 28px; } .es-header-body h2 a, .es-content-body h2 a, .es-footer-body h2 a { font-size: 20px; } .es-header-body h3 a, .es-content-body h3 a, .es-footer-body h3 a { font-size: 14px; } a.es-button, button.es-button { border-style: solid; border-color: #1b2a2f; border-width: 25px 40px 25px 40px; display: inline-block; background: #1b2a2f; border-radius: 0px; font-size: 12px; font-family: Oswald, sans-serif; font-weight: bold; font-style: normal; line-height: 120%; color: #ffffff; text-decoration: none; width: auto; text-align: center; } .es-button-border { border-style: solid solid solid solid; border-color: #1b2a2f #1b2a2f #1b2a2f #1b2a2f; background: #1b2a2f; border-width: 0px 0px 0px 0px; display: inline-block; border-radius: 0px; width: auto; } @media only screen and (max-width: 600px) { p, ul li, ol li, a { line-height: 150% !important; } h1, h2, h3, h1 a, h2 a, h3 a { line-height: 120%; } h1 { font-size: 28px !important; text-align: left; } h2 { font-size: 20px !important; text-align: left; } h3 { font-size: 14px !important; text-align: left; } h1 a { text-align: left; } .es-header-body h1 a, .es-content-body h1 a, .es-footer-body h1 a { font-size: 28px !important; } h2 a { text-align: left; } .es-header-body h2 a, .es-content-body h2 a, .es-footer-body h2 a { font-size: 20px !important; } h3 a { text-align: left; } .es-header-body h3 a, .es-content-body h3 a, .es-footer-body h3 a { font-size: 14px !important; } .es-menu td a { font-size: 14px !important; } .es-header-body p, .es-header-body ul li, .es-header-body ol li, .es-header-body a { font-size: 14px !important; } .es-content-body p, .es-content-body ul li, .es-content-body ol li, .es-content-body a { font-size: 14px !important; } .es-footer-body p, .es-footer-body ul li, .es-footer-body ol li, .es-footer-body a { font-size: 14px !important; } .es-infoblock p, .es-infoblock ul li, .es-infoblock ol li, .es-infoblock a { font-size: 14px !important; } *[class='gmail-fix'] { display: none !important; } .es-m-txt-c, .es-m-txt-c h1, .es-m-txt-c h2, .es-m-txt-c h3 { text-align: center !important; } .es-m-txt-r, .es-m-txt-r h1, .es-m-txt-r h2, .es-m-txt-r h3 { text-align: right !important; } .es-m-txt-l, .es-m-txt-l h1, .es-m-txt-l h2, .es-m-txt-l h3 { text-align: left !important; } .es-m-txt-r img, .es-m-txt-c img, .es-m-txt-l img { display: inline !important; } .es-button-border { display: block !important; } a.es-button, button.es-button { font-size: 14px !important; display: block !important; border-bottom-width: 20px !important; border-right-width: 0px !important; border-left-width: 0px !important; border-top-width: 20px !important; } .es-btn-fw { border-width: 10px 0px !important; text-align: center !important; } .es-adaptive table, .es-btn-fw, .es-btn-fw-brdr, .es-left, .es-right { width: 100% !important; } .es-content table, .es-header table, .es-footer table, .es-content, .es-footer, .es-header { width: 100% !important; max-width: 600px !important; } .es-adapt-td { display: block !important; width: 100% !important; } .adapt-img { width: 100% !important; height: auto !important; } .es-m-p0 { padding: 0px !important; } .es-m-p0r { padding-right: 0px !important; } .es-m-p0l { padding-left: 0px !important; } .es-m-p0t { padding-top: 0px !important; } .es-m-p0b { padding-bottom: 0 !important; } .es-m-p20b { padding-bottom: 20px !important; } .es-mobile-hidden, .es-hidden { display: none !important; } tr.es-desk-hidden, td.es-desk-hidden, table.es-desk-hidden { width: auto !important; overflow: visible !important; float: none !important; max-height: inherit !important; line-height: inherit !important; } tr.es-desk-hidden { display: table-row !important; } table.es-desk-hidden { display: table !important; } td.es-desk-menu-hidden { display: table-cell !important; } table.es-table-not-adapt, .esd-block-html table { width: auto !important; } table.es-social { display: inline-block !important; } table.es-social td { display: inline-block !important; } .es-desk-hidden { display: table-row !important; width: auto !important; overflow: visible !important; max-height: inherit !important; } } .es-p-default { padding-top: 20px; padding-right: 10px; padding-bottom: 20px; padding-left: 10px; } .es-p-all-default { padding: 0px; } .auto-style2 {color: #FFFFFF;} </style> </head> <body> <div class='es-wrapper-color'> <table class='es-wrapper' width='100%' cellspacing='0' cellpadding='0'> <tbody> <tr> <td class='esd-email-paddings' valign='top'> <table cellpadding='0' cellspacing='0' class='es-content' align='center'> <tbody> <tr> <td class='esd-stripe' align='center' esd-custom-block-id='89424'> <table bgcolor='#ffffff' class='es-content-body' align='center' cellpadding='0' cellspacing='0' width='600'> <tbody> <tr> <td class='esd-structure es-p40t es-p40b es-p10r es-p10l' align='left' esd-custom-block-id='82631'> <table cellpadding='0' cellspacing='0' width='100%'> <tbody> <tr> <td width='580' class='esd-container-frame' align='center' valign='top'> <table cellpadding='0' cellspacing='0' width='100%'> <tbody> <tr> <td align='center' class='esd-block-text es-p40b es-m-txt-c'> <h1>WELCOME!</h1> </td> </tr> <tr> <td align='left' class='esd-block-text'> <p style='font-size: 20px;'>Your One Time Password is below</p> </td> </tr> <tr> <td align='center' class='esd-block-button es-p40t es-p40b es-m-txt-c'>Your OTP Is : " + randomcode + " </td> </tr> <tr> <td align='left' class='esd-block-text es-p20b'> <p>From</p> <p style='font-size: 20px;'><strong>College Automation</strong></p> </td> </tr> </tbody> </table> </td> </tr> </tbody> </table> </td> </tr> </tbody> </table> </td> </tr> </tbody> </table> </td> </tr> </tbody> </table> </div></body> </html>";
                mail.IsBodyHtml = true;

                SmtpClient smtp = new SmtpClient();

                smtp.Host = "smtp.gmail.com";
                smtp.Credentials = new System.Net.NetworkCredential("dream.college01@gmail.com", "koaalflhjghyajtv");
                smtp.Port = 587;
                smtp.EnableSsl = true;
                smtp.Send(mail);

                cn.Close();
                cn.Open();
                qry = "CrudUser";
                cmd = new SqlCommand(qry, cn);
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@action", "Insert");
                cmd.Parameters.AddWithValue("@uname", txt_uname.Text);
                cmd.Parameters.AddWithValue("@umob", txt_umob.Text);
                cmd.Parameters.AddWithValue("@uemail", txt_uemail.Text);
                cmd.Parameters.AddWithValue("@upass", txt_upass.Text);
                //cmd.Parameters.AddWithValue("@ucourse", ddl_UCourse.SelectedValue);
                //cmd.Parameters.AddWithValue("@usem", ddl_USemester.SelectedValue);
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
            cn.Close();

        }
    }
}