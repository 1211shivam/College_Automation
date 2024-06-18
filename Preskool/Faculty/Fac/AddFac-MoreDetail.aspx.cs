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
    public partial class WebForm5 : System.Web.UI.Page
    {
        SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["Constr"].ConnectionString);
        SqlCommand cmd = new SqlCommand();
        string qry;
        SqlDataReader dr;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_submit_Click(object sender, EventArgs e)
        {

            cn.Open();
            qry = "select * from faculty_info where FAbout='" + txt_about.Text + "' and fac_id='" + ddl_fname.SelectedValue + "' and FEducat= '" +txt_education.Text +"' and FExp= '"+ txt_experience.Text+"' ";
            cmd = new SqlCommand(qry, cn);
            dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                dr.Read();
                Label1.Text = "The Details You Entered is Already exist!";
            }

            else
            {
                cn.Open();
                qry = "CrudFacultyInfo";
                cmd = new SqlCommand(qry, cn);
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@action", "Insert");
                cmd.Parameters.AddWithValue("@Fac_id", ddl_fname.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@FAbout", txt_about.Text);
                cmd.Parameters.AddWithValue("@FEducat", txt_education.Text);
                cmd.Parameters.AddWithValue("@FExp", txt_experience.Text);
                cmd.ExecuteNonQuery();
                Label1.Text = "Data Inserted Successfully..!";
                cn.Close();
            }
            cn.Close();

           
        }
    }
}