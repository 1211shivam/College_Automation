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
    public partial class Fac2 : System.Web.UI.MasterPage
    {
        SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["Constr"].ConnectionString);
        SqlCommand cmd = new SqlCommand();

        string fac_name;
        protected void Page_Load(object sender, EventArgs e)
        {
            fac_name = Session["fac_name"].ToString();
            Label1.Text = fac_name;
            Image1.ImageUrl = "../../Faculty/Faculty Image/" + Session["fac_img"].ToString();
            Image2.ImageUrl = "../../Faculty/Faculty Image/" + Session["fac_img"].ToString();
        }
    }
}