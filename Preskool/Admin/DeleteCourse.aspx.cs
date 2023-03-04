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
    public partial class WebForm4 : System.Web.UI.Page
    {
        SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["Constr"].ConnectionString);
        SqlCommand cmd = new SqlCommand();
        string qry;
        string course_id;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                course_id = Request.QueryString.Get("course_id");
                ViewState["course_id"] = Request.QueryString.Get("course_id");
                if (course_id != null)
                {
                    //btn_update.Visible = true;
                    //btn_register.Visible = false;

                    cn.Open();
                    qry = "CrudCourse";
                    cmd = new SqlCommand(qry, cn);
                    cmd.CommandType = System.Data.CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@action", "Delete");
                    cmd.Parameters.AddWithValue("@course_id", ViewState["course_id"]);
                    cmd.ExecuteNonQuery();
                    cn.Close();
                    Response.Redirect("../Admin/DispCourse.aspx");
                }
            }
        }
    }
}