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
    public partial class WebForm21 : System.Web.UI.Page
    {
        SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["Constr"].ConnectionString);
        SqlCommand cmd = new SqlCommand();
        String qry;
        SqlDataReader dr;
        String Studentid;
        protected void Page_Load(object sender, EventArgs e)
        {
            Studentid = Session["uid"].ToString();




            string paymentId = Request.Form["razorpay_payment_id"];
            int am = Convert.ToInt32(Math.Round(Convert.ToDouble(Session["totalprice"].ToString())));
            Dictionary<string, object> input = new Dictionary<string, object>();
            input.Add("amount", am); // this amount should be same as transaction amount

            string key = "rzp_test_KfOueXpwcsMnA9";
            string secret = "vpaACDEtYDjLh85IhzHeKMgC";

            RazorpayClient client = new RazorpayClient(key, secret);
            System.Net.ServicePointManager.SecurityProtocol = SecurityProtocolType.Tls12;
            Dictionary<string, string> attributes = new Dictionary<string, string>();

            attributes.Add("razorpay_payment_id", paymentId);
            attributes.Add("razorpay_order_id", Request.Form["razorpay_order_id"]);
            attributes.Add("razorpay_signature", Request.Form["razorpay_signature"]);

            Utils.verifyPaymentSignature(attributes);
            //string generated_signature = hmac_sha256(Request.Form["razorpay_order_id"] + "|" + paymentId, secret);

            //if (generated_signature == Request.Form["razorpay_signature"])
            //{
            //payment is successful


            cn.Open();
            qry = "update Order_mstr set Ostatus=" + "'Paid'" + " where Studid=" + Studentid;
            cmd = new SqlCommand(qry, cn);
            cmd.ExecuteNonQuery();
            cn.Close();
        }
    }
}