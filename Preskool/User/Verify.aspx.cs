using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Preskool.User
{
    public partial class Verify : System.Web.UI.Page
    {
        SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["Constr"].ConnectionString);
        SqlCommand cmd = new SqlCommand();
        SqlDataReader dr;
        string qry;
        
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void btn_submit_Click(object sender, EventArgs e)
        {
            string uemail;
            cn.Open();
            uemail = Session["uemail"].ToString();
            qry = "CrudUser";
            cmd = new SqlCommand(qry, cn);
            cmd.CommandType = System.Data.CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@action", "Otp");
            cmd.Parameters.AddWithValue("@uemail", uemail);
            cmd.Parameters.AddWithValue("@otp", txt_otp.Text);

            dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                dr.Read();
                cn.Close();
                cn.Open();
                cmd = new SqlCommand(qry, cn);
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@action", "Verify");
                cmd.Parameters.AddWithValue("@verify", 1);
                cmd.Parameters.AddWithValue("@otp", txt_otp.Text);
                cmd.ExecuteNonQuery();
                Response.Redirect("Uhome.aspx");
            }
            else
            {
                Label1.Text = "Please enter correct  OTP";
            }
            cn.Close();
            
        }
        
    }
}