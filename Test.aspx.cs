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
    public partial class Test : System.Web.UI.Page
    {
        SqlConnection con;
        protected void Page_Load(object sender, EventArgs e)
        {
            con = new SqlConnection("database=Elearning;server=.;uid=sa;pwd=1234");

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

             
                con.Open();
                //commands represent a query or a stored procedure       
                //cmd.CommandText = "SELECT buyEURrate FROM CurrencyRates";
                SqlCommand com = new SqlCommand("Select MU from dataset",con);
                double[] actual = new double[50];
                int i = 0;
                using (SqlDataReader rd = com.ExecuteReader())
                {
                    while (rd.Read())
                    {
                        actual[i++] = Convert.ToDouble(rd[0]);
                        
                       
                    }
                }
                con.Close();


            int[] actualclass = new int[50];
            for (int j = 0; j < 50; j++)
            {
                if (actual[j] <= 0.2)
                    actualclass[j] = 1;
                else if(actual[j]>0.2 && actual[j]<=0.4)
                    actualclass[j] = 2;
                else if (actual[j] > 0.4 && actual[j] <= 0.6)
                    actualclass[j] = 3;
                else if (actual[j] > 0.6 && actual[j] <= 0.8)
                    actualclass[j] = 4;
                else if (actual[j] > 0.8 && actual[j] <= 1.0)
                    actualclass[j] = 5;
            }
              con.Open();
            SqlCommand cmd = new SqlCommand("Select class from knn_test",con);
            int[] predicted = new int[50];
            int k = 0;
            using (SqlDataReader rd = cmd.ExecuteReader())
            {
                while (rd.Read())
                {
                   // string a = rd[0].ToString();
                    predicted[k++] = Convert.ToInt32(rd.GetValue(0));
                    //System.Diagnostics.Debug.WriteLine(a);

                }
            }
            con.Close();
           // for (int j = 0; j < 50; j++)
             //   System.Diagnostics.Debug.WriteLine(predicted[j]);

          //  int confusionmatrix[0,0] = 0, confusionmatrix[0,1] = 0, ac = 0, ad = 0, ae=0, ba = 0, bb = 0, bc = 0, bd = 0, be = 0, ca = 0, cb = 0, cc = 0, cd = 0, ce = 0, da = 0, db = 0, dc = 0, dd = 0, de = 0, ea = 0, eb = 0, ec = 0, ed = 0, ee = 0;
            int[][] confusionmatrix = new int[5][];
            confusionmatrix[0] = new int[5];
            confusionmatrix[1] = new int[5];
            confusionmatrix[2] = new int[5];
            confusionmatrix[3] = new int[5];
            confusionmatrix[4] = new int[5];

            for (int j = 0; j < 50; j++)
            {
                if (actualclass[j] == 1)
                {
                    if (predicted[j] == 1)
                        confusionmatrix[0][0]++;
                    else if (predicted[j] == 2)
                        confusionmatrix[0][1]++;
                    else if (predicted[j] == 3)
                        confusionmatrix[0][2]++;
                    else if (predicted[j] == 4)
                        confusionmatrix[0][3]++;
                    else if (predicted[j] == 5)
                        confusionmatrix[0][4]++;
                }

                if (actualclass[j] == 2)
                {
                    if (predicted[j] == 1)
                        confusionmatrix[1][0]++;
                    else if (predicted[j] == 2)
                        confusionmatrix[1][1]++;
                    else if (predicted[j] == 3)
                        confusionmatrix[1][2]++;
                    else if (predicted[j] == 4)
                        confusionmatrix[1][3]++;
                    else if (predicted[j] == 5)
                        confusionmatrix[1][4]++;
                }
                if (actualclass[j] == 3)
                {
                    if (predicted[j] == 1)
                        confusionmatrix[2][0]++;
                    else if (predicted[j] == 2)
                        confusionmatrix[2][1]++;
                    else if (predicted[j] == 3)
                        confusionmatrix[2][2]++;
                    else if (predicted[j] == 4)
                        confusionmatrix[2][3]++;
                    else if (predicted[j] == 5)
                        confusionmatrix[2][4]++;
                }
                if (actualclass[j] == 4)
                {
                    if (predicted[j] == 1)
                        confusionmatrix[3][0]++;
                    else if (predicted[j] == 2)
                        confusionmatrix[3][1]++;
                    else if (predicted[j] == 3)
                        confusionmatrix[3][2]++;
                    else if (predicted[j] == 4)
                        confusionmatrix[3][3]++;
                    else if (predicted[j] == 5)
                        confusionmatrix[3][4]++;
                }
                if (actualclass[j] == 5)
                {
                    if (predicted[j] == 1)
                        confusionmatrix[4][0]++;
                    else if (predicted[j] == 2)
                        confusionmatrix[4][1]++;
                    else if (predicted[j] == 3)
                        confusionmatrix[4][2]++;
                    else if (predicted[j] == 4)
                        confusionmatrix[4][3]++;
                    else if (predicted[j] == 5)
                        confusionmatrix[4][4]++;
                }
            }

            System.Diagnostics.Debug.WriteLine(confusionmatrix[0][0]);
            

           /* confusionmatrix[0][0] = aa; confusionmatrix[0][1] = confusionmatrix[0,1]; confusionmatrix[0][2] = ac; confusionmatrix[0][3] = ad; confusionmatrix[0][4] = ae;
            confusionmatrix[1][0] = ba; confusionmatrix[1][1] = bb; confusionmatrix[1][2] = bc; confusionmatrix[1][3] = bd; confusionmatrix[1][4] = be;
            confusionmatrix[2][0] = ca; confusionmatrix[2][1] = cb; confusionmatrix[2][2] = cc; confusionmatrix[2][3] = cd; confusionmatrix[2][4] = ce;
            confusionmatrix[3][0] = da; confusionmatrix[3][1] = db; confusionmatrix[3][2] = dc; confusionmatrix[3][3] = dd; confusionmatrix[3][4] = de;
            confusionmatrix[4][0] = ea; confusionmatrix[4][1] = eb; confusionmatrix[4][2] = ec; confusionmatrix[4][3] = ed; confusionmatrix[4][4] = ee;
            */
            int tp = 0, all = 0;
            for (int j = 0; j < 5; j++)
            {
                for (int l = 0; l < 5; l++)
                {
                    all += confusionmatrix[j][l];
                    if (j == l)
                        tp += confusionmatrix[j][l];
                }

            }
            System.Diagnostics.Debug.WriteLine(tp);
            System.Diagnostics.Debug.WriteLine(all);

            double accuracy = (double)tp / (double)all;
            System.Diagnostics.Debug.WriteLine(accuracy);
            
        }
    }
}