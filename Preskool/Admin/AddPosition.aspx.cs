using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Security.Cryptography;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace Preskool.Admin
{
    public partial class WebForm8 : System.Web.UI.Page
    {
        SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["Constr"].ConnectionString);
        SqlCommand cmd = new SqlCommand();
        string qry;
        string posi_id;
        SqlDataReader dr;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                posi_id = Request.QueryString.Get("posi_id");
                ViewState["posi_id"] = Request.QueryString.Get("posi_id");
                if (posi_id != null)
                {
                    btn_update.Visible = true;
                    btn_submit.Visible = false;
                    btn_delete.Visible = false;
                    qry = "CrudPosition";
                    cn.Open();
                    cmd = new SqlCommand(qry, cn);
                    cmd.CommandType = System.Data.CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@action", "Search");
                    cmd.Parameters.AddWithValue("@posi_id", ViewState["posi_id"]);

                    dr = cmd.ExecuteReader();
                    if (dr.HasRows)
                    {
                        dr.Read();
                        txt_pname.Text = dr["pname"].ToString();
                    }
                    cn.Close();
                }
            }
        }

        protected void btn_submit_Click(object sender, EventArgs e)
        {
            cn.Open();
            qry = "select * from position_mstr where pname='" + txt_pname.Text + "'";
            cmd = new SqlCommand(qry, cn);
            dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                dr.Read();
               Label1.Text = "This Position is Alredy exist!";
            }

            else
            {
                
                cn.Open();
                qry = "CrudPosition";
                cmd = new SqlCommand(qry, cn);
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@action", "Insert");
                cmd.Parameters.AddWithValue("@pname", txt_pname.Text);
                cmd.ExecuteNonQuery();
                cn.Close();
                Label1.Text = "Position Added..!";
            }
            cn.Close();
            
        }

        protected void btn_cancel_Click(object sender, EventArgs e)
        {
            clear();
        }

        void clear()
        {
            foreach (object control in form1.Controls)
            {
                if (control is TextBox)
                {
                    ((TextBox)control).Text = "";
                }

            }

        }

        protected void btn_update_Click(object sender, EventArgs e)
        {
            btn_update.Visible = true;
            btn_submit.Visible = false;
            cn.Open();
            qry = "CrudPosition";
            cmd = new SqlCommand(qry, cn);
            cmd.CommandType = System.Data.CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@action", "Update");
            cmd.Parameters.AddWithValue("@posi_id", ViewState["posi_id"]);
            cmd.Parameters.AddWithValue("@pname", txt_pname.Text);
            cmd.ExecuteNonQuery();
            cn.Close();
            Label1.Text = "Position Updated..!";
            Response.Redirect("../Admin/DispPosition.aspx");
        }
    }
}