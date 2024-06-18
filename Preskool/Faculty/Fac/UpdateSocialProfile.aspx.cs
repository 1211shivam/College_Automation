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
    public partial class WebForm20 : System.Web.UI.Page
    {
        SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["Constr"].ConnectionString);
        SqlCommand cmd = new SqlCommand();
        string qry;
        SqlDataReader dr;
        string fac_id, fname;

        protected void btn_update_Click(object sender, EventArgs e)
        {
            cn.Open();
            qry = "CrudSocial";
            cmd = new SqlCommand(qry, cn);
            cmd.CommandType = System.Data.CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@action", "Update");
            cmd.Parameters.AddWithValue("@fac_id", ViewState["fac_id"]);
            cmd.Parameters.AddWithValue("@fac_twitter", txt_twitter.Text);
            cmd.Parameters.AddWithValue("@fac_facebook", txt_facebook.Text);
            cmd.Parameters.AddWithValue("@fac_insta", txt_instagram.Text);
            cmd.Parameters.AddWithValue("@fac_linkedin", txt_linkedIn.Text);
            cmd.Parameters.AddWithValue("@fac_youtube", txt_youtube.Text);
            cmd.ExecuteNonQuery();
            lbl_disp.Text = "Your Social Profile Updated SuccessFully..!";
            cn.Close();
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                fac_id = Session["fac_id"].ToString();
                ViewState["fac_id"] = Session["fac_id"].ToString();
                if (fac_id != null)
                {
                    qry = "CrudSocial";
                    cn.Open();
                    cmd = new SqlCommand(qry, cn);
                    cmd.CommandType = System.Data.CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@action", "Search");
                    cmd.Parameters.AddWithValue("@fac_id", ViewState["fac_id"]);
                    dr = cmd.ExecuteReader();
                    if (dr.HasRows)
                    {
                        dr.Read();
                        txt_twitter.Text = dr["fac_twitter"].ToString();
                        txt_facebook.Text = dr["fac_facebook"].ToString();
                        txt_instagram.Text = dr["fac_insta"].ToString();
                        txt_linkedIn.Text = dr["fac_linkedin"].ToString();
                        txt_youtube.Text = dr["fac_youtube"].ToString();
                    }
                    cn.Close();
                }
            }
        }
    }
}