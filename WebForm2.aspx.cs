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
    public partial class WebForm2 : System.Web.UI.Page
    {
        SqlConnection con;
        string email;
        protected void Page_Load(object sender, EventArgs e)
        {
            con = new SqlConnection("database=Elearning;server=.;uid=sa;pwd=1234");
            // Label2.Text = Session["email"].ToString();
            Label2.Text = Session["name"].ToString();
            email = Session["email"].ToString();
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Session.Remove("email");
            Session.Remove("name");
            Session.Remove("class");
            Session.Remove("Mu");
            Session.Remove("Nu");
            Response.Redirect("WebForm1.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int n = 1;
            while (n > 0)
            {
                n--;
                con.Open();

                //  int n = 100;

                // int j = 1;
                //   for(int j=1;j<=50;j++)
                // {
                //RandomNumbers.Seed((uint)(time(0)));
                /*   double MU1 = GlobalMembers.random_weight(0, 1);
                   double MU2 = GlobalMembers.random_weight(0, 1);
                   double MU3 = GlobalMembers.random_weight(0, 1);
                   // double a1 = 1;
                   double NU1 = (double)1 - MU1;
                   double NU2 = (double)1 - MU2;
                   double NU3 = (double)1 - MU3;
                  */ //    double w1=random_weight(0,1),w2=random_weight(0,1),w3=random_weight(0,1);

                //double MU=1-((1-pow(MU1,w1))*(1-pow(MU2,w2))*(1-pow(MU3,w3)));
                /*     double MU1 = Convert.ToDouble(Session["MU1"]);
                     double MU2 = Convert.ToDouble(Session["MU2"]);
                     double MU3 = Convert.ToDouble(Session["MU3"]);
                     double NU1 = Convert.ToDouble(Session["NU1"]);
                     double NU2 = Convert.ToDouble(Session["NU2"]);
                     double NU3 = Convert.ToDouble(Session["NU3"]);
                     */
                string semail = Session["email"].ToString();
                string sname = Session["name"].ToString();
                SqlCommand cmd = new SqlCommand("Select MU_Aggregate,NU_Aggregate from LearningForm Where Email='" + semail + "'", con);
                SqlDataReader dr = cmd.ExecuteReader();
                DataTable dt = new DataTable();
                dt.Load(dr);
                int flag = 1;
                if (dt.Rows.Count <= 0)
                {
                    //   ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Please fill the Learning Style questionnaire first.')", true);
                    Session["flag"] = 0;
                    Response.Redirect("Learningform.aspx");

                }
                double MU1 = Convert.ToDouble(dt.Rows[0][0]);
                double NU1 = Convert.ToDouble(dt.Rows[0][1]);

                SqlCommand cmd1 = new SqlCommand("Select MU,NU from PersonalityForm Where Email='" + semail + "'", con);
                SqlDataReader dr1 = cmd1.ExecuteReader();
                DataTable dt1 = new DataTable();
                dt1.Load(dr1);

                if (dt1.Rows.Count <= 0)
                {
                    Session["flag"] = 0;
                    Response.Redirect("Personalityform.aspx");

                }
                double MU2 = Convert.ToDouble(dt1.Rows[0][0]);
                double NU2 = Convert.ToDouble(dt1.Rows[0][1]);
                SqlCommand cmd2 = new SqlCommand("Select MU,NU from Knowledgeform Where Email='" + semail + "'", con);
                SqlDataReader dr2 = cmd2.ExecuteReader();
                DataTable dt2 = new DataTable();
                dt2.Load(dr2);

                if (dt2.Rows.Count <= 0)
                {
                    Session["flag"] = 0;
                    Response.Redirect("Knowledgelevel.aspx");

                }
                double MU3 = Convert.ToDouble(dt2.Rows[0][0]);
                double NU3 = Convert.ToDouble(dt2.Rows[0][1]);

                double averageMU = (MU1 + MU2 + MU3) / 3;
                double diffMU1 = MU1 - NU1;
                double diffMU2 = MU2 - NU2;
                double diffMU3 = MU3 - NU3;
                double averagediffMU = (diffMU1+ diffMU2+ diffMU3) /3;
                int generation = 0;

                List<Individual> population = new List<Individual>();
                bool found = false;
                List<Indiv> pop = new List<Indiv>();
                for (int i = 0; i < DefineConstants.POPULATION_SIZE; i++)
                {
                    //string gnome = create_gnome();
                    population.Add(new Individual(MU1, MU2, MU3));
                    pop.Add(new Indiv(NU1, NU2, NU3));
                    //cout<<population[i].fitness<<" ";
                }

                while (!found)
                {

                    if (generation == 100)
                    {
                        found = true;
                        break;
                    }
                    // List<int> integers = new List<int>();
                    List<Individual> new_generation = new List<Individual>();
                    List<Indiv> new_gen = new List<Indiv>();
                    int s = (80 * DefineConstants.POPULATION_SIZE) / 100;
                    for (int i = 10; i < s + 10; i++)
                    {
                        new_generation.Add(population[i]);
                        new_gen.Add(pop[i]);
                        // cout<<population[i].fitness<<" ";
                    }
                    s = (20 * DefineConstants.POPULATION_SIZE) / 100;
                    for (int i = 0; i < s; i++)
                    {
                        //  int len = population.size();
                        int r = GlobalMembers.random_num(0, 5);
                        Individual parent1 = population[r];
                        Indiv par1 = pop[r];
                        //cout<<population[r].fitness<<" ";
                        r = GlobalMembers.random_num(0, 5);
                        Individual parent2 = population[r];
                        Indiv par2 = pop[r];
                        //cout<<population[r].fitness<<" ";
                        Individual offspring = parent1.mate(parent2);
                        Indiv offsp = par1.mat(par2);
                        new_generation.Add(offspring);
                        new_gen.Add(offsp);
                        //cout<<new_generation[i].fitness<<" ";
                    }
                    population = new_generation;
                    pop = new_gen;
                    //	cout<< "Generation: " << generation << "\t";
                    //cout<< population[0].chromosome <<endl;

                    generation++;
                }
                //cout<< generation << "\t";
                double X = Convert.ToDouble(population[0].chromosome);
                double Y = Convert.ToDouble(pop[0].chromo);
                //System.Diagnostics.Debug.WriteLine("MU-" + X);
                // System.Diagnostics.Debug.WriteLine("NU-" + Y);
                if (X + Y > 1)
                    Y = (double)1 - X;
                Session["Mu"] = X;
                Session["Nu"] = Y;
                knn a = new knn();
                a.KNN();
                int c;
                c = Convert.ToInt32(Session["class"]);

                SqlCommand com = new SqlCommand("insert into Class (Email,Name,MU,NU,Class,Generation,Mu1,Mu2,Mu3,AverageMu,Mu1diff,Mu2diff,Mu3diff,averageMudiff) values('" + semail + "','" + sname + "','" + X + "','" + Y + "','" + c + "','" + generation + "','" + MU1 + "','" + MU2 + "','" + MU3 + "','" + averageMU + "','" + diffMU1 + "','" + diffMU2 + "','" + diffMU3 + "','" + averagediffMU + "')", con);
                com.ExecuteNonQuery();
                //}



                //    Response.Redirect("knn.aspx");
                string cl;
                if (c == 1)
                    cl = "Low";
                else if (c == 2)
                    cl = "Low-Medium";
                else if (c == 3)
                    cl = "Medium";
                else if (c == 4)
                    cl = "Medium-High";
                else
                    cl = "High";


                con.Close();
            }
            //Response.Redirect("WebForm2.aspx");
            //Response.Write("<script language='javascript'>window.alert('You belong to class "+cl+"');window.location='WebForm2.aspx';</script>");

        }
        internal static class DefineConstants
        {
            public const int POPULATION_SIZE = 100;
        }

        public class Individual
        {
            double chromosome1;
            double chromosome2;
            double chromosome3;
            public string chromosome;
            public double fitness;
            
            public double w2 = GlobalMembers.random_weight(0.2, 0.3);
            public double w3 = GlobalMembers.random_weight(0.3, 0.6);
            public double w1;

            public Individual()
            { }
            
            public Individual(double chromosome1, double chromosome2, double chromosome3)
            {
                this.chromosome1 = chromosome1;
                this.chromosome2 = chromosome2;
                this.chromosome3 = chromosome3;
                fitness = cal_fitness();

                chromosome = fitness.ToString();
            }

            public Individual mate(Individual parent2)
            {
                string child_chromosome1 = "";
                string child_chromosome2 = "";
                string child_chromosome3 = "";
                int l = chromosome.Length;
                int l1 = parent2.chromosome.Length;
                int len;
                if (l1 < l)
                    len = l1;
                else
                    len = l;
                for (int i = 2; i < len; i++)
                {

                    double p = GlobalMembers.random_weight(0, 1);
                    //cout<<p<<" ";
                    if (p < 0.6)
                    {
                        child_chromosome1 += chromosome[i];
                    }

                    else if (p < 0.80)
                    {
                        child_chromosome1 += parent2.chromosome[i];
                    }

                    else
                    {
                        child_chromosome1 += (char)GlobalMembers.mutated_genes();
                    }
                }
                for (int i = 2; i < len; i++)
                {
                    double p = GlobalMembers.random_weight(0, 1);
                    if (p < 0.6)
                    {
                        child_chromosome2 += chromosome[i];
                    }

                    else if (p < 0.80)
                    {
                        child_chromosome2 += parent2.chromosome[i];
                    }

                    else
                    {
                        child_chromosome2 += (char)GlobalMembers.mutated_genes();
                    }
                }
                for (int i = 2; i < len; i++)
                {
                    double p = GlobalMembers.random_weight(0, 1);
                    if (p < 0.6)
                    {
                        child_chromosome3 += chromosome[i];
                    }

                    else if (p < 0.80)
                    {
                        child_chromosome3 += parent2.chromosome[i];
                    }

                    else
                    {
                        child_chromosome3 += (char)GlobalMembers.mutated_genes();
                    }
                }
                child_chromosome1 = "0." + child_chromosome1;
                child_chromosome2 = "0." + child_chromosome2;
                child_chromosome3 = "0." + child_chromosome3;
                //cout<<child_chromosome1<<" "<<child_chromosome2<<" "<<child_chromosome3<<" ";
                string c1 = child_chromosome1;
                string c2 = child_chromosome2;
                string c3 = child_chromosome3;
                double number, number1, number2;
                Double.TryParse(c1, out number);
                Double.TryParse(c2, out number1);
                Double.TryParse(c3, out number2);
                Individual ret = new Individual(number, number1, number2);
                return ret;
            }
            public double cal_fitness()
            {
                int len = GlobalMembers.TARGET.Length;


                w1 = (double)1 - w2 - w3;
                /*
                                w2 = GlobalMembers.random_weight(0.2, 0.3);
                                w3 = GlobalMembers.random_weight(0.3, 0.6);
                                w1 = (double)1 - w2 - w3;*/
                fitness = 1 - ((Math.Pow(1 - chromosome1, w1)) * (Math.Pow(1 - chromosome2, w2)) * (Math.Pow(1 - chromosome3, w3)));
                //cout<<fitness<<" ";

               // System.Diagnostics.Debug.WriteLine("w1");
                //System.Diagnostics.Debug.WriteLine(w1);
                //System.Diagnostics.Debug.WriteLine("w2");
                //System.Diagnostics.Debug.WriteLine(w2);
                //System.Diagnostics.Debug.WriteLine("w3");
                //System.Diagnostics.Debug.WriteLine(w3);
                return fitness;
            }
        }

        public class Indiv : Individual
        {
            public double chromo1;
            public double chromo2;
            public double chromo3;
            public string chromo;
            public double fit;
            public Indiv(double chromo1, double chromo2, double chromo3)
            {
                this.chromo1 = chromo1;
                this.chromo2 = chromo2;
                this.chromo3 = chromo3;
                fit = cal_fit();

                chromo = fit.ToString();
            }
            public Indiv mat(Indiv par2)
            {
                string child_chromo1 = "";
                string child_chromo2 = "";
                string child_chromo3 = "";
                int len, l1 = par2.chromo.Length;
                int l = chromo.Length;
                if (l1 < l)
                    len = l1;
                else
                    len = l;

                for (int i = 2; i < len; i++)
                {

                    double p = GlobalMembers.random_weight(0, 1);
                    //cout<<p<<" ";
                    if (p < 0.6)
                    {
                        child_chromo1 += chromo[i];
                    }

                    else if (p < 0.80)
                    {
                        child_chromo1 += par2.chromo[i];
                    }

                    else
                    {
                        child_chromo1 += (char)GlobalMembers.mutated_genes();
                    }
                }
                for (int i = 2; i < len; i++)
                {
                    double p = GlobalMembers.random_weight(0, 1);
                    if (p < 0.6)
                    {
                        child_chromo2 += chromo[i];
                    }

                    else if (p < 0.80)
                    {
                        child_chromo2 += par2.chromo[i];
                    }

                    else
                    {
                        child_chromo2 += (char)GlobalMembers.mutated_genes();
                    }
                }
                for (int i = 2; i < len; i++)
                {
                    double p = GlobalMembers.random_weight(0, 1);
                    if (p < 0.6)
                    {
                        child_chromo3 += chromo[i];
                    }

                    else if (p < 0.80)
                    {
                        child_chromo3 += par2.chromo[i];
                    }

                    else
                    {
                        child_chromo3 += (char)GlobalMembers.mutated_genes();
                    }
                }
                child_chromo1 = "0." + child_chromo1;
                child_chromo2 = "0." + child_chromo2;
                child_chromo3 = "0." + child_chromo3;
                //cout<<child_chromosome1<<" "<<child_chromosome2<<" "<<child_chromosome3<<" ";
                string c1 = child_chromo1;
                string c2 = child_chromo2;
                string c3 = child_chromo3;
                double number, number1, number2;
                Double.TryParse(c1, out number);
                Double.TryParse(c2, out number1);
                Double.TryParse(c3, out number2);
                Indiv ret = new Indiv(number, number1, number2);
                return ret;
            }
            public double cal_fit()
            {
                int len = GlobalMembers.TARGET.Length;
                //double we2 = w2;
                //double we2 = GlobalMembers.random_weight(0, 0.4);
                //double we3 = w3;
                double we1 = (double)1 - w2 - w3;
              //  System.Diagnostics.Debug.WriteLine("we1");
              //  System.Diagnostics.Debug.WriteLine(we1);
              //  System.Diagnostics.Debug.WriteLine("we2");
              //  System.Diagnostics.Debug.WriteLine(w2);
               // System.Diagnostics.Debug.WriteLine("we3");
               // System.Diagnostics.Debug.WriteLine(w3);

                double fit = ((Math.Pow(chromo1, we1)) * (Math.Pow(chromo2, w2)) * (Math.Pow(chromo3, w3)));
                //cout<<fitness<<" ";
                Console.Clear();

                return fit;
            }
            
        }
        public static class GlobalMembers
        {
            public const string GENES = "0123456789";
            public const string TARGET = "0.300000";

            //   public static double weight1 = random_weight(0, 1);
            // public static double weight2 = random_weight(0, 1);
            // public static double weight3 = random_weight(0, 1);
            //   System.Diagnostics.Debug.WriteLine(weight1);
            //     System.Diagnostics.Debug.WriteLine(weight2);
            // System.Diagnostics.Debug.WriteLine(weight3);
            /*   public static string to_string(double x)
               {
                   ostringstream x_convert = new ostringstream();
                   x_convert << x;
                   return x_convert.str();
               }*/
            public static int random_num(int start, int end)
            {
                //srand((unsigned)(time(0)));
                int range = (end - start) + 1;
                int random_int = start + (RandomNumbers.NextNumber() % range);
                return random_int;
            }

            public static double random_weight(double start, double end)
            { //srand((unsigned)(time(0)));
              //double u;


                Random random = new Random();

                return random.NextDouble() * (end - start) + start;
            }

            public static char mutated_genes()
            {
                int len = GENES.Length;
                int r = random_num(0, len - 1);
                return GENES[r];
            }

            public static string create_gnome()
            {
                int len = TARGET.Length;
                string gnome = "";
                for (int i = 0; i < len; i++)
                {
                    gnome += (char)mutated_genes();
                }
                return gnome;
            }


            /*
            public static bool operator <(Individual ind1, Individual ind2)
            {
                return ind1.fitness < ind2.fitness;
            }
            */



        }
        internal static class RandomNumbers
        {
            private static System.Random r;

            internal static int NextNumber()
            {
                if (r == null)
                    Seed();

                return r.Next();
            }

            internal static int NextNumber(int ceiling)
            {
                if (r == null)
                    Seed();

                return r.Next(ceiling);
            }

            internal static void Seed()
            {
                r = new System.Random();
            }

            internal static void Seed(int seed)
            {
                r = new System.Random(seed);
            }
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Please fill the three questionnares first to get your class evaluated.')", true);

        }

        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Please fill the three questionnares first to get your class evaluated.')", true);

        }
    }
}