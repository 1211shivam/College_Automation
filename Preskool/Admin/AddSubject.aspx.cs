using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Preskool.Admin
{
    public partial class WebForm27 : System.Web.UI.Page
    {
        SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["Constr"].ConnectionString);
        SqlCommand cmd = new SqlCommand();
        string qry;
        string fname;
        string subid;
        SqlDataReader dr;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                subid = Request.QueryString.Get("subid");
                ViewState["subid"] = Request.QueryString.Get("subid");
                if (subid != null)
                {
                    btn_update.Visible = true;
                    btn_submit.Visible = false;
                    btn_delete.Visible = false;
                    Label1.Visible = false;
                    ddl_cname.Visible = false;  
                    qry = "CrudSubject";
                    cn.Open();
                    cmd = new SqlCommand(qry, cn);
                    cmd.CommandType = System.Data.CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@action", "Search");
                    cmd.Parameters.AddWithValue("@subid", ViewState["subid"]);
                    dr = cmd.ExecuteReader();
                    if (dr.HasRows)
                    {
                        dr.Read();
                        ddl_cname.SelectedValue = dr["courseid"].ToString();
                        txt_sname.Text = dr["sname"].ToString();
                        txt_sdesc.Text = dr["sdesc"].ToString();
                        txt_fees.Text = dr["subpay"].ToString();
                        txt_suburl.Text = dr["suburl"].ToString();
                    }
                    cn.Close();
                }
            }
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

        protected void btn_submit_Click(object sender, EventArgs e)
        {
            cn.Open();
            qry = "select * from subject_mstr where sname='" + txt_sname.Text + "'";
            cmd = new SqlCommand(qry, cn);
            dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                dr.Read();
                lbl_disp.Text = "This Subject is Alredy exist!";
            }

            else
            {
                cn.Open();
                qry = "CrudSubject";
                cmd = new SqlCommand(qry, cn);
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@action", "Insert");
                cmd.Parameters.AddWithValue("@sname", txt_sname.Text);
                cmd.Parameters.AddWithValue("@courseid", ddl_cname.SelectedValue);
                cmd.Parameters.AddWithValue("@sdesc", txt_sdesc.Text);
                cmd.Parameters.AddWithValue("@simg", FileUpload1.FileName);
                cmd.Parameters.AddWithValue("@subpay", txt_fees.Text);
                cmd.Parameters.AddWithValue("@suburl", txt_suburl.Text);
                cmd.Parameters.AddWithValue("@sub_status",0);
                cmd.ExecuteNonQuery();
                cn.Close();

                if (FileUpload1.HasFile)
                {
                    if (FileUpload1.PostedFile.ContentType == "image/jpeg")
                    {
                        if (FileUpload1.PostedFile.ContentLength < 50000000)
                        {
                            fname = FileUpload1.FileName;
                            FileUpload1.SaveAs(Server.MapPath("~/Faculty/Subject image/" + fname));
                            //Image1.ImageUrl = "~/Faculty/Faculty image/" + FileUpload1.FileName;
                            lbl_disp.Text = "Subject Has been Created...!";
                        }
                        else
                        {
                            lbl_disp.Text = "file is too large..!";
                        }
                    }
                    else
                    {
                        lbl_disp.Text = "please select only image file..!";
                    }
                }
                else
                {
                    lbl_disp.Text = "please select file...!";
                }
            }
            cn.Close();

            
        }

        protected void btn_update_Click(object sender, EventArgs e)
        {
            btn_update.Visible = true;
            btn_submit.Visible = false;
            btn_delete.Visible = false;
            Label1.Visible = false;
            ddl_cname.Visible = false;
            cn.Open();
            qry = "CrudSubject";
            cmd = new SqlCommand(qry, cn);
            cmd.CommandType = System.Data.CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@action", "Update");
            cmd.Parameters.AddWithValue("@subid", ViewState["subid"]);
            cmd.Parameters.AddWithValue("@courseid", ddl_cname.SelectedValue);
            cmd.Parameters.AddWithValue("@sname", txt_sname.Text);
            cmd.Parameters.AddWithValue("@sdesc", txt_sdesc.Text);
            cmd.Parameters.AddWithValue("@subpay", txt_fees.Text);
            cmd.ExecuteNonQuery();
            cn.Close();
            
            if (FileUpload1.HasFile)
            {
                if (FileUpload1.PostedFile.ContentType == "image/jpeg")
                {
                    if (FileUpload1.PostedFile.ContentLength < 50000000)
                    {
                        fname = FileUpload1.FileName;
                        FileUpload1.SaveAs(Server.MapPath("~/Faculty/Subject image/" + fname));
                        //Image1.ImageUrl = "~/Faculty/Faculty image/" + FileUpload1.FileName;
                        lbl_disp.Text = "Subject Has been Created...!";
                    }
                    else
                    {
                        lbl_disp.Text = "file is too large..!";
                    }
                }
                else
                {
                    lbl_disp.Text = "please select only image file..!";
                }
            }
            else
            {
                lbl_disp.Text = "please select file...!";
            }
            Response.Redirect("../Admin/DispSubject.aspx");
        }
    }
}