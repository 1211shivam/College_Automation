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
    public partial class WebForm1 : System.Web.UI.Page
    {
        SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["Constr"].ConnectionString);
        SqlCommand cmd = new SqlCommand();
        string qry;
        protected void Page_Load(object sender, EventArgs e)
        {
            cn.Open();
            qry = "select count(*) from subject_mstr";
            cmd = new SqlCommand(qry, cn);
            int subject = Convert.ToInt32(cmd.ExecuteScalar());
            Label1.Text =  subject.ToString();
            cn.Close();

            cn.Open();
            qry = "select count(*) from course_mstr";
            cmd = new SqlCommand(qry, cn);
            int course = Convert.ToInt32(cmd.ExecuteScalar());
            Label2.Text = course.ToString();
            cn.Close();
        }
    }
}