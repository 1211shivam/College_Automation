using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Preskool.User
{
    public partial class WebForm19 : System.Web.UI.Page
    {
        SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["Constr"].ConnectionString);
        SqlCommand cmd = new SqlCommand();
        String qry;
        SqlDataReader dr;
        String Studentid, oamt, Subpay;
        String Oid, Subid;
        SqlDataAdapter dap = new SqlDataAdapter();
        DataSet ds = new DataSet();

        protected void btnPayment_Click1(object sender, EventArgs e)
        {
            cn.Open();
            qry = "insert into order_mstr values('" + Studentid + "','" + lblDate.Text + "','" + oamt + "','Unpaid')";
            cmd = new SqlCommand(qry, cn);
            cmd.ExecuteNonQuery();
            //lblDisp.Text = "Hyyyyyyyyyyyyyyyyyyyyyyyyyyyyyy";
            cn.Close();

            cn.Open();
            qry = "select * from order_mstr where Studid=" + Studentid;
            cmd = new SqlCommand(qry, cn);
            dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                while (dr.Read())
                {
                    Oid = dr["Orderid"].ToString();
                }

            }
            cn.Close();

            //cn.Open();
            qry = "SELECT c.Subid, c.Stud_id, c.Subpay, o.Orderid FROM addtocart c CROSS JOIN order_mstr o WHERE  o.Orderid =" + Oid;
            dap = new SqlDataAdapter(qry, cn);
            dap.Fill(ds);
            for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
            {
                Oid = ds.Tables[0].Rows[i]["Orderid"].ToString();
                Subid = ds.Tables[0].Rows[i]["Subid"].ToString();
                Subpay = ds.Tables[0].Rows[i]["Subpay"].ToString();

                cn.Open();
                qry = "insert into order_details values('" + Oid + "','" + Subid + "','" + Subpay + "','" + Studentid + "')";
                cmd = new SqlCommand(qry, cn);
                cmd.ExecuteNonQuery();
                cn.Close();
            }

            cn.Open();
            qry = "DELETE FROM addtocart where Stud_id = " + Studentid;
            cmd = new SqlCommand(qry, cn);
            cmd.ExecuteNonQuery();
            cn.Close();

            cn.Open();
            qry = "insert into billing_detail values(" + Oid + "," + Studentid + ",'" + txtFirstname.Text + "','" + txtLastname.Text + "'," + txtMobno.Text + ",'" + txtAddress.Text + "')";
            cmd = new SqlCommand(qry, cn);
            cmd.ExecuteNonQuery();
            cn.Close();
            Response.Redirect("Pay.aspx");
        }

        
        

        
        protected void Page_Load(object sender, EventArgs e)
        {
            oamt = Session["orderamt"].ToString();
            lblDate.Text = DateTime.Now.ToString("MM/dd/yyyy");
            Studentid = Session["uid"].ToString();
            //lblStud.Text = Studentid;
            //lblOamt.Text = Oid;
            txtTotalAmount.Text = oamt;

        }
    }
}