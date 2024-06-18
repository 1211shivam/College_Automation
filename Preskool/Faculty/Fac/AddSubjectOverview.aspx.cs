using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Preskool.Faculty.Fac
{
    public partial class WebForm13 : System.Web.UI.Page
    {
        SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["Constr"].ConnectionString);
        SqlCommand cmd = new SqlCommand();
        String qry,STopic_id;
        SqlDataReader dr;

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            cn.Open();
            qry = "select * from Subject_Overview_mstr where Subject_topic='" + txtSubtopic.Text + "'";
            cmd = new SqlCommand(qry, cn);
            dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                dr.Read();
                lbldisp.Text = "This Subject Topic is Alredy exist!";
            }

            else
            {
                cn.Open();
                qry = "CrudSubjectOverview";
                cmd = new SqlCommand(qry, cn);
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@action", "Insert");
                cmd.Parameters.AddWithValue("@Subid", ddlSname.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@Subject_topic", txtSubtopic.Text);
                cmd.ExecuteNonQuery();
                cn.Close();
                lbldisp.Text = "Added.!";
            }
            cn.Close();
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            btnUpdate.Visible = true;
            btnSubmit.Visible = false;
            cn.Open();
            qry = "CrudSubjectOverview";
            cmd = new SqlCommand(qry, cn);
            cmd.CommandType = System.Data.CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@action", "Update");
            cmd.Parameters.AddWithValue("@STopic_id", ViewState["STopic_id"]);
            cmd.Parameters.AddWithValue("@Subid", ddlSname.SelectedValue);
            cmd.Parameters.AddWithValue("@Subject_topic", txtSubtopic.Text);
            cmd.ExecuteNonQuery();
            cn.Close();
            Response.Redirect("../../Faculty/Fac/ShowSubjectTopic.aspx");
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                STopic_id = Request.QueryString.Get("STopic_id");
                ViewState["STopic_id"] = Request.QueryString.Get("STopic_id");
                if (STopic_id != null)
                {
                    btnUpdate.Visible = true;
                    btnSubmit.Visible = false;

                    qry = "CrudSubjectOverview";
                    cn.Open();
                    cmd = new SqlCommand(qry, cn);
                    cmd.CommandType = System.Data.CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@action", "Search");
                    cmd.Parameters.AddWithValue("@STopic_id", ViewState["STopic_id"]);
                    dr = cmd.ExecuteReader();
                    if (dr.HasRows)
                    {
                        dr.Read();
                        ddlSname.SelectedValue = dr[1].ToString();
                        txtSubtopic.Text = dr["Subject_topic"].ToString();
                    }
                    cn.Close();
                }
            }

        }
    }
}