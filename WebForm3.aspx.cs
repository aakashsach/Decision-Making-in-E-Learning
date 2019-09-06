using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Elearning
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        string email;
        protected void Page_Load(object sender, EventArgs e)
        {

            Label2.Text = Session["name"].ToString();
            email = Session["email"].ToString();
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Session.Remove("email");
            Session.Remove("name");
            Response.Redirect("WebForm1.aspx");
        }
    }
}