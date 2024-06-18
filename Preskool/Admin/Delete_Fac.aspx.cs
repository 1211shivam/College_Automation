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
    public partial class WebForm6 : System.Web.UI.Page
    {
        SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["Constr"].ConnectionString);
        SqlCommand cmd = new SqlCommand();
        string qry,fac_id;
        protected void Page_Load(object sender, EventArgs e)
        {
            fac_id=Request.QueryString.Get("fac_id");
            cn.Open();
            qry = "CrudFaculty";
            cmd = new SqlCommand(qry, cn);
            cmd.CommandType = System.Data.CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@action", "DeleteFac");
            cmd.Parameters.AddWithValue("@fac_id", fac_id);
            cmd.ExecuteNonQuery();
            cn.Close();
            Response.Redirect("../Admin/DispFaculty.aspx");
        }
    }
}