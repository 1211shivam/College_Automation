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
    public partial class WebForm20 : System.Web.UI.Page
    {
        SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["Constr"].ConnectionString);
        SqlCommand cmd = new SqlCommand();
        string qry, review_id;
        protected void Page_Load(object sender, EventArgs e)
        {
            review_id = Request.QueryString.Get("review_id");
            cn.Open();
            qry = "CrudReview";
            cmd = new SqlCommand(qry, cn);
            cmd.CommandType = System.Data.CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@action", "DeleteReview");
            cmd.Parameters.AddWithValue("@review_id", review_id);
            cmd.ExecuteNonQuery();
            cn.Close();
            Response.Redirect("../Admin/DispReview.aspx");
        }
    }
}