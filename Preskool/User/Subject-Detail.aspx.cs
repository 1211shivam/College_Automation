using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.IO;
using Newtonsoft.Json.Linq;
using System.Xml.Linq;


namespace Preskool.User
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["Constr"].ConnectionString);
        SqlCommand cmd = new SqlCommand();
        SqlDataReader dr;
        String qry,uid,Ostatus,subid;
        

        protected void Page_Load(object sender, EventArgs e)
        {
            uid = Session["uid"].ToString();
            subid = Request.QueryString["subid"].ToString();
            cn.Open();
            qry = "select * from order_mstr where Studid=' " + uid + " '";
            cmd = new SqlCommand(qry,cn);
            dr = cmd.ExecuteReader();
            if(dr.HasRows)
            {
                string status;
                dr.Read();
                status = dr["Ostatus"].ToString();
                if(status == "Paid")
                {
                    Button3.Visible = true;
                }
            }
            cn.Close();
        }
        
        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("../User/WebForm27.aspx?subid=" + subid);
            //Response.Redirect("../User/WebForm27.aspx");
        }
        
    }
}