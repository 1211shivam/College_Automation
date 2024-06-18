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
    public partial class WebForm7 : System.Web.UI.Page
    {
        SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["Constr"].ConnectionString);
        SqlCommand cmd = new SqlCommand();
        String qry, studentid,oamt;
        int shi, cartitems ;
        SqlDataReader dr;
        protected void Page_Load(object sender, EventArgs e)
        {
            studentid = Session["uid"].ToString();
            cn.Open();
            qry = "select * from AddtoCart where Stud_id=" + studentid;
            cmd = new SqlCommand(qry, cn);
            dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                while (dr.Read())
                {
                    if (dr["Subpay"].ToString() == "free")
                    {
                        shi = shi + 0;
                    }
                    else
                    {
                        shi = shi + Convert.ToInt32(dr["Subpay"]);
                    }
                    cartitems++;
                }
            }
            lblSubtotal.Text = shi.ToString();
            
            lblCartcount.Text = "(" + cartitems.ToString() + " Items)";
            cn.Close();
            Session["orderamt"] = lblSubtotal.Text;
        }
    }
}