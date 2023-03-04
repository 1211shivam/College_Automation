using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Net.Mail;

namespace Preskool.Faculty
{
    public partial class SignUp1 : System.Web.UI.Page
    {
        SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["Constr"].ConnectionString);
        SqlCommand cmd = new SqlCommand();
        string qry;
        string fac_name, fac_mob, fac_email, fac_pass;
        string fname;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_submit_Click(object sender, EventArgs e)
        {
            fac_name = Session["fac_name"].ToString();
            fac_mob = Session["fac_mob"].ToString();
            fac_email = Session["fac_email"].ToString();
            fac_pass = Session["fac_pass"].ToString();
            cn.Open();
            qry = "CrudFaculty";
            cmd = new SqlCommand(qry, cn);
            cmd.CommandType = System.Data.CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@action", "Insert");
            cmd.Parameters.AddWithValue("@fac_name", fac_name);
            cmd.Parameters.AddWithValue("@fac_mob", fac_mob);
            cmd.Parameters.AddWithValue("@fac_email", fac_email);
            cmd.Parameters.AddWithValue("@fac_pass",fac_pass);
            cmd.Parameters.AddWithValue("@fac_course_id", ddl_course.SelectedValue);
            cmd.Parameters.AddWithValue("@fac_sub_id", ddl_subject.SelectedValue);
            cmd.Parameters.AddWithValue("@fac_posi_id", ddl_position.SelectedValue);
            cmd.Parameters.AddWithValue("@fac_img", FileUpload1.FileName);
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
                        FileUpload1.SaveAs(Server.MapPath("~/Faculty/Faculty image/" + fname));
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