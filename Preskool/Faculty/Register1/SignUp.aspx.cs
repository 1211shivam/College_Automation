using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Preskool.Faculty
{
    public partial class SignUp : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_next_Click(object sender, EventArgs e)
        {
            Session["fac_name"] = txt_fac_name.Text;
            Session["fac_mob"] = txt_fac_mob.Text;
            Session["fac_email"] = txt_email.Text;
            Session["fac_pass"] = txt_pass.Text;
            Response.Redirect("../Register1/SignUp1.aspx");
        }
    }
}