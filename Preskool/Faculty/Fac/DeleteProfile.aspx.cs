using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Globalization;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Preskool.Faculty.Fac
{
    public partial class WebForm9 : System.Web.UI.Page
    {
        SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["Constr"].ConnectionString);
        SqlCommand cmd = new SqlCommand();
        SqlDataReader dr;
        string qry;
        string fac_id;
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }


        protected void btn_deactivate_Click(object sender, EventArgs e)
        {
            fac_id = Session["fac_id"].ToString();
            cn.Open();
            qry = "CrudFaculty";
            cmd = new SqlCommand(qry, cn);
            cmd.CommandType = System.Data.CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@action", "DeleteStatus");
            cmd.Parameters.AddWithValue("@fac_id", fac_id);
            cmd.Parameters.AddWithValue("@delete_status", 1);
            dr = cmd.ExecuteReader();
            cn.Close();
            Response.Redirect("../../Faculty/Register1/SignIn.aspx");
        }
    }
}