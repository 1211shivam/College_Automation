using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Preskool.User
{
    public partial class WebForm26 : System.Web.UI.Page
    {
        SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["Constr"].ConnectionString);
        SqlCommand cmd = new SqlCommand();
        SqlDataReader dr;
        String qry;
        protected void Page_Load(object sender, EventArgs e)
        {
            string Mid = Request.QueryString["Mid"];
            cn.Open();
            qry = "select * from Material_mstr where Mid='" + Mid + "'";
            cmd = new SqlCommand(qry, cn);
            dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                dr.Read();
                string pdf = dr[3].ToString();
                Response.Redirect("~/Faculty/Subject Material/" + pdf);
            }
            cn.Close();
        }
    }
}