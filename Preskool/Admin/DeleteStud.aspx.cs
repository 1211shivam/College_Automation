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
    public partial class WebForm15 : System.Web.UI.Page
    {
        SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["Constr"].ConnectionString);
        SqlCommand cmd = new SqlCommand();
        string qry, uid;
        protected void Page_Load(object sender, EventArgs e)
        {
            uid = Request.QueryString.Get("uid");
            cn.Open();
            qry = "CrudUser";
            cmd = new SqlCommand(qry, cn);
            cmd.CommandType = System.Data.CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@action", "DeleteUser");
            cmd.Parameters.AddWithValue("@uid", uid);
            cmd.ExecuteNonQuery();
            cn.Close();
            Response.Redirect("../Admin/DispStudent.aspx");

        }
    }
}