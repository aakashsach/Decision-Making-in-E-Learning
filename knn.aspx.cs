using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using static Elearning.knn.GlobalMembers;

namespace Elearning
{
    public partial class knn : System.Web.UI.Page
    {
        SqlConnection con;
        protected void Page_Load(object sender, EventArgs e)
        {
            con = new SqlConnection("database=Elearning;server=.;uid=sa;pwd=1234");

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
        }
        public void KNN()
        {
            SqlConnection con;
            con = new SqlConnection("database=Elearning;server=.;uid=sa;pwd=1234");

            // Driver code
            con.Open();
            Console.WriteLine("IN");
                int n = 50; 
                Point[] arr = Arrays.InitializeWithDefaultInstances<Point>(n);

                arr[0].x = 0.5493779356;
                arr[0].y = 0.4460971265;
                arr[0].val = 3;

                arr[1].x = 0.6281709386;
                arr[1].y = 0.3678103937;
                arr[1].val = 3;

                arr[2].x = 0.6413995009;
                arr[2].y = 0.3547418961;
                arr[2].val = 3;

                arr[3].x = 0.367154403;
                arr[3].y = 0.6288472778;
                arr[3].val = 2;

                arr[4].x = 0.114333035307852;
                arr[4].y = 0.862496463660773;
                arr[4].val = 1;

                arr[5].x = 0.265242516651246;
                arr[5].y = 0.7364773181673603;
                arr[5].val = 2;

                arr[6].x = 1;
                arr[6].y = 0;
                arr[6].val = 5;

                arr[7].x = 0;
                arr[7].y = 1;
                arr[7].val = 1;

                arr[8].x = 0.210170785447055;
                arr[8].y = 0.60892277415721365;
                arr[8].val = 2;

                arr[9].x = 0.549342855178795;
                arr[9].y = 0.372928073247785;
                arr[9].val = 3;

                arr[10].x = 0.954877832862991;
                arr[10].y = 0.00439111776480067;
                arr[10].val = 5;

                arr[11].x = 0.539824708606188;
                arr[11].y = 0.386226507092239;
                arr[11].val = 3;

                arr[12].x = 0.659841463848929;
                arr[12].y = 0.331434695263712;
                arr[12].val = 4;

                arr[13].x = 0.00519068174474113;
                arr[13].y = 0.99855929869824;
                arr[13].val = 1;

                arr[14].x = 0.845166239741578;
                arr[14].y = 0.101692160073953;
                arr[14].val = 5;

                arr[15].x = 0.814664546837928;
                arr[15].y = 0.0007781578678635;
                arr[15].val = 3;

                arr[16].x = 0.681767431203843;
                arr[16].y = 0.200813538558891749;
                arr[16].val = 4;


                arr[17].x = 0.99008820541392;
                arr[17].y = 0.00991179458608005;
                arr[17].val = 5;

                arr[18].x = 0.0398889971606825;
                arr[18].y = 0.925045450223118;
                arr[18].val = 1;

                arr[19].x = 0.658766982071757;
                arr[19].y = 0.242875466469898;
                arr[19].val = 4;

                arr[20].x = 0.773210681152009;
                arr[20].y = 0.133290858173628;
                arr[20].val = 4;

                arr[21].x = 0.970556622432421;
                arr[21].y = 0.029443377567579;
                arr[21].val = 5;

                arr[22].x = 0.769854922718349;
                arr[22].y = 0.201692160073953;
                arr[22].val = 3;

                arr[23].x = 0.514664546837928;
                arr[23].y = 0.447781578678635;
                arr[23].val = 3;

                arr[24].x = 0.878206769030643;
                arr[24].y = 0.119120281587129;
                arr[24].val = 5;





                arr[25].x = 0.7193779356;
                arr[25].y = 0.1960971265;
                arr[25].val = 4;

                arr[26].x = 0.2281709386;
                arr[26].y = 0.7678103937;
                arr[26].val = 2;

                arr[27].x = 0.0893995009;
                arr[27].y = 0.8747128961;
                arr[27].val = 1;

                arr[28].x = 0.157071772907706;
                arr[28].y = 0.812017435244829;
                arr[28].val = 1;

                arr[29].x = 0.236357891694641;
                arr[29].y = 0.720322559749456;
                arr[29].val = 2;

                arr[30].x = 0.677729008812284;
                arr[30].y = 0.286691900767018;
                arr[30].val = 4;

                arr[31].x = 0.943855093357106;
                arr[31].y = 0.036550860261046;
                arr[31].val = 5;

                arr[32].x = 0.759768296870859;
                arr[32].y = 0.2306362079309277;
                arr[32].val = 4;

                arr[33].x = 0.198753671949794;
                arr[33].y = 0.800662084013932;
                arr[33].val = 1;

                arr[34].x = 0.36624362331787;
                arr[34].y = 0.627477909208214;
                arr[34].val = 2;

                arr[35].x = 0.865242516651246;
                arr[35].y = 0.1264773181673603;
                arr[35].val = 5;

                arr[36].x = 0.229901504363571;
                arr[36].y = 0.731434695263712;
                arr[36].val = 2;

                arr[37].x = 0.00519068174474113;
                arr[37].y = 0.99855929869824;
                arr[37].val = 1;

                arr[38].x = 0.940530059982812;
                arr[38].y = 0.03843685234811;
                arr[38].val = 5;

                arr[39].x = 0.647205887193696;
                arr[39].y = 0.3077291066472032;
                arr[39].val = 4;

                arr[40].x = 0.489771832286662;
                arr[40].y = 0.407895356375058;
                arr[40].val = 3;


                arr[41].x = 0.700449395289339;
                arr[41].y = 0.272883445716579;
                arr[41].val = 4;

                arr[42].x = 0.133474080353546;
                arr[42].y = 0.825045450223118;
                arr[42].val = 1;

                arr[43].x = 0.996860230478687;
                arr[43].y = 0.001465405706454;
                arr[43].val = 5;

                arr[44].x = 0.240221478803396;
                arr[44].y = 0.60846006251659519;
                arr[44].val = 2;

                arr[45].x = 0.334591593808972;
                arr[45].y = 0.629443377567579;
                arr[45].val = 2;

                arr[46].x = 0.189058153194143;
                arr[46].y = 0.801692160073953;
                arr[46].val = 1;

                arr[47].x = 0.372687182949549;
                arr[47].y = 0.5109549758157765;
                arr[47].val = 2;

                arr[48].x = 0.559841463848929;
                arr[48].y = 0.437727622177304;
                arr[48].val = 4;


                arr[49].x = 0.570884764281727;
                arr[49].y = 0.316923279262305;
                arr[49].val = 3;


       
            /*Testing Point*/
            Point p = new Point();
            //    p.x = 0.8564012742715305;
              //  p.y = 0.12611657130651;

            p.x = Convert.ToDouble(Session["Mu"]);
            p.y= Convert.ToDouble(Session["Nu"]);
            Console.WriteLine(p.x);

                int k =25;
            System.Diagnostics.Debug.WriteLine(p.x);
            int ans = classifyAPoint(arr, n, k, p);
            //  SqlCommand com = new SqlCommand("insert into Class (Class) values('"+ans+"')",con);
            // com.ExecuteNonQuery();
            Session["class"] = ans;
            con.Close();

            System.Diagnostics.Debug.WriteLine(ans);

          //  Response.Redirect("knn.aspx");
      
        }
        public class Point:IComparable<Point>
        {
            
