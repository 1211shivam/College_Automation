using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Preskool.Faculty
{
    public partial class SignIn : System.Web.UI.Page
    {
        SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["Constr"].ConnectionString);
        SqlCommand cmd = new SqlCommand();
        SqlDataReader dr;
        string qry;
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        

        protected void btn_login_Click1(object sender, EventArgs e)
        {
            cn.Open();
            qry = "CrudFaculty";
            cmd = new SqlCommand(qry, cn);
            cmd.CommandType = System.Data.CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@action", "Search");
            cmd.Parameters.AddWithValue("@fac_email", txt_email.Text);
            cmd.Parameters.AddWithValue("@fac_pass", txt_pass.Text);
            dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                int verify;
                dr.Read();
                verify = Convert.ToInt32(dr["verify"].ToString());
                //cn.Close();
                if (verify == 1)
                {
                    //cn.Open();
                    int delete_status;

                    //dr.Read();
                    delete_status = Convert.ToInt32(dr["delete_status"].ToString());
                    Session["fac_id"] = dr["fac_id"].ToString();
                    Session["fac_name"] = dr["fac_name"].ToString();
                    Session["fac_img"] = dr["fac_img"].ToString();
                    int fac_id = Convert.ToInt32(dr["fac_id"].ToString());
                    //cn.Close();
                    if (delete_status == 1)
                    {
                        cn.Close(); 
                        cn.Open();
                        qry = "CrudFaculty";
                        cmd = new SqlCommand(qry, cn);
                        cmd.CommandType = System.Data.CommandType.StoredProcedure;
                        cmd.Parameters.AddWithValue("@action", "UpdateStatus");
                        cmd.Parameters.AddWithValue("@fac_id",fac_id);
                        cmd.Parameters.AddWithValue("@delete_status", 0);
                        dr = cmd.ExecuteReader();
                        //Response.Redirect("../Fac/FHome.aspx");
                    }
                    
                    
                    Response.Redirect("../Fac/ShowSubject.aspx");
                    //cn.Close();
                }
                else
                {
                    lbl_disp.Text = "You are under process...!";
                }
            }
            else
            {
                lbl_disp.Text = "Record not found!";
            }
            cn.Close();
        }
    }
}