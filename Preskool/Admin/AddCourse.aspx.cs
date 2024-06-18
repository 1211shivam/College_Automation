using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Reflection.Emit;
using System.Xml.Linq;

namespace Preskool.Admin
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["Constr"].ConnectionString);
        SqlCommand cmd = new SqlCommand();
        string qry;
        string course_id,fname;
        SqlDataReader dr;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                course_id = Request.QueryString.Get("course_id");
                ViewState["course_id"] = Request.QueryString.Get("course_id");
                if (course_id != null)
                {
                    btn_update.Visible = true;
                    btn_submit.Visible = false;
                    btn_delete.Visible = false;
                    qry = "CrudCourse";
                    cn.Open();
                    cmd = new SqlCommand(qry, cn);
                    cmd.CommandType = System.Data.CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@action", "Search");
                    cmd.Parameters.AddWithValue("@course_id", ViewState["course_id"]);
                    dr = cmd.ExecuteReader();
                    if (dr.HasRows)
                    {
                        dr.Read();
                        txt_cname.Text = dr["cname"].ToString();
                        txt_cdesc.Text = dr["cdesc"].ToString();
                    }
                    cn.Close();
                }
            }
        }

        protected void btn_submit_Click(object sender, EventArgs e)
        {
            cn.Open();
            qry = "select * from course_mstr where cname='" + txt_cname.Text + "'";
            cmd = new SqlCommand(qry, cn);
            dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                dr.Read();
                lbl_disp.Text = "This Course is Alredy exist!";
            }

            else
            {

                cn.Open();
                qry = "CrudCourse";
                cmd = new SqlCommand(qry, cn);
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@action", "Insert");
                cmd.Parameters.AddWithValue("@cname", txt_cname.Text);
                cmd.Parameters.AddWithValue("@cdesc", txt_cdesc.Text);
                cmd.Parameters.AddWithValue("@cimage", FileUpload1.FileName);
                cmd.ExecuteNonQuery();
                cn.Close();
                if (FileUpload1.HasFile)
                {
                    if (FileUpload1.PostedFile.ContentType == "image/jpeg")
                    {
                        if (FileUpload1.PostedFile.ContentLength < 50000000)
                        {
                            fname = FileUpload1.FileName;
                            FileUpload1.SaveAs(Server.MapPath("~/Admin/Course Image/" + fname));
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

        protected void btn_update_Click(object sender, EventArgs e)
        {
            btn_update.Visible = true;
            btn_submit.Visible = false;
            cn.Open();
            qry = "CrudCourse";
            cmd = new SqlCommand(qry, cn);
            cmd.CommandType = System.Data.CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@action", "Update");
            cmd.Parameters.AddWithValue("@course_id", ViewState["course_id"]);
            cmd.Parameters.AddWithValue("@cname", txt_cname.Text);
            cmd.Parameters.AddWithValue("@cdesc", txt_cdesc.Text);
            cmd.Parameters.AddWithValue("@cimage", FileUpload1.FileName);
            cmd.ExecuteNonQuery();
            cn.Close();
            Response.Redirect("../Admin/DispCourse.aspx");
        }

        protected void btn_cancel_Click(object sender, EventArgs e)
        {
            clear();
        }
        void clear()
        {
            foreach (object control in form1.Controls)
            {
                if (control is TextBox)
                {
                    ((TextBox)control).Text = "";
                }

            }

        }
    }
}