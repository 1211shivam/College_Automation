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
    public partial class WebForm1 : System.Web.UI.Page
    {
        SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["Constr"].ConnectionString);
        SqlCommand cmd = new SqlCommand();
        string aname,qry;
        protected void Page_Load(object sender, EventArgs e)
        {
            aname = Session["aname"].ToString();
            Label1.Text = "Welcome" + " " + aname;


            cn.Open();
            qry = "select count(*) from user_mstr";
            cmd = new SqlCommand(qry, cn);
            int user = Convert.ToInt32(cmd.ExecuteScalar());
            lbl_student.Text = user.ToString();
            cn.Close();

            cn.Open();
            qry = "select count(*) from course_mstr";
            cmd = new SqlCommand(qry, cn);
            int course = Convert.ToInt32(cmd.ExecuteScalar());
            lbl_course.Text = course.ToString();
            cn.Close();

            cn.Open();
            qry = "select count(*) from subject_mstr";
            cmd = new SqlCommand(qry, cn);
            int subject = Convert.ToInt32(cmd.ExecuteScalar());
            lbl_subject.Text = subject.ToString();
            cn.Close();

            cn.Open();
            qry = "select count(*) from faculty_mstr";
            cmd = new SqlCommand(qry, cn);
            int faculty = Convert.ToInt32(cmd.ExecuteScalar());
            lbl_fac.Text = faculty.ToString();
            cn.Close();

            cn.Open();
            qry = "select count(*) from position_mstr";
            cmd = new SqlCommand(qry, cn);
            int position = Convert.ToInt32(cmd.ExecuteScalar());
            lbl_posi.Text = position.ToString();
            cn.Close();

            cn.Open();
            qry = "select count(*) from order_mstr";
            cmd = new SqlCommand(qry, cn);
            int order = Convert.ToInt32(cmd.ExecuteScalar());
            lbl_order.Text = order.ToString();
            cn.Close();
        }
    }
}
