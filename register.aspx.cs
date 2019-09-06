using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace Elearning
{
    public partial class register : System.Web.UI.Page
    {
        SqlConnection con;
        protected void Page_Load(object sender, EventArgs e)
        {
            con = new SqlConnection("database=Elearning;server=.;uid=sa;pwd=1234");

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
           // string s = "";
            con.Open();
            SqlCommand com = new SqlCommand("insert into register values ('"+ TextBox1.Text +"','" + TextBox4.Text + "','" + TextBox5.Text +  "')", con);
            com.ExecuteNonQuery();

            con.Close();
            string display = "SIGNUP SUCCESSFUL...!";

            ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + display + "')", true);
            Response.Redirect("WebForm1.aspx");

            
        }

       
    }
}