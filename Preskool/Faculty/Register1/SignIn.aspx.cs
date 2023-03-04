using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Preskool.Faculty
{
    public partial class SignIn : System.Web.UI.Page
    {
        SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["Constr"].ConnectionString);
        SqlCommand cmd = new SqlCommand();
        SqlDataReader dr;
        string qry;
        
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        

        protected void btn_login_Click1(object sender, EventArgs e)
        {
            cn.Open();
            qry = "CrudFaculty";
            cmd = new SqlCommand(qry, cn);
            cmd.CommandType = System.Data.CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@action", "Search");
            cmd.Parameters.AddWithValue("@fac_email", txt_email.Text);
            cmd.Parameters.AddWithValue("@fac_pass", txt_pass.Text);
            dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                int verify;
                dr.Read();
                  verify = Convert.ToInt32(dr["verify"].ToString());
                if (verify == 1)
                {
                    Session["fac_name"] = dr["fac_name"].ToString();
                    Session["fac_img"] = dr["fac_img"].ToString();
                    Response.Redirect("../Fac/FHome.aspx");
                }
                else
                {
                    lbl_disp.Text = "You are under process...!";
                }
            }
            else
            {
                lbl_disp.Text = "Record not found!";
            }
            cn.Close();
        }
    }
}