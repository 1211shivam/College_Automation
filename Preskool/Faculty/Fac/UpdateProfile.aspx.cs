using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace Preskool.Faculty.Fac
{
    public partial class WebForm11 : System.Web.UI.Page
    {
        SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["Constr"].ConnectionString);
        SqlCommand cmd = new SqlCommand();
        SqlDataReader dr;
        string qry;
        string fac_id,fname;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                fac_id = Session["fac_id"].ToString();
                ViewState["fac_id"] = Session["fac_id"].ToString();
                if (fac_id != null)
                {
                    qry = "CrudFaculty";
                    cn.Open();
                    cmd = new SqlCommand(qry, cn);
                    cmd.CommandType = System.Data.CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@action", "SearchFac");
                    cmd.Parameters.AddWithValue("@fac_id", ViewState["fac_id"]);
                    dr = cmd.ExecuteReader();
                    if (dr.HasRows)
                    {
                        dr.Read();
                        txt_fnmae.Text = dr["fac_name"].ToString();
                        txt_mob.Text = dr["fac_mob"].ToString();
                        txt_email.Text = dr["fac_email"].ToString();
                        txt_pass.Text = dr["fac_pass"].ToString();
                    }
                    cn.Close();
                }
            }
        }

        

        protected void btn_submit_Click1(object sender, EventArgs e)
        {
            cn.Open();
            qry = "CrudFaculty";
            cmd = new SqlCommand(qry, cn);
            cmd.CommandType = System.Data.CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@action", "UpdateFac");
            cmd.Parameters.AddWithValue("@fac_id", ViewState["fac_id"]);
            cmd.Parameters.AddWithValue("@fac_name", txt_fnmae.Text);
            cmd.Parameters.AddWithValue("@fac_mob", txt_mob.Text);
            cmd.Parameters.AddWithValue("@fac_email", txt_email.Text);
            cmd.Parameters.AddWithValue("@fac_pass", txt_pass.Text);
            cmd.Parameters.AddWithValue("@fac_img", FileUpload1.FileName);
            cmd.ExecuteNonQuery();
            Label1.Text = "Your Profile Updated SuccessFully..!";
            cn.Close();

            if (FileUpload1.HasFile)
            {
                if (FileUpload1.PostedFile.ContentType == "image/jpeg")
                {
                    if (FileUpload1.PostedFile.ContentLength < 50000000)
                    {
                        fname = FileUpload1.FileName;
                        FileUpload1.SaveAs(Server.MapPath("~/Faculty/Faculty Image/" + fname));
                        //Image1.ImageUrl = "~/Faculty/Faculty image/" + FileUpload1.FileName;
                        Label1.Text = "Your Data has been Stored...!";
                    }
                    else
                    {
                        Label1.Text = "file is too large..!";
                    }
                }
                else
                {
                    Label1.Text = "please select only image file..!";
                }
            }
            else
            {
                Label1.Text = "please select file...!";
            }
        }
    }
}