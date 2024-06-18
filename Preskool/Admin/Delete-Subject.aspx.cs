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
    public partial class WebForm25 : System.Web.UI.Page
    {
        SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["Constr"].ConnectionString);
        SqlCommand cmd = new SqlCommand();
        string qry;
        string subid;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                subid = Request.QueryString.Get("subid");
                ViewState["subid"] = Request.QueryString.Get("subid");
                if (subid != null)
                {
                    cn.Open();
                    qry = "CrudSubject";
                    cmd = new SqlCommand(qry, cn);
                    cmd.CommandType = System.Data.CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@action", "Delete");
                    cmd.Parameters.AddWithValue("@subid", ViewState["subid"]);
                    cmd.ExecuteNonQuery();
                    cn.Close();
                    Response.Redirect("../Admin/DispSubject.aspx");
                }
            }
        }
    }
}