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
    public partial class WebForm1 : System.Web.UI.Page
    {
        SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["Constr"].ConnectionString);
        SqlCommand cmd = new SqlCommand();
        SqlDataReader dr;
        string qry;
        protected void Page_Load(object sender, EventArgs e)
        {
            cn.Open();
            qry = "select * from faculty_mstr";
            cmd = new SqlCommand(qry,cn);
            dr = cmd.ExecuteReader();
            if(dr.HasRows)
            {
                dr.Read();
                Session["fac_id"] = dr["fac_id"].ToString();
            }
            cn.Close(); 
        }
    }
}