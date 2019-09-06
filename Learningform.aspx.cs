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
   
    public partial class Learningform : System.Web.UI.Page
    {
        SqlConnection con;

        protected void Page_Load(object sender, EventArgs e)
        {
            con = new SqlConnection("database=Elearning;server=.;uid=sa;pwd=1234");
            if (Convert.ToInt32(Session["flag"]) == 0)
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Please fill the Learning form.')", true);

            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            con.Open();
            string sname = Session["name"].ToString();
            string semail = Session["email"].ToString();
            // SqlCommand com = new SqlCommand("insert into LearningForm (q1) values ('"+RadioButtonList1.SelectedItem.Value+"')",con);
            var radioButtons = new List<RadioButtonList>()
{
    RadioButtonList1,
    RadioButtonList2,
    RadioButtonList3,
    RadioButtonList4,
    RadioButtonList05,
            RadioButtonList5,
            RadioButtonList6,
            RadioButtonList7,
            RadioButtonList8,
            RadioButtonList9,
            RadioButtonList10,
            RadioButtonList11,
            RadioButtonList12,
            RadioButtonList13,
            RadioButtonList14,
            RadioButtonList15,
            RadioButtonList16,
            RadioButtonList17,
            RadioButtonList18,
            RadioButtonList19,
            RadioButtonList20,
            RadioButtonList21,
            RadioButtonList22,
            RadioButtonList23,
            RadioButtonList24,
            RadioButtonList25,
            RadioButtonList26,
            RadioButtonList27,
            RadioButtonList28,
            RadioButtonList29,
            RadioButtonList30,
            RadioButtonList31,
            RadioButtonList32,
            RadioButtonList33,
            RadioButtonList34,
            RadioButtonList35,
            RadioButtonList36,
            RadioButtonList37,
            RadioButtonList38,
            RadioButtonList39,
            RadioButtonList40,
            RadioButtonList41,
            RadioButtonList42,
            RadioButtonList43,

};

            int active=0, reflective=0, sensing=0, intuitive=0, visual=0, verbal=0, sequential=0, global=0;

            foreach (RadioButtonList rbl in radioButtons)
            {
                if (rbl == RadioButtonList1 || rbl == RadioButtonList16 || rbl == RadioButtonList24 || rbl == RadioButtonList28 || rbl == RadioButtonList05 || rbl == RadioButtonList8 || rbl == RadioButtonList12 || rbl == RadioButtonList20 || rbl == RadioButtonList32 || rbl == RadioButtonList36 || rbl == RadioButtonList40)
                {
                    if (rbl.SelectedItem.Value == "1")
                    {
                        active++;
                    }
                    else if (rbl.SelectedItem.Value == "2")
                    {
                        reflective++;
                    }
                }

                else if (rbl == RadioButtonList2 || rbl == RadioButtonList13 || rbl == RadioButtonList21 || rbl == RadioButtonList25 || rbl == RadioButtonList29 || rbl == RadioButtonList33 || rbl == RadioButtonList5 || rbl == RadioButtonList9 || rbl == RadioButtonList17 || rbl == RadioButtonList37 || rbl == RadioButtonList41)
                {
                    if (rbl.SelectedItem.Value == "1")
                    {
                        sensing++;
                    }
                    else if (rbl.SelectedItem.Value == "2")
                    {
                        intuitive++;
                    }
                }

                else if (rbl == RadioButtonList14 || rbl == RadioButtonList18 || rbl == RadioButtonList26 || rbl == RadioButtonList34 || rbl == RadioButtonList3 || rbl == RadioButtonList6 || rbl == RadioButtonList10 || rbl == RadioButtonList22 || rbl == RadioButtonList30 || rbl == RadioButtonList38 || rbl == RadioButtonList42)
                {
                    if (rbl.SelectedItem.Value == "1")
                    {
                        visual++;
                    }
                    else if (rbl.SelectedItem.Value == "2")
                    {
                        verbal++;
                    }
                }

                else  if(rbl == RadioButtonList4 || rbl == RadioButtonList7 || rbl == RadioButtonList11 || rbl == RadioButtonList15 || rbl == RadioButtonList27 || rbl == RadioButtonList39 || rbl == RadioButtonList23 || rbl == RadioButtonList31 || rbl == RadioButtonList19 || rbl == RadioButtonList35 || rbl == RadioButtonList43)
                {
                    if (rbl.SelectedItem.Value == "1")
                    {
                        sequential++;
                    }
                    else if (rbl.SelectedItem.Value == "2")
                    {
                        global++;
                    }
                }
            }
            double Active_NU, Active_MU, Active_PI, Reflective_NU, Reflective_MU, Reflective_PI, Sensing_NU, Sensing_MU, Sensing_PI, Intuitive_NU, Intuitive_MU, Intuitive_PI, Visual_NU, Visual_MU, Visual_PI, Verbal_NU, Verbal_MU, Verbal_PI, Sequential_NU, Sequential_MU, Sequential_PI, Global_NU, Global_MU, Global_PI,MU,NU;

            Active_NU = (1 - (double)active / (double)11) / (1 + 0.02 * (double)active / (double)11);
            Active_PI = (1 - (double)active / 11 - (1 - (double)active / (double)11) / (1 + 0.2 * (double)active / (double)11));
            Active_MU = 1 - Active_NU - Active_PI;


            Reflective_NU = (1 - (double)reflective / (double)11) / (1 + 0.02 * (double)reflective / (double)11);
            Reflective_PI = (1 - (double)reflective / (double)11 - (1 - (double)reflective / (double)11) / (1 + 0.2 * (double)reflective / (double)11));
            Reflective_MU = 1 - Reflective_NU - Reflective_PI;

            Sensing_NU = (1 - (double)sensing / (double)11) / (1 + 0.02 * (double)sensing / (double)11);
            Sensing_PI = (1 - (double)sensing / (double)11 - (1 - (double)sensing / (double)11) / (1 + 0.2 * (double)sensing / (double)11));
            Sensing_MU = 1 - Sensing_NU - Sensing_PI;

            Intuitive_NU = (1 - (double)intuitive / (double)11) / (1 + 0.02 * (double)intuitive / (double)11);
            Intuitive_PI = (1 - (double)intuitive / (double)11 - (1 - (double)intuitive / (double)11) / (1 + 0.2 * (double)intuitive / (double)11));
            Intuitive_MU = 1 - Intuitive_NU - Intuitive_PI;

            Visual_NU = (1 - (double)visual / (double)11) / (1 + 0.02 * (double)visual / (double)11);
            Visual_PI = (1 - (double)visual / (double)11 - (1 - (double)visual / (double)11) / (1 + 0.2 * (double)visual / (double)11));
            Visual_MU = 1 - Visual_NU - Visual_PI;

            Verbal_NU = (1 - (double)verbal / (double)11) / (1 + 0.02 * (double)verbal / (double)11);
            Verbal_PI = (1 - (double)verbal / (double)11 - (1 - (double)verbal / (double)11) / (1 + 0.2 * (double)verbal / (double)11));
            Verbal_MU = 1 - Verbal_NU - Verbal_PI;

            Sequential_NU = (1 - (double)sequential / (double)11) / (1 + 0.02 * (double)sequential / (double)11);
            Sequential_PI = (1 - (double)sequential / (double)11 - (1 - (double)sequential / (double)11) / (1 + 0.2 * (double)sequential / (double)11));
            Sequential_MU = 1 - Sequential_NU - Sequential_PI;

            Global_NU = (1 - (double)global / (double)11) / (1 + 0.02 * (double)global / (double)11);
            Global_PI = (1 - (double)global / (double)11 - (1 - (double)global / (double)11) / (1 + 0.2 * (double)global / (double)11));
            Global_MU = 1 - Global_NU - Global_PI;

           double w1 = 0.136363679203415, w2 = 0.113636399334929, w3 = 0.145334663058232, w4 = 0.104665104656513, w5 = 0.167464167442957, w6 = 0.0825359110968862, w7 = 0.132775161329773, w8 = 0.117224913877294;

            MU = 1 -((Math.Pow((1 - Active_MU), w1)) * (Math.Pow((1 - Reflective_MU), w2)) * (Math.Pow((1 - Sensing_MU), w3)) * (Math.Pow((1 - Intuitive_MU), w4)) * (Math.Pow((1 - Visual_MU), w5)) * (Math.Pow((1 - Verbal_MU), w6)) * (Math.Pow((1 - Sequential_MU), w7)) * (Math.Pow((1 - Global_MU), w8)));
            NU = ((Math.Pow(Active_NU, w1)) * (Math.Pow(Reflective_NU, w2)) * (Math.Pow(Sensing_NU, w3)) * (Math.Pow(Intuitive_NU, w4)) * (Math.Pow(Visual_NU, w5)) * (Math.Pow(Verbal_NU, w6)) * (Math.Pow(Sequential_NU, w7)) * (Math.Pow(Global_NU, w8)));
            SqlCommand com = new SqlCommand("insert into LearningForm (Email,Name,q1,q2,q3,q4,q5,q6,q7,q8,q9,q10,q11,q12,q13,q14,q15,q16,q17,q18,q19,q20,q21,q22,q23,q24,q25,q26,q27,q28,q29,q30,q31,q32,q33,q34,q35,q36,q37,q38,q39,q40,q41,q42,q43,q44,Active,Active_NU,Active_PI,Active_MU,Reflective,Reflective_NU,Reflective_PI,Reflective_MU,Sensive,Sensive_NU,Sensive_PI,Sensive_MU,Intuitive,Intuitive_NU,Intuitive_PI,Intuitive_MU,Visual,Visual_NU,Visual_PI,Visual_MU,Verbal,Verbal_NU,Verbal_PI,Verbal_MU,Sequential,Sequential_NU,Sequential_PI,Sequential_MU,Global,Global_NU,Global_PI,Global_MU,MU_Aggregate,NU_Aggregate) values (@email,@name,@q1,@q2,@q3,@q4,@q5,@q6,@q7,@q8,@q9,@q10,@q11,@q12,@q13,@q14,@q15,@q16,@q17,@q18,@q19,@q20,@q21,@q22,@q23,@q24,@q25,@q26,@q27,@q28,@q29,@q30,@q31,@q32,@q33,@q34,@q35,@q36,@q37,@q38,@q39,@q40,@q41,@q42,@q43,@q44,@active,@NU1,@PI1,@MU1,@reflective,@NU2,@PI2,@MU2,@sensing,@NU3,@PI3,@MU3,@intuitive,@NU4,@PI4,@MU4,@visual,@NU5,@PI5,@MU5,@verbal,@NU6,@PI6,@MU6,@sequential,@NU7,@PI7,@MU7,@global,@NU8,@PI8,@MU8,@MU,@NU)", con);
            com.Parameters.AddWithValue("@email", semail);
            com.Parameters.AddWithValue("@name", sname);
            com.Parameters.AddWithValue("@q1", RadioButtonList1.SelectedItem.Value);
            com.Parameters.AddWithValue("@q2", RadioButtonList2.SelectedItem.Value);

            com.Parameters.AddWithValue("@q3", RadioButtonList3.SelectedItem.Value);
            com.Parameters.AddWithValue("@q4", RadioButtonList4.SelectedItem.Value);
            com.Parameters.AddWithValue("@q5", RadioButtonList05.SelectedItem.Value);
            com.Parameters.AddWithValue("@q6", RadioButtonList5.SelectedItem.Value);
            com.Parameters.AddWithValue("@q7", RadioButtonList6.SelectedItem.Value);
            com.Parameters.AddWithValue("@q8", RadioButtonList7.SelectedItem.Value);
            com.Parameters.AddWithValue("@q9", RadioButtonList8.SelectedItem.Value);
            com.Parameters.AddWithValue("@q10", RadioButtonList9.SelectedItem.Value);
            com.Parameters.AddWithValue("@q11", RadioButtonList10.SelectedItem.Value);
            com.Parameters.AddWithValue("@q12", RadioButtonList11.SelectedItem.Value);
            com.Parameters.AddWithValue("@q13", RadioButtonList12.SelectedItem.Value);
            com.Parameters.AddWithValue("@q14", RadioButtonList13.SelectedItem.Value);
            com.Parameters.AddWithValue("@q15", RadioButtonList14.SelectedItem.Value);
            com.Parameters.AddWithValue("@q16", RadioButtonList15.SelectedItem.Value);
            com.Parameters.AddWithValue("@q17", RadioButtonList16.SelectedItem.Value);
            com.Parameters.AddWithValue("@q18", RadioButtonList17.SelectedItem.Value);
            com.Parameters.AddWithValue("@q19", RadioButtonList18.SelectedItem.Value);
            com.Parameters.AddWithValue("@q20", RadioButtonList19.SelectedItem.Value);
            com.Parameters.AddWithValue("@q21", RadioButtonList20.SelectedItem.Value);
            com.Parameters.AddWithValue("@q22", RadioButtonList21.SelectedItem.Value);
            com.Parameters.AddWithValue("@q23", RadioButtonList22.SelectedItem.Value);
            com.Parameters.AddWithValue("@q24", RadioButtonList23.SelectedItem.Value);
            com.Parameters.AddWithValue("@q25", RadioButtonList24.SelectedItem.Value);
            com.Parameters.AddWithValue("@q26", RadioButtonList25.SelectedItem.Value);
            com.Parameters.AddWithValue("@q27", RadioButtonList26.SelectedItem.Value);
            com.Parameters.AddWithValue("@q28", RadioButtonList27.SelectedItem.Value);
            com.Parameters.AddWithValue("@q29", RadioButtonList28.SelectedItem.Value);
            com.Parameters.AddWithValue("@q30", RadioButtonList29.SelectedItem.Value);
            com.Parameters.AddWithValue("@q31", RadioButtonList30.SelectedItem.Value);
            com.Parameters.AddWithValue("@q32", RadioButtonList31.SelectedItem.Value);
            com.Parameters.AddWithValue("@q33", RadioButtonList32.SelectedItem.Value);
            com.Parameters.AddWithValue("@q34", RadioButtonList33.SelectedItem.Value);
            com.Parameters.AddWithValue("@q35", RadioButtonList34.SelectedItem.Value);
            com.Parameters.AddWithValue("@q36", RadioButtonList35.SelectedItem.Value);
            com.Parameters.AddWithValue("@q37", RadioButtonList36.SelectedItem.Value);
            com.Parameters.AddWithValue("@q38", RadioButtonList37.SelectedItem.Value);
            com.Parameters.AddWithValue("@q39", RadioButtonList38.SelectedItem.Value);
            com.Parameters.AddWithValue("@q40", RadioButtonList39.SelectedItem.Value);
            com.Parameters.AddWithValue("@q41", RadioButtonList40.SelectedItem.Value);
            com.Parameters.AddWithValue("@q42", RadioButtonList41.SelectedItem.Value);
            com.Parameters.AddWithValue("@q43", RadioButtonList42.SelectedItem.Value);
            com.Parameters.AddWithValue("@q44", RadioButtonList43.SelectedItem.Value);

            com.Parameters.AddWithValue("@active", active);
            com.Parameters.AddWithValue("@NU1", Active_NU);
            com.Parameters.AddWithValue("@PI1", Active_PI);
            com.Parameters.AddWithValue("@MU1", Active_MU);

            com.Parameters.AddWithValue("@reflective",reflective);
            com.Parameters.AddWithValue("@NU2", Reflective_NU);
            com.Parameters.AddWithValue("@PI2", Reflective_PI);
            com.Parameters.AddWithValue("@MU2", Reflective_MU);

            com.Parameters.AddWithValue("@sensing", sensing);
            com.Parameters.AddWithValue("@NU3", Sensing_NU);
            com.Parameters.AddWithValue("@PI3", Sensing_PI);
            com.Parameters.AddWithValue("@MU3", Sensing_MU);

            com.Parameters.AddWithValue("@intuitive", intuitive);
            com.Parameters.AddWithValue("@NU4", Intuitive_NU);
            com.Parameters.AddWithValue("@PI4", Intuitive_PI);
            com.Parameters.AddWithValue("@MU4", Intuitive_MU);

            com.Parameters.AddWithValue("@visual", visual);
            com.Parameters.AddWithValue("@NU5", Visual_NU);
            com.Parameters.AddWithValue("@PI5", Visual_PI);
            com.Parameters.AddWithValue("@MU5", Visual_MU);

            com.Parameters.AddWithValue("@verbal", verbal);
            com.Parameters.AddWithValue("@NU6", Verbal_NU);
            com.Parameters.AddWithValue("@PI6", Verbal_PI);
            com.Parameters.AddWithValue("@MU6", Verbal_MU);

            com.Parameters.AddWithValue("@sequential", sequential);
            com.Parameters.AddWithValue("@NU7", Sequential_NU);
            com.Parameters.AddWithValue("@PI7", Sequential_PI);
            com.Parameters.AddWithValue("@MU7", Sequential_MU);

            com.Parameters.AddWithValue("@global", global);
            com.Parameters.AddWithValue("@NU8", Global_NU);
            com.Parameters.AddWithValue("@PI8", Global_PI);
            com.Parameters.AddWithValue("@MU8", Global_MU);
            com.Parameters.AddWithValue("@MU", MU);
            com.Parameters.AddWithValue("@NU", NU);

            com.ExecuteNonQuery();
            con.Close();
            Session["MU1"] = MU;
            Session["NU1"] = NU;
            Response.Redirect("WebForm2.aspx");
        }
    }
}