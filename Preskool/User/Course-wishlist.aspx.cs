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
    public partial class WebForm10 : System.Web.UI.Page
    {
        SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["Constr"].ConnectionString);
        SqlCommand cmd = new SqlCommand();
        String qry;
        SqlDataReader dr;
        String Subid, Studentid, sfacid;
        protected void Page_Load(object sender, EventArgs e)
        {
            Subid = Request.QueryString.Get("subid");
            sfacid = Request.QueryString.Get("fid");
            Studentid = Session["uid"].ToString();
            cn.Open();
            qry = "CrudWishlist";
            cmd = new SqlCommand(qry, cn);
            cmd.CommandType = System.Data.CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@action", "Search");
            cmd.Parameters.AddWithValue("@Wsubid", Subid);
            cmd.Parameters.AddWithValue("@Wstudid", Studentid);
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
                cmd.Parameters.AddWithValue("@Wsubid", Subid);
                cmd.Parameters.AddWithValue("@Wstudid", Studentid);
                cmd.Parameters.AddWithValue("@Wfid", sfacid);
                cmd.ExecuteNonQuery();
            }
            cn.Close();
            Response.Redirect("Disp-Wishlist.aspx");
        }
    }
}