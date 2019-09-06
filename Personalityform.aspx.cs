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
    public partial class Personalityform : System.Web.UI.Page
    {
        SqlConnection con;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Convert.ToInt32(Session["flag"]) == 0)
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Please fill the Personality form.')", true);

            }
            con = new SqlConnection("database=Elearning;server=.;uid=sa;pwd=1234");

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            con.Open();
            string sname = Session["name"].ToString();
            string semail = Session["email"].ToString();
            // SqlCommand com = new SqlCommand("insert into LearningForm (q1) values ('"+RadioButtonList1.SelectedItem.Value+"')",con);
  

            int o , c , e1 , a , n ;
            
            e1 = 20 + Int32.Parse(RadioButtonList1.SelectedItem.Value) - Int32.Parse(RadioButtonList6.SelectedItem.Value) + Int32.Parse(RadioButtonList11.SelectedItem.Value) - Int32.Parse(RadioButtonList16.SelectedItem.Value) + Int32.Parse(RadioButtonList21.SelectedItem.Value) - Int32.Parse(RadioButtonList26.SelectedItem.Value) + Int32.Parse(RadioButtonList31.SelectedItem.Value) - Int32.Parse(RadioButtonList36.SelectedItem.Value) + Int32.Parse(RadioButtonList41.SelectedItem.Value) - Int32.Parse(RadioButtonList46.SelectedItem.Value);
            a = 14 - Int32.Parse(RadioButtonList2.SelectedItem.Value) + Int32.Parse(RadioButtonList7.SelectedItem.Value) - Int32.Parse(RadioButtonList12.SelectedItem.Value) + Int32.Parse(RadioButtonList17.SelectedItem.Value) - Int32.Parse(RadioButtonList22.SelectedItem.Value) + Int32.Parse(RadioButtonList27.SelectedItem.Value) - Int32.Parse(RadioButtonList32.SelectedItem.Value) + Int32.Parse(RadioButtonList37.SelectedItem.Value) + Int32.Parse(RadioButtonList42.SelectedItem.Value) + Int32.Parse(RadioButtonList47.SelectedItem.Value);
            c = 14 + Int32.Parse(RadioButtonList3.SelectedItem.Value) - Int32.Parse(RadioButtonList8.SelectedItem.Value) + Int32.Parse(RadioButtonList13.SelectedItem.Value) - Int32.Parse(RadioButtonList18.SelectedItem.Value) + Int32.Parse(RadioButtonList23.SelectedItem.Value) - Int32.Parse(RadioButtonList28.SelectedItem.Value) + Int32.Parse(RadioButtonList33.SelectedItem.Value) - Int32.Parse(RadioButtonList38.SelectedItem.Value) + Int32.Parse(RadioButtonList43.SelectedItem.Value) + Int32.Parse(RadioButtonList48.SelectedItem.Value);
            n = 38 - Int32.Parse(RadioButtonList4.SelectedItem.Value) + Int32.Parse(RadioButtonList9.SelectedItem.Value) - Int32.Parse(RadioButtonList14.SelectedItem.Value) + Int32.Parse(RadioButtonList19.SelectedItem.Value) - Int32.Parse(RadioButtonList24.SelectedItem.Value) - Int32.Parse(RadioButtonList29.SelectedItem.Value) - Int32.Parse(RadioButtonList34.SelectedItem.Value) - Int32.Parse(RadioButtonList39.SelectedItem.Value) - Int32.Parse(RadioButtonList44.SelectedItem.Value) - Int32.Parse(RadioButtonList49.SelectedItem.Value);
            o = 8 + Int32.Parse(RadioButtonList5.SelectedItem.Value) - Int32.Parse(RadioButtonList10.SelectedItem.Value) + Int32.Parse(RadioButtonList15.SelectedItem.Value) - Int32.Parse(RadioButtonList20.SelectedItem.Value) + Int32.Parse(RadioButtonList25.SelectedItem.Value) - Int32.Parse(RadioButtonList30.SelectedItem.Value) + Int32.Parse(RadioButtonList35.SelectedItem.Value) + Int32.Parse(RadioButtonList40.SelectedItem.Value) + Int32.Parse(RadioButtonList45.SelectedItem.Value) + Int32.Parse(RadioButtonList50.SelectedItem.Value);
            double O_NU, O_MU, O_PI, C_NU, C_MU, C_PI, E_NU, E_MU, E_PI, A_NU, A_MU, A_PI, N_NU, N_MU, N_PI, MU, NU;

            O_NU = (1 - (double)o / (double)40) / (1 + 0.02 * (double)o / (double)40);
            O_PI = (1 - (double)o / 40 - (1 - (double)o / (double)40) / (1 + 0.2 * (double)o / (double)40));
            O_MU = 1 - O_NU - O_PI;


            C_NU = (1 - (double)c / (double)40) / (1 + 0.02 * (double)c / (double)40);
            C_PI = (1 - (double)c / (double)40 - (1 - (double)c / (double)40) / (1 + 0.2 * (double)c / (double)40));
            C_MU = 1 - C_NU - C_PI;

            E_NU = (1 - (double)e1 / (double)40) / (1 + 0.02 * (double)e1 / (double)40);
            E_PI = (1 - (double)e1/ (double)40 - (1 - (double)e1 / (double)40) / (1 + 0.2 * (double)e1 / (double)40));
            E_MU = 1 - E_NU - E_PI;

            A_NU = (1 - (double)a / (double)40) / (1 + 0.02 * (double)a / (double)40);
            A_PI = (1 - (double)a / (double)40 - (1 - (double)a / (double)40) / (1 + 0.2 * (double)a / (double)40));
            A_MU = 1 - A_NU - A_PI;

            N_NU = (1 - (double)n / (double)40) / (1 + 0.02 * (double)n / (double)40);
            N_PI = (1 - (double)n / (double)40 - (1 - (double)n / (double)40) / (1 + 0.2 * (double)n / (double)40));
            N_MU = 1 - N_NU - N_PI;

            
            double w1 = 0.136363679203415, w2 = 0.113636399334929, w3 = 0.145334663058232, w4 = 0.104665104656513, w5 = 0.167464167442957;

            MU = 1 - ((Math.Pow((1 - O_MU), w1)) * (Math.Pow((1 - C_MU), w2)) * (Math.Pow((1 - E_MU), w3)) * (Math.Pow((1 - A_MU), w4)) * (Math.Pow((1 - N_MU), w5)));
            NU = ((Math.Pow(O_NU, w1)) * (Math.Pow(C_NU, w2)) * (Math.Pow(E_NU, w3)) * (Math.Pow(A_NU, w4)) * (Math.Pow(N_NU, w5)));

          //  System.Diagnostics.Debug.WriteLine(MU);
            SqlCommand com = new SqlCommand("insert into PersonalityForm (Email,Name,q1,q2,q3,q4,q5,q6,q7,q8,q9,q10,q11,q12,q13,q14,q15,q16,q17,q18,q19,q20,q21,q22,q23,q24,q25,q26,q27,q28,q29,q30,q31,q32,q33,q34,q35,q36,q37,q38,q39,q40,q41,q42,q43,q44,q45,q46,q47,q48,q49,q50,o,O_NU,O_PI,O_MU,c,C_NU,C_PI,C_MU,e,E_NU,E_PI,E_MU,a,A_NU,A_PI,A_MU,n,N_NU,N_PI,N_MU,MU,NU) values (@email,@name,@q1,@q2,@q3,@q4,@q5,@q6,@q7,@q8,@q9,@q10,@q11,@q12,@q13,@q14,@q15,@q16,@q17,@q18,@q19,@q20,@q21,@q22,@q23,@q24,@q25,@q26,@q27,@q28,@q29,@q30,@q31,@q32,@q33,@q34,@q35,@q36,@q37,@q38,@q39,@q40,@q41,@q42,@q43,@q44,@q45,@q46,@q47,@q48,@q49,@q50,@o,@NU1,@PI1,@MU1,@c,@NU2,@PI2,@MU2,@e,@NU3,@PI3,@MU3,@a,@NU4,@PI4,@MU4,@n,@NU5,@PI5,@MU5,@MU,@NU)", con);
            com.Parameters.AddWithValue("@email", semail);
            com.Parameters.AddWithValue("@name", sname);
            com.Parameters.AddWithValue("@q1", RadioButtonList1.SelectedItem.Value);
            com.Parameters.AddWithValue("@q2", RadioButtonList2.SelectedItem.Value);

            com.Parameters.AddWithValue("@q3", RadioButtonList3.SelectedItem.Value);
            com.Parameters.AddWithValue("@q4", RadioButtonList4.SelectedItem.Value);
            com.Parameters.AddWithValue("@q5", RadioButtonList5.SelectedItem.Value);

            com.Parameters.AddWithValue("@q6", RadioButtonList6.SelectedItem.Value);
            com.Parameters.AddWithValue("@q7", RadioButtonList7.SelectedItem.Value);
            com.Parameters.AddWithValue("@q8", RadioButtonList8.SelectedItem.Value);
            com.Parameters.AddWithValue("@q9", RadioButtonList9.SelectedItem.Value);
            com.Parameters.AddWithValue("@q10", RadioButtonList10.SelectedItem.Value);
            com.Parameters.AddWithValue("@q11", RadioButtonList11.SelectedItem.Value);
            com.Parameters.AddWithValue("@q12", RadioButtonList12.SelectedItem.Value);
            com.Parameters.AddWithValue("@q13", RadioButtonList13.SelectedItem.Value);
            com.Parameters.AddWithValue("@q14", RadioButtonList14.SelectedItem.Value);
            com.Parameters.AddWithValue("@q15", RadioButtonList15.SelectedItem.Value);
            com.Parameters.AddWithValue("@q16", RadioButtonList16.SelectedItem.Value);
            com.Parameters.AddWithValue("@q17", RadioButtonList17.SelectedItem.Value);
            com.Parameters.AddWithValue("@q18", RadioButtonList18.SelectedItem.Value);
            com.Parameters.AddWithValue("@q19", RadioButtonList19.SelectedItem.Value);
            com.Parameters.AddWithValue("@q20", RadioButtonList20.SelectedItem.Value);
            com.Parameters.AddWithValue("@q21", RadioButtonList21.SelectedItem.Value);
            com.Parameters.AddWithValue("@q22", RadioButtonList22.SelectedItem.Value);
            com.Parameters.AddWithValue("@q23", RadioButtonList23.SelectedItem.Value);
            com.Parameters.AddWithValue("@q24", RadioButtonList24.SelectedItem.Value);
            com.Parameters.AddWithValue("@q25", RadioButtonList25.SelectedItem.Value);
            com.Parameters.AddWithValue("@q26", RadioButtonList26.SelectedItem.Value);
            com.Parameters.AddWithValue("@q27", RadioButtonList27.SelectedItem.Value);
            com.Parameters.AddWithValue("@q28", RadioButtonList28.SelectedItem.Value);
            com.Parameters.AddWithValue("@q29", RadioButtonList29.SelectedItem.Value);
            com.Parameters.AddWithValue("@q30", RadioButtonList30.SelectedItem.Value);
            com.Parameters.AddWithValue("@q31", RadioButtonList31.SelectedItem.Value);
            com.Parameters.AddWithValue("@q32", RadioButtonList32.SelectedItem.Value);
            com.Parameters.AddWithValue("@q33", RadioButtonList33.SelectedItem.Value);
            com.Parameters.AddWithValue("@q34", RadioButtonList34.SelectedItem.Value);
            com.Parameters.AddWithValue("@q35", RadioButtonList35.SelectedItem.Value);
            com.Parameters.AddWithValue("@q36", RadioButtonList36.SelectedItem.Value);
            com.Parameters.AddWithValue("@q37", RadioButtonList37.SelectedItem.Value);
            com.Parameters.AddWithValue("@q38", RadioButtonList38.SelectedItem.Value);
            com.Parameters.AddWithValue("@q39", RadioButtonList39.SelectedItem.Value);
            com.Parameters.AddWithValue("@q40", RadioButtonList40.SelectedItem.Value);
            com.Parameters.AddWithValue("@q41", RadioButtonList41.SelectedItem.Value);
            com.Parameters.AddWithValue("@q42", RadioButtonList42.SelectedItem.Value);
            com.Parameters.AddWithValue("@q43", RadioButtonList43.SelectedItem.Value);
            com.Parameters.AddWithValue("@q44", RadioButtonList44.SelectedItem.Value);
            com.Parameters.AddWithValue("@q45", RadioButtonList45.SelectedItem.Value);
            com.Parameters.AddWithValue("@q46", RadioButtonList46.SelectedItem.Value);
            com.Parameters.AddWithValue("@q47", RadioButtonList47.SelectedItem.Value);
            com.Parameters.AddWithValue("@q48", RadioButtonList48.SelectedItem.Value);
            com.Parameters.AddWithValue("@q49", RadioButtonList49.SelectedItem.Value);
            com.Parameters.AddWithValue("@q50", RadioButtonList50.SelectedItem.Value);

            com.Parameters.AddWithValue("@o", o);
            com.Parameters.AddWithValue("@NU1", O_NU);
            com.Parameters.AddWithValue("@PI1", O_PI);
            com.Parameters.AddWithValue("@MU1", O_MU);

            com.Parameters.AddWithValue("@c", c);
            com.Parameters.AddWithValue("@NU2", C_NU);
            com.Parameters.AddWithValue("@PI2", C_PI);
            com.Parameters.AddWithValue("@MU2", C_MU);

            com.Parameters.AddWithValue("@e", e1);
            com.Parameters.AddWithValue("@NU3", E_NU);
            com.Parameters.AddWithValue("@PI3", E_PI);
            com.Parameters.AddWithValue("@MU3", E_MU);

            com.Parameters.AddWithValue("@a", a);
            com.Parameters.AddWithValue("@NU4", A_NU);
            com.Parameters.AddWithValue("@PI4", A_PI);
            com.Parameters.AddWithValue("@MU4", A_MU);

            com.Parameters.AddWithValue("@n", n);
            com.Parameters.AddWithValue("@NU5", N_NU);
            com.Parameters.AddWithValue("@PI5", N_PI);
            com.Parameters.AddWithValue("@MU5", N_MU);

            com.Parameters.AddWithValue("@MU", MU);
            com.Parameters.AddWithValue("@NU", NU);

            com.ExecuteNonQuery();
            con.Close();
            Session["MU2"] = MU;
            Session["NU2"] = NU;
            Response.Redirect("WebForm2.aspx");
        }
        
    }
}