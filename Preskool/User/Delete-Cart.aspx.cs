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
    public partial class WebForm12 : System.Web.UI.Page
    {
        SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["Constr"].ConnectionString);
        SqlCommand cmd = new SqlCommand();
        String qry;
        String cartid;
        protected void Page_Load(object sender, EventArgs e)
        {
            String cartid = Request.QueryString.Get("Cid");
            cn.Open();
            qry = "CrudAddtocart";
            cmd = new SqlCommand(qry, cn);
            cmd.CommandType = System.Data.CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@action", "Delete");
            cmd.Parameters.AddWithValue("@cartid", cartid);
            cmd.ExecuteNonQuery();
            cn.Close();
            Response.Redirect("Cart.aspx");
        }
    }
}