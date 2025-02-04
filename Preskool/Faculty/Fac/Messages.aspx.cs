﻿using System;
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
    public partial class WebForm15 : System.Web.UI.Page
    {
        SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["Constr"].ConnectionString);
        SqlCommand cmd = new SqlCommand();
        SqlDataReader dr;
        string qry;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void txt_submit_Click(object sender, EventArgs e)
        {
            cn.Open();
            qry = "CrudMsg";
            cmd = new SqlCommand(qry, cn);
            cmd.CommandType = System.Data.CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@action", "Insert");
            cmd.Parameters.AddWithValue("@ToId", ddl_sname.SelectedValue);
            cmd.Parameters.AddWithValue("@FromId", ddl_fname.SelectedValue);
            cmd.Parameters.AddWithValue("@Subject", txt_subject.Text);
            cmd.Parameters.AddWithValue("@Message", txt_msg.Text);
            cmd.Parameters.AddWithValue("@Mdate", txt_date.Text);
            dr = cmd.ExecuteReader();
            Label1.Text = "Your Message Has Been Send SuccessFully..!";
            cn.Close();
        }
    }
}