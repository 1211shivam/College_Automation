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
    public partial class SignIn : System.Web.UI.Page
    {
        SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["Constr"].ConnectionString);
        SqlCommand cmd = new SqlCommand();
        SqlDataReader dr;
        string qry;
        string uname;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_signin_Click(object sender, EventArgs e)
        {
            cn.Open();
            qry = "CrudUser";
            cmd = new SqlCommand(qry, cn);
            cmd.CommandType = System.Data.CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@action", "Search");
            cmd.Parameters.AddWithValue("@uemail", txt_uemail.Text);
            cmd.Parameters.AddWithValue("@upass", txt_upass.Text);
            dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                int verify;
                dr.Read();
                verify = Convert.ToInt32(dr["verify"].ToString());
                if (verify == 1)
                {
                    Session["uid"] = dr["uid"].ToString();
                    Session["uname"] = dr["uname"].ToString();
                    Session["uimg"] = dr["uimg"].ToString();
                    Session["uemail"] = dr["uemail"].ToString();
                    Response.Redirect("../User/UHome.aspx");
                }
                else
                {
                    Session["uemail"] = txt_uemail.Text;
                    Response.Redirect("verify.aspx");
                    //lbl_disp.Text = "You are under process...!";
                }
            }
            else
            {
                lbl_disp.Text = "Wrong Password";
            }
            cn.Close();
        }
    }
}