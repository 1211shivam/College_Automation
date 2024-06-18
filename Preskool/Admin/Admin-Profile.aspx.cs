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
    public partial class WebForm22 : System.Web.UI.Page
    {
        SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["Constr"].ConnectionString);
        SqlCommand cmd = new SqlCommand();
        string aname;
        protected void Page_Load(object sender, EventArgs e)
        {
            aname = Session["aname"].ToString();
            Label1.Text = aname + "'s Profile";
        }
    }
}