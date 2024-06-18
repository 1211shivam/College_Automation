using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace Preskool.User
{
    public partial class WebForm23 : System.Web.UI.Page
    {
        SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["Constr"].ConnectionString);
        SqlCommand cmd = new SqlCommand();
        SqlDataReader dr;
        string qry;
        string uid,fname;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                uid = Session["uid"].ToString();
                ViewState["uid"] = Session["uid"].ToString();
                if (uid != null)
                {
                    qry = "CrudUser";
                    cn.Open();
                    cmd = new SqlCommand(qry, cn);
                    cmd.CommandType = System.Data.CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@action", "SearchUser");
                    cmd.Parameters.AddWithValue("@uid", ViewState["uid"]);
                    dr = cmd.ExecuteReader();
                    if (dr.HasRows)
                    {
                        dr.Read();
                        txt_uname.Text = dr["uname"].ToString();
                        txt_mob.Text = dr["umob"].ToString();
                        txt_email.Text = dr["uemail"].ToString();
                        txt_pass.Text = dr["upass"].ToString();
                    }
                    cn.Close();
                }
            }
        }

       

        protected void btn_submit_Click1(object sender, EventArgs e)
        {
            cn.Open();
            qry = "CrudUser";
            cmd = new SqlCommand(qry, cn);
            cmd.CommandType = System.Data.CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@action", "UpdateUser");
            cmd.Parameters.AddWithValue("@uid", ViewState["uid"]);
            cmd.Parameters.AddWithValue("@uname", txt_uname.Text);
            cmd.Parameters.AddWithValue("@umob", txt_mob.Text);
            cmd.Parameters.AddWithValue("@uemail", txt_email.Text);
            cmd.Parameters.AddWithValue("@upass", txt_pass.Text);
            cmd.Parameters.AddWithValue("@uimg",FileUpload1.FileName);
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
                        FileUpload1.SaveAs(Server.MapPath("~/User/User image/" + fname));
                        //Image1.ImageUrl = "~/Faculty/Faculty image/" + FileUpload1.FileName;
                        
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