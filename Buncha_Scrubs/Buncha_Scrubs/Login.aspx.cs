using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Buncha_Scrubs
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (TextBox1.Text == "AveryBow" && TextBox2.Text == "AB1234")
            {
                Session["valid"] = true;
                Response.Redirect("admin.aspx");
            }
        }
    }
}