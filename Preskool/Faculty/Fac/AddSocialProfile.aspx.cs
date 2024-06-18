using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Preskool.Faculty.Fac
{
    public partial class WebForm8 : System.Web.UI.Page
    {
        SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["Constr"].ConnectionString);
        SqlCommand cmd = new SqlCommand();
        string qry;
        SqlDataReader dr;
        string fac_id, fname;

        protected void btn_save_Click(object sender, EventArgs e)
        {
            fac_id = Session["fac_id"].ToString();
            cn.Open();
            qry = "select * from social_profile where fac_twitter='" + txt_twitter.Text + "' and fac_facebook='" + txt_facebook.Text + "' and fac_insta='" + txt_instagram.Text + "'and fac_linkedin='" + txt_linkedIn.Text + "'and fac_youtube='" + txt_youtube.Text + "' ";
            cmd = new SqlCommand(qry, cn);
            dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                dr.Read();
                lbl_disp.Text = "This Profile is Alredy exist!";
            }

            else
            {
                cn.Close();
                cn.Open();
                qry = "CrudSocial";
                cmd = new SqlCommand(qry, cn);
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@action", "Insert");
                cmd.Parameters.AddWithValue("@fac_id", fac_id);
                cmd.Parameters.AddWithValue("@fac_twitter", txt_twitter.Text);
                cmd.Parameters.AddWithValue("@fac_facebook", txt_facebook.Text);
                cmd.Parameters.AddWithValue("@fac_insta", txt_instagram.Text);
                cmd.Parameters.AddWithValue("@fac_linkedin", txt_linkedIn.Text);
                cmd.Parameters.AddWithValue("@fac_youtube", txt_youtube.Text);
                cmd.ExecuteNonQuery();
                lbl_disp.Text = "Social Profile Added..!";
                cn.Close();
            }
            cn.Close();
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            
        }
    }
}