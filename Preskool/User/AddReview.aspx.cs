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
    public partial class WebForm9 : System.Web.UI.Page
    {
        SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["Constr"].ConnectionString);
        SqlCommand cmd = new SqlCommand();
        string qry,subid,stud_id,fac_id;
        protected void Page_Load(object sender, EventArgs e)
        {
            subid = Request.QueryString.Get("subid");
            stud_id = Session["uid"].ToString();
            fac_id = Request.QueryString.Get("fid");
        }

        protected void btn_submit_Click(object sender, EventArgs e)
        {
            
            cn.Open();
            qry = "CrudReview";
            cmd = new SqlCommand(qry, cn);
            cmd.CommandType = System.Data.CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@action", "Insert");
            cmd.Parameters.AddWithValue("@stud_id", stud_id);
            cmd.Parameters.AddWithValue("@fac_id", fac_id);
            cmd.Parameters.AddWithValue("@subject_id", subid);
            cmd.Parameters.AddWithValue("@Subject", txt_subject.Text);
            cmd.Parameters.AddWithValue("@Overview", txt_comment.Text);
            cmd.ExecuteNonQuery();
            cn.Close();
            Label1.Text = "Review Has Been Send!";
        }
    }
}