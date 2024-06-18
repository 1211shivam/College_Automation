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
    public partial class WebForm11 : System.Web.UI.Page
    {
        //SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["Constr"].ConnectionString);
        //SqlCommand cmd = new SqlCommand();
        //String qry, studentid;
        //int shi, cartitems = 0;
        //SqlDataReader dr;
        protected void Page_Load(object sender, EventArgs e)
        {
            //studentid = Session["uid"].ToString();
            //cn.Open();
            //qry = "select * from wishlist_mstr where Stud_id=" + studentid;
            //cmd = new SqlCommand(qry, cn);
            //dr = cmd.ExecuteReader();
            //if (dr.HasRows)
            //{
            //    while (dr.Read())
            //    {
            //        if (dr["Subpay"].ToString() == "FREE")
            //        {
            //            shi = shi + 0;
            //        }
            //        else
            //        {
            //            shi = shi + Convert.ToInt32(dr["Subpay"]);
            //        }
            //        cartitems++;
            //    }
            //}
            //cn.Close();
        }
    }
}