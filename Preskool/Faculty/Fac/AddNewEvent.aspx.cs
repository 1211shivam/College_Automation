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
    public partial class WebForm7 : System.Web.UI.Page
    {
        SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["Constr"].ConnectionString);
        SqlCommand cmd = new SqlCommand();
        string qry;
        string fname;
        string event_id;
        SqlDataReader dr;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                event_id = Request.QueryString.Get("event_id");
                ViewState["event_id"] = Request.QueryString.Get("event_id");
                if (event_id != null)
                {
                    btn_update_event.Visible = true;
                    btn_Create_event.Visible = false;
                    qry = "CrudEvent";
                    cn.Open();
                    cmd = new SqlCommand(qry, cn);
                    cmd.CommandType = System.Data.CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@action", "Search");
                    cmd.Parameters.AddWithValue("@event_id", ViewState["event_id"]);
                    dr = cmd.ExecuteReader();
                    if (dr.HasRows)
                    {
                        dr.Read();
                        txt_ename.Text = dr["event_name"].ToString();
                        txt_event_desc.Text = dr["event_desc"].ToString();
                        txt_evenue.Text = dr["event_venue"].ToString();
                        event_date.Text = dr["event_date"].ToString();
                    }
                    cn.Close();
                }
            }

        }

        protected void btn_Create_event_Click(object sender, EventArgs e)
        {
            cn.Open();
            qry = "select * from event_mstr where event_name='" + txt_ename.Text + "' and fac_id='" + ddl_fac_name.SelectedValue+"'";
            cmd = new SqlCommand(qry, cn);
            dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                dr.Read();
                lbl_disp.Text = "This Event is Alredy Ongoing!";
            }

            else
            {
                cn.Open();
                qry = "CrudEvent";
                cmd = new SqlCommand(qry, cn);
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@action", "Insert");
                cmd.Parameters.AddWithValue("@fac_id", ddl_fac_name.SelectedValue);
                cmd.Parameters.AddWithValue("@event_name", txt_ename.Text);
                cmd.Parameters.AddWithValue("@event_date", event_date.Text);
                cmd.Parameters.AddWithValue("@event_venue", txt_evenue.Text);
                cmd.Parameters.AddWithValue("@event_desc", txt_event_desc.Text);
                cmd.Parameters.AddWithValue("@event_img", FileUpload1.FileName);
                cmd.ExecuteNonQuery();
                cn.Close();

                if (FileUpload1.HasFile)
                {
                    if (FileUpload1.PostedFile.ContentType == "image/jpeg")
                    {
                        if (FileUpload1.PostedFile.ContentLength < 50000000)
                        {
                            fname = FileUpload1.FileName;
                            FileUpload1.SaveAs(Server.MapPath("~/Faculty/Event Image/" + fname));
                            //Image1.ImageUrl = "~/Faculty/Faculty image/" + FileUpload1.FileName;
                            lbl_disp.Text = "Event Has Been Created...!";
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

        protected void btn_update_event_Click(object sender, EventArgs e)
        {
            btn_update_event.Visible = true;
            btn_Create_event.Visible = false;
            cn.Open();
            qry = "CrudEvent";
            cmd = new SqlCommand(qry, cn);
            cmd.CommandType = System.Data.CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@action", "Update");
            cmd.Parameters.AddWithValue("@event_id", ViewState["event_id"]);
            cmd.Parameters.AddWithValue("@event_name", txt_ename.Text);
            cmd.Parameters.AddWithValue("@event_date", event_date.Text);
            cmd.Parameters.AddWithValue("@event_venue", txt_evenue.Text);
            cmd.Parameters.AddWithValue("@event_desc", txt_event_desc.Text);
            cmd.Parameters.AddWithValue("@event_img", FileUpload1.FileName);
            cmd.ExecuteNonQuery();
            cn.Close();

            if (FileUpload1.HasFile)
            {
                if (FileUpload1.PostedFile.ContentType == "image/jpeg")
                {
                    if (FileUpload1.PostedFile.ContentLength < 50000000)
                    {
                        fname = FileUpload1.FileName;
                        FileUpload1.SaveAs(Server.MapPath("~/Faculty/Event Image/" + fname));
                        //Image1.ImageUrl = "~/Faculty/Faculty image/" + FileUpload1.FileName;
                        
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
            Response.Redirect("../../Faculty/Fac/ShowEvents.aspx");
        }
    }
}