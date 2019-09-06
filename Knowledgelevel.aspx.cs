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
    public partial class Knowledgelevel : System.Web.UI.Page
    {
        SqlConnection con;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Convert.ToInt32(Session["flag"]) == 0)
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Please fill the Knowledge level form.')", true);

            }
            con = new SqlConnection("database=Elearning;server=.;uid=sa;pwd=1234");

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            con.Open();
            string sname = Session["name"].ToString();
            string semail = Session["email"].ToString();

            int choice = Convert.ToInt32(DropDownList1.SelectedItem.Value);

            //System.Diagnostics.Debug.WriteLine(choice);

            string[] a = new string[25];
            a[0] = TextBox3.Text; a[1] = TextBox6.Text.ToString(); a[2] = TextBox11.Text.ToString(); a[3] = TextBox14.Text.ToString(); a[4] = TextBox20.Text.ToString(); a[5] = TextBox23.Text.ToString(); a[6] = TextBox27.Text.ToString(); a[7] = TextBox32.Text.ToString(); a[8] = TextBox34.Text.ToString(); a[9] = TextBox40.Text.ToString(); a[10] = TextBox44.Text.ToString(); a[11] = TextBox45.Text.ToString(); a[12] = TextBox51.Text.ToString(); a[13] = TextBox56.Text.ToString(); a[14] = TextBox57.Text.ToString(); a[15] = TextBox61.Text.ToString(); a[16] = TextBox65.Text.ToString(); a[17] = TextBox70.Text.ToString(); a[18] = TextBox74.Text.ToString(); a[19] = TextBox80.Text.ToString(); a[20] = TextBox84.Text.ToString(); a[21] = TextBox87.Text.ToString(); a[22] = TextBox89.Text.ToString(); a[23] = TextBox94.Text.ToString(); a[24] = TextBox97.Text.ToString();
  //          System.Diagnostics.Debug.WriteLine(a[choice-1]);
