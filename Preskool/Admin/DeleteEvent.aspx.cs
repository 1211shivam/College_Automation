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
    public partial class WebForm26 : System.Web.UI.Page
    {
        SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["Constr"].ConnectionString);
        SqlCommand cmd = new SqlCommand();
        string qry;
        string event_id;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                event_id = Request.QueryString.Get("event_id");
                ViewState["event_id"] = Request.QueryString.Get("event_id");
                if (event_id != null)
                {
                    //btn_update.Visible = true;
                    //btn_register.Visible = false;

                    cn.Open();
                    qry = "CrudEvent";
                    cmd = new SqlCommand(qry, cn);
                    cmd.CommandType = System.Data.CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@action", "Delete");
                    cmd.Parameters.AddWithValue("@posi_id", ViewState["posi_id"]);
                    cmd.ExecuteNonQuery();
                    cn.Close();
                    Response.Redirect("../Admin/DispPosition.aspx");
                }
            }
        }
    }
}