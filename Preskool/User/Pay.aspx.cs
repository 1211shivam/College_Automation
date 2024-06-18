using Razorpay.Api;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Preskool.User
{
    public partial class WebForm20 : System.Web.UI.Page
    {
        SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["Constr"].ConnectionString);
        SqlCommand cmd = new SqlCommand();
        String qry;
        SqlDataReader dr;
        String Oamt, Studentid;


        public string orderId;
        public string orderIds;
        public string name;
        public string product;
        public string email;
        public string contact;
        public string addressn;
        protected void Page_Load(object sender, EventArgs e)
        {
            Oamt = Session["orderamt"].ToString();
            //Studentid = Session["sid"].ToString();
            //cn.Open();
            //qry = "select * from Order_mstr where Studid='" + Studentid + "'";
            //cmd = new SqlCommand(qry, cn);
            //dr = cmd.ExecuteReader();
            //if (dr.HasRows)
            //{
            //    dr.Read();
            //    Oamt = dr["totalprice"].ToString();

            //}


            //cn.Close();
            if (!IsPostBack)
            {
                try
                {
                    name = "Shivam";
                    product = "Courses";
                    email = "shivamgheewala51642@gmail.com";
                    contact = "7041433337";
                    addressn = "Surat";
                    Session["product"] = product;
                    Session["totalprice"] = Oamt;
                    Dictionary<string, object> input = new Dictionary<string, object>();

                    int am = Convert.ToInt32(Oamt);
                    //string orderss = Session["OrderId"].ToString();
                    string orderss = System.DateTime.Now.Ticks.ToString();
                    orderIds = orderss;
                    //
                    input.Add("amount", am * 100);
                    //input.Add("amount", 100); // this amount should be same as transaction amount
                    input.Add("currency", "INR");
                    input.Add("receipt", orderss);
                    input.Add("payment_capture", 1);

                    string key = "rzp_test_KfOueXpwcsMnA9";
                    string secret = "vpaACDEtYDjLh85IhzHeKMgC";

                    //Session["totalprice"] = "100";
                    RazorpayClient client = new RazorpayClient(key, secret);
                    System.Net.ServicePointManager.SecurityProtocol = SecurityProtocolType.Tls12;
                    Razorpay.Api.Order order = client.Order.Create(input);
                    orderId = order["id"].ToString();
                }
                catch (Exception ex)
                {

                }
            }
        }
    }
}