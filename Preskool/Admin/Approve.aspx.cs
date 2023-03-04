using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Security.Cryptography;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Preskool.Admin
{
    public partial class WebForm13 : System.Web.UI.Page
    {
        SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["Constr"].ConnectionString);
        SqlCommand cmd = new SqlCommand();
        string qry;
        string fid;

        protected void Page_Load(object sender, EventArgs e)
        {
                    fid = Request.QueryString.Get("fid");  
                    cn.Open();
                    qry = "CrudFaculty";
                    cmd = new SqlCommand(qry, cn);
                    cmd.CommandType = System.Data.CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@action", "Update");
                    cmd.Parameters.AddWithValue("@fac_id",fid);
                    cmd.Parameters.AddWithValue("@verify", 1);
                    cmd.ExecuteNonQuery();
                    cn.Close();
                    Response.Redirect("../Admin/DispFaculty.aspx");              

        }
    }
}