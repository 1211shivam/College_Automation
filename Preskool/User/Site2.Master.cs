using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Security.Cryptography;
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
        string uname,uid;
        SqlDataReader dr;

        

        protected void Page_Load(object sender, EventArgs e)
        {
            uname = Session["uname"].ToString();  
            lbl_username.Text = uname;
            Image1.ImageUrl = "../User/User image/" + Session["uimg"].ToString();
            Label1.Text = uname;
            Image2.ImageUrl = "../User/User image/" + Session["uimg"].ToString();
            Image3.ImageUrl = "../User/User image/" + Session["uimg"].ToString();
        }
    }
}