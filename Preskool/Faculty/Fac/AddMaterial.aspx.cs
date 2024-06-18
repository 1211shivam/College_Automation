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
    public partial class WebForm19 : System.Web.UI.Page
    {
        SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["Constr"].ConnectionString);
        SqlCommand cmd = new SqlCommand();
        string qry;
        string fname;
        SqlDataReader dr;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_submit_Click(object sender, EventArgs e)
        {
            cn.Open();
            qry = "select * from Material_mstr where Mpdf='" + FileUpload1.FileName + "'";
            cmd = new SqlCommand(qry, cn);
            dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                dr.Read();
                lbl_disp.Text = "This Material is Alredy exist!";
            }

            else
            {
                cn.Close();
                cn.Open();
                qry = "CrudMaterial";
                cmd = new SqlCommand(qry, cn);
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@action", "Insert");
                cmd.Parameters.AddWithValue("@fac_id", ddl_fname.SelectedValue);
                cmd.Parameters.AddWithValue("@subid", ddl_sname.SelectedValue); ;
                cmd.Parameters.AddWithValue("@Mpdf", FileUpload1.FileName);
                cmd.ExecuteNonQuery();
                cn.Close();

                if (FileUpload1.HasFile)
                {
                    if (FileUpload1.PostedFile.ContentType == "application/pdf")
                    {
                        if (FileUpload1.PostedFile.ContentLength < 60000000)
                        {
                            fname = FileUpload1.FileName;
                            FileUpload1.SaveAs(Server.MapPath("~/Faculty/Subject Material/" + fname));
                            //Image1.ImageUrl = "~/Faculty/Faculty image/" + FileUpload1.FileName;
                            lbl_disp.Text = "Your Data has been Stored...!";
                        }
                        else
                        {
                            lbl_disp.Text = "file is too large..!";
                        }
                    }
                    else
                    {
                        lbl_disp.Text = "please select only pdf file..!";
                    }
                }
                else
                {
                    lbl_disp.Text = "please select file...!";
                }
            }
            cn.Close();


            
            //lbl_disp.Text = FileUpload1.PostedFile.ContentType;
        }
    }
}