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
    public partial class Site2 : System.Web.UI.MasterPage
    {
        SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["Constr"].ConnectionString);
        SqlCommand cmd = new SqlCommand();
        string qry;
        string uname;
        protected void Page_Load(object sender, EventArgs e)
        {
            uname = Session["uname"].ToString();  
            lbl_username.Text = uname;
            Image1.ImageUrl = "../User/User Image/" + Session["uimg"].ToString();
        }
    }
}