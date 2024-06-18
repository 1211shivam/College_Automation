using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Preskool.Admin
{
    public partial class Default : System.Web.UI.Page
    {
        SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["Constr"].ConnectionString);
        SqlCommand cmd = new SqlCommand();
        string qry;
        SqlDataReader dr;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_login_Click(object sender, EventArgs e)
        {
            cn.Open();
            qry = "CrudAdmin";
            cmd = new SqlCommand(qry, cn);
            cmd.CommandType = System.Data.CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@action", "Search");
            cmd.Parameters.AddWithValue("@aemail", txt_email.Text);
            cmd.Parameters.AddWithValue("@apass", txt_pass.Text);
            dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                dr.Read();
                Session["aid"] = dr["aid"].ToString();
                Session["aname"] = dr["aname"].ToString();
                Session["aimg"] = dr["aimg"].ToString();
                Response.Redirect("AHome.aspx");            
            }
            else
            {
                lbl_disp.Text = "Record Not Found...!";
            }
            cn.Close();
        }
    }
}