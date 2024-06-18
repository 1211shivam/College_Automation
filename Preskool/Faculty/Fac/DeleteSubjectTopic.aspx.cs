using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Preskool.Faculty.Fac
{
    public partial class WebForm22 : System.Web.UI.Page
    {
        SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["Constr"].ConnectionString);
        SqlCommand cmd = new SqlCommand();
        string qry;
        string STopic_id;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                STopic_id = Request.QueryString.Get("STopic_id");
                ViewState["STopic_id"] = Request.QueryString.Get("STopic_id");
                if (STopic_id != null)
                {
                    //btn_update.Visible = true;
                    //btn_register.Visible = false;

                    cn.Open();
                    qry = "CrudSubjectOverview";
                    cmd = new SqlCommand(qry, cn);
                    cmd.CommandType = System.Data.CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@action", "Delete");
                    cmd.Parameters.AddWithValue("@STopic_id", ViewState["STopic_id"]);
                    cmd.ExecuteNonQuery();
                    cn.Close();
                    Response.Redirect("../../Faculty/Fac/ShowSubjectTopic.aspx");
                }
            }
        }
    }
}