//            System.Diagnostics.Debug.WriteLine(choice);

            string ch = a[choice-1];
            double mu;
            Double.TryParse(ch, out mu);
            mu = mu / (double)100;
                    System.Diagnostics.Debug.WriteLine(mu);
            string[] b = new string[25];
            b[0] = TextBox1.Text; b[1] = TextBox5.Text.ToString(); b[2] = TextBox9.Text.ToString(); b[3] = TextBox13.Text.ToString(); b[4] = TextBox17.Text.ToString(); b[5] = TextBox21.Text.ToString(); b[6] = TextBox25.Text.ToString(); b[7] = TextBox29.Text.ToString(); b[8] = TextBox33.Text.ToString(); b[9] = TextBox37.Text.ToString(); b[10] = TextBox41.Text.ToString(); b[11] = TextBox46.Text.ToString(); b[12] = TextBox49.Text.ToString(); b[13] = TextBox53.Text.ToString(); b[14] = TextBox58.Text.ToString(); b[15] = TextBox62.Text.ToString(); b[16] = TextBox66.Text.ToString(); b[17] = TextBox69.Text.ToString(); b[18] = TextBox73.Text.ToString(); b[19] = TextBox77.Text.ToString(); b[20] = TextBox81.Text.ToString(); b[21] = TextBox85.Text.ToString(); b[22] = TextBox90.Text.ToString(); b[23] = TextBox93.Text.ToString(); b[24] = TextBox98.Text.ToString();

            string[] c = new string[25];
            c[0] = TextBox2.Text; c[1] = TextBox7.Text.ToString(); c[2] = TextBox10.Text.ToString(); c[3] = TextBox15.Text.ToString(); c[4] = TextBox18.Text.ToString(); c[5] = TextBox22.Text.ToString(); c[6] = TextBox26.Text.ToString(); c[7] = TextBox30.Text.ToString(); c[8] = TextBox35.Text.ToString(); c[9] = TextBox38.Text.ToString(); c[10] = TextBox42.Text.ToString(); c[11] = TextBox47.Text.ToString(); c[12] = TextBox50.Text.ToString(); c[13] = TextBox54.Text.ToString(); c[14] = TextBox59.Text.ToString(); c[15] = TextBox63.Text.ToString(); c[16] = TextBox67.Text.ToString(); c[17] = TextBox71.Text.ToString(); c[18] = TextBox75.Text.ToString(); c[19] = TextBox78.Text.ToString(); c[20] = TextBox82.Text.ToString(); c[21] = TextBox86.Text.ToString(); c[22] = TextBox91.Text.ToString(); c[23] = TextBox95.Text.ToString(); c[24] = TextBox99.Text.ToString();

            string[] d = new string[25];
            d[0] = TextBox4.Text; d[1] = TextBox8.Text.ToString(); d[2] = TextBox12.Text.ToString(); d[3] = TextBox16.Text.ToString(); d[4] = TextBox19.Text.ToString(); d[5] = TextBox24.Text.ToString(); d[6] = TextBox28.Text.ToString(); d[7] = TextBox31.Text.ToString(); d[8] = TextBox36.Text.ToString(); d[9] = TextBox39.Text.ToString(); d[10] = TextBox43.Text.ToString(); d[11] = TextBox48.Text.ToString(); d[12] = TextBox52.Text.ToString(); d[13] = TextBox55.Text.ToString(); d[14] = TextBox60.Text.ToString(); d[15] = TextBox64.Text.ToString(); d[16] = TextBox68.Text.ToString(); d[17] = TextBox72.Text.ToString(); d[18] = TextBox76.Text.ToString(); d[19] = TextBox79.Text.ToString(); d[20] = TextBox83.Text.ToString(); d[21] = TextBox88.Text.ToString(); d[22] = TextBox92.Text.ToString(); d[23] = TextBox96.Text.ToString(); d[24] = TextBox100.Text.ToString();
            string ch1 = b[choice - 1], ch2 = c[choice - 1], ch3 = d[choice - 1];
            double num1, num2, num3;
            Double.TryParse(ch1,out num1);
            Double.TryParse(ch2, out num2);
            Double.TryParse(ch3, out num3);
            double nu = (num1 + num2 + num3)/100;
            System.Diagnostics.Debug.WriteLine(nu);
            SqlCommand com= new SqlCommand("insert into Knowledgeform (Email,Name,Topic,q1a,q1b,q1c,q1d,q2a,q2b,q2c,q2d,q3a,q3b,q3c,q3d,q4a,q4b,q4c,q4d,q5a,q5b,q5c,q5d,q6a,q6b,q6c,q6d,q7a,q7b,q7c,q7d,q8a,q8b,q8c,q8d,q9a,q9b,q9c,q9d,q10a,q10b,q10c,q10d,q11a,q11b,q11c,q11d,q12a,q12b,q12c,q12d,q13a,q13b,q13c,q13d,q14a,q14b,q14c,q14d,q15a,q15b,q15c,q15d,q16a,q16b,q16c,q16d,q17a,q17b,q17c,q17d,q18a,q18b,q18c,q18d,q19a,q19b,q19c,q19d,q20a,q20b,q20c,q20d,q21a,q21b,q21c,q21d,q22a,q22b,q22c,q22d,q23a,q23b,q23c,q23d,q24a,q24b,q24c,q24d,q25a,q25b,q25c,q25d,MU,NU) values ('"+semail+"','"+sname+"','"+DropDownList1.SelectedValue+"','"+TextBox1.Text+ "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + TextBox6.Text + "','" + TextBox7.Text + "','" + TextBox8.Text + "','" + TextBox9.Text + "','" + TextBox10.Text + "','" + TextBox11.Text + "','" + TextBox12.Text + "','" + TextBox13.Text + "','" + TextBox14.Text + "','" + TextBox15.Text + "','" + TextBox16.Text + "','" + TextBox17.Text + "','" + TextBox18.Text + "','" + TextBox19.Text + "','" + TextBox20.Text + "','" + TextBox21.Text + "','" + TextBox22.Text + "','" + TextBox23.Text + "','" + TextBox24.Text + "','" + TextBox25.Text + "','" + TextBox26.Text + "','" + TextBox27.Text + "','" + TextBox28.Text + "','" + TextBox29.Text + "','" + TextBox30.Text + "','" + TextBox31.Text + "','" + TextBox32.Text + "','" + TextBox33.Text + "','" + TextBox34.Text + "','" + TextBox35.Text + "','" + TextBox36.Text + "','" + TextBox37.Text + "','" + TextBox38.Text + "','" + TextBox39.Text + "','" + TextBox40.Text + "','" + TextBox41.Text + "','" + TextBox42.Text + "','" + TextBox43.Text + "','" + TextBox44.Text + "','" + TextBox45.Text + "','" + TextBox46.Text + "','" + TextBox47.Text + "','" + TextBox48.Text + "','" + TextBox49.Text + "','" + TextBox50.Text + "','" + TextBox51.Text + "','" + TextBox52.Text + "','" + TextBox53.Text + "','" + TextBox54.Text + "','" + TextBox55.Text + "','" + TextBox56.Text + "','" + TextBox57.Text + "','" + TextBox58.Text + "','" + TextBox59.Text + "','" + TextBox60.Text + "','" + TextBox61.Text + "','" + TextBox62.Text + "','" + TextBox63.Text + "','" + TextBox64.Text + "','" + TextBox65.Text + "','" + TextBox66.Text + "','" + TextBox67.Text + "','" + TextBox68.Text + "','" + TextBox69.Text + "','" + TextBox70.Text + "','" + TextBox71.Text + "','" + TextBox72.Text + "','" + TextBox73.Text + "','" + TextBox74.Text + "','" + TextBox75.Text + "','" + TextBox76.Text + "','" + TextBox77.Text + "','" + TextBox78.Text + "','" + TextBox79.Text + "','" + TextBox80.Text + "','" + TextBox81.Text + "','" + TextBox82.Text + "','" + TextBox83.Text + "','" + TextBox84.Text + "','" + TextBox85.Text + "','" + TextBox86.Text + "','" + TextBox87.Text + "','" + TextBox88.Text + "','" + TextBox89.Text + "','" + TextBox90.Text + "','" + TextBox91.Text + "','" + TextBox92.Text + "','" + TextBox93.Text + "','" + TextBox94.Text + "','" + TextBox95.Text + "','" + TextBox96.Text + "','" + TextBox97.Text + "','" + TextBox98.Text + "','" + TextBox99.Text + "','" + TextBox100.Text + "','" +mu + "','" + nu + "')", con);
            com.ExecuteNonQuery();
            con.Close();
            Session["MU3"] = mu;
            Session["NU3"] = nu;
            Response.Redirect("WebForm2.aspx");
        }
    }
}