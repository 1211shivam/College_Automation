using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Preskool.User1
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["Constr"].ConnectionString);
        SqlCommand cmd = new SqlCommand();
        string qry;
        string uname;
        protected void Page_Load(object sender, EventArgs e)
        {
            uname = Session["uname"].ToString();
            Label1.Text = uname;
            Image1.ImageUrl = "../User/User image/" + Session["uimg"].ToString();
            Image2.ImageUrl = "../User/User image/" + Session["uimg"].ToString();
        }
    }
}