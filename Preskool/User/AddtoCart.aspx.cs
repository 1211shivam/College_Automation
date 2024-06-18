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
    public partial class WebForm8 : System.Web.UI.Page
    {
        SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["Constr"].ConnectionString);
        SqlCommand cmd = new SqlCommand();
        String qry;
        SqlDataReader dr;
        String Subid, Studentid, spay;

        protected void Page_Load(object sender, EventArgs e)
        {
            Subid = Request.QueryString.Get("Sid");
            Studentid = Session["uid"].ToString();
            spay = Request.QueryString.Get("Spay");
            cn.Open();
            qry = "CrudAddtocart";
            cmd = new SqlCommand(qry, cn);
            cmd.CommandType = System.Data.CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@action", "Search");
            cmd.Parameters.AddWithValue("@subid", Subid);
            cmd.Parameters.AddWithValue("@Stud_id", Studentid);
            dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                dr.Read();
            }
            else
            {
                cn.Close();
                cn.Open();
                cmd = new SqlCommand(qry, cn);
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@action", "Insert");
                cmd.Parameters.AddWithValue("@Subid", Subid);
                cmd.Parameters.AddWithValue("@Stud_id", Studentid);
                cmd.Parameters.AddWithValue("@Subpay", spay);
                cmd.ExecuteNonQuery();
            }
            cn.Close();
            Response.Redirect("Cart.aspx");
        }
    }
}