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
    public partial class WebForm18 : System.Web.UI.Page
    {
        SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["Constr"].ConnectionString);
        SqlCommand cmd = new SqlCommand();
        SqlDataReader dr;
        string qry;
        string fac_id, fname;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                fac_id = Session["fac_id"].ToString();
                ViewState["fac_id"] = Session["fac_id"].ToString();
                if (fac_id != null)
                {
                    qry = "CrudFacultyInfo";
                    cn.Open();
                    cmd = new SqlCommand(qry, cn);
                    cmd.CommandType = System.Data.CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@action", "Search");
                    cmd.Parameters.AddWithValue("@fac_id", ViewState["fac_id"]);
                    dr = cmd.ExecuteReader();
                    if (dr.HasRows)
                    {
                        dr.Read();
                        txt_about.Text = dr["FAbout"].ToString();
                        txt_educat.Text = dr["FEducat"].ToString();
                        txt_exp.Text = dr["FExp"].ToString();
                    }
                    cn.Close();
                }
            }
        }

        protected void btn_submit_Click(object sender, EventArgs e)
        {
            cn.Open();
            qry = "CrudFacultyInfo";
            cmd = new SqlCommand(qry, cn);
            cmd.CommandType = System.Data.CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@action", "Update");
            cmd.Parameters.AddWithValue("@fac_id", ViewState["fac_id"]);
            cmd.Parameters.AddWithValue("@FAbout", txt_about.Text);
            cmd.Parameters.AddWithValue("@FEducat", txt_educat.Text);
            cmd.Parameters.AddWithValue("@FExp", txt_exp.Text);
            cmd.ExecuteNonQuery();
            Label1.Text = "Your Profile Updated SuccessFully..!";
            cn.Close();
        }
    }
}