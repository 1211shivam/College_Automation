using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Preskool.User1
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        

        protected void btn_next_Click1(object sender, EventArgs e)
        {
            Session["uname"] = txt_uname.Text;
            Session["umob"] = txt_umob.Text;
            Session["uemail"] = txt_uemail.Text;
            Session["upass"] = txt_upass.Text;
            Response.Redirect("SignUp1.aspx");
        }
    }
}