                public int CompareTo(Point that)
            {
                if (this.distance< that.distance) return -1;
                if (this.distance == that.distance) return 0;
                return 1;
            }
        
            //Point p=new Point();
            public int val; 
            public double x; 
            public double y;
            public double distance; 
        }

        public static class GlobalMembers
        {

            public static int classifyAPoint(Point[] arr, int n, int k, Point p)
            {
                for (int i = 0; i < n; i++)
                {
                    arr[i].distance = Math.Sqrt((arr[i].x - p.x) * (arr[i].x - p.x) + (arr[i].y - p.y) * (arr[i].y - p.y));
                }

            
                Array.Sort(arr);


                int freq1 = 0; 
                int freq2 = 0; 
                int freq3 = 0;
                int freq4 = 0;
                int freq5 = 0;
                for (int i = 0; i < k; i++)
                {

                    if (arr[i].val == 1)
                    {
                        freq1++;
                    }
                    else if (arr[i].val == 2)
                    {
                        freq2++;
                    }

                    else if (arr[i].val == 3)
                    {
                        freq3++;
                    }
                    else if (arr[i].val == 4)
                    {
                        freq4++;
                    }
                    else if (arr[i].val == 5)
                    {
                        freq5++;
                    }
                }
             
               /* System.Diagnostics.Debug.WriteLine(freq1);
                System.Diagnostics.Debug.WriteLine(freq2);
                System.Diagnostics.Debug.WriteLine(freq3);
                System.Diagnostics.Debug.WriteLine(freq4);
                System.Diagnostics.Debug.WriteLine(freq5);
                */
                int m = (Math.Max(freq1, Math.Max(freq2, Math.Max(freq3, Math.Max(freq4, freq5)))));
                if (m == freq1)
                {
                    return 1;
                }
                else if (m == freq2)
                {
                    return 2;
                }
                else if (m == freq3)
                {
                    return 3;
                }
                else if (m == freq4)
                {
                    return 4;
                }
                else
                {
                    return 5;
                }

            }

            internal static class Arrays
            {
                internal static T[] InitializeWithDefaultInstances<T>(int length) where T : new()
                {
                    T[] array = new T[length];
                    for (int i = 0; i < length; i++)
                    {
                        array[i] = new T();
                    }
                    return array;
                }

                internal static void DeleteArray<T>(T[] array) where T : System.IDisposable
                {
                    foreach (T element in array)
                    {
                        if (element != null)
                            element.Dispose();
                    }
                }
            }


        }
    }
}