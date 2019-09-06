using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace Elearning
{
    public partial class login : System.Web.UI.Page
    {
        SqlConnection con;
        protected void Page_Load(object sender, EventArgs e)
        {
            con = new SqlConnection("database=Elearning;server=.;uid=sa;pwd=1234");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand com = new SqlCommand("select password,email,name from register where email='" + TextBox1.Text + "'", con);
            SqlDataReader dr = com.ExecuteReader();
            DataTable dt = new DataTable();
            dt.Load(dr);
            if (dt.Rows.Count <= 0)
            {
                Label1.Text = "Please enter correct email or password.";
            }
            else
            {
                string s = dt.Rows[0][0].ToString();

                if (TextBox1.Text == "297aakash@gmail.com")
                {
                    Session["email"] = dt.Rows[0][1].ToString();
                    Session["name"] = dt.Rows[0][2].ToString();
                    string s1 = Session["email"].ToString();
                    con.Close();
                    Response.Redirect("WebForm3.aspx");

                }
                else if (TextBox1.Text == "mehak@gmail.com")
                {
                    Session["email"] = dt.Rows[0][1].ToString();
                    Session["name"] = dt.Rows[0][2].ToString();
                    string s1 = Session["email"].ToString();
                    con.Close();
                    Response.Redirect("WebForm3.aspx");

                }
                else if (s == TextBox2.Text)
                {
                    Session["email"] = dt.Rows[0][1].ToString();
                    Session["name"] = dt.Rows[0][2].ToString();

                    string s1 = Session["email"].ToString();
                    con.Close();
                    Response.Redirect("WebForm2.aspx");
                }
                else
                {
                    Label1.Text = "Please enter correct email or password.";
                }

            }
        }
        protected void TextBox2_TextChanged(object sender, EventArgs e)
        {

        }
    }
}