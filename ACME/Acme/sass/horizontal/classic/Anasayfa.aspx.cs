using ACME.Models.ORM.W2WMetro.Models.ORM;
using Newtonsoft.Json;
using Newtonsoft.Json.Linq;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ACME.Acme.sass.horizontal.classic
{
    public partial class Anasayfa1 : System.Web.UI.Page
    {
       
        

        public void Page_Load(object sender, EventArgs e)
        {

            litMsg.Visible = false;
            WebClient client = new WebClient();
            Stream stream = client.OpenRead("https://api.coindesk.com/v1/bpi/currentprice.json");
            using (StreamReader r = new StreamReader(stream))
            {
                string json = r.ReadToEnd();

                //List<Root> items = JsonConvert.DeserializeObject<List<Root>>(json);
                dynamic array = JsonConvert.DeserializeObject(json);
                JObject j = JObject.Parse(json);
                Root root = JsonConvert.DeserializeObject<Root>(json);
                string dolar_rate = root.bpi.USD.rate;
                string gbp_rate = root.bpi.GBP.rate;
                string euro_rate = root.bpi.EUR.rate;
                double euro_rate_float = root.bpi.EUR.rate_float;
                if (dolar_rate != dolarTextlabel.Text)
                {
                    Random rn = new Random();
                    int R1, G1, B1, R2, G2, B2, R3, G3, B3;
                    R1 = rn.Next(150, 255);
                    B1 = rn.Next(0, 150);
                    G1 = rn.Next(0, 150);
                    R2 = rn.Next(0, 150);
                    B2 = rn.Next(150, 255);
                    G2 = rn.Next(0, 150);
                    R3 = rn.Next(0, 150);
                    B3 = rn.Next(0, 150);
                    G3 = rn.Next(150, 255);

                    dolarTextlabel.ForeColor = System.Drawing.Color.FromArgb(R1, B1, G1);
                    euroTextLabel.ForeColor= System.Drawing.Color.FromArgb(R2, B2, G2);
                    gbpTextLabel.ForeColor = System.Drawing.Color.FromArgb(R3, B3, G3);
                    dolarTextlabel.Text = dolar_rate;
                    gbpTextLabel.Text = gbp_rate;
                    euroTextLabel.Text = euro_rate;
                }
                //if (dolar_rate != dolarTextlabel.Text)
                //{
                //    Random rn = new Random();
                //    int R, G, B;
                //    R = rn.Next(0, 255);
                //    B = rn.Next(0, 255);
                //    G = rn.Next(0, 255);

                //    dolarTextlabel.ForeColor = System.Drawing.Color.FromArgb(R, B, G);

                //    ////dolarTextlabel.Attributes.Add("style", "color:Blue;");
                //    //euroTextminus.Visible = true;
                //    //euroTextplus.Visible = false;
                //    dolarTextlabel.Text = dolar_rate;
                //    gbpTextLabel.Text = gbp_rate;
                //    euroTextLabel.Text = euro_rate;
                //}
                //if (gbp_rate != gbpTextLabel.Text)
                //{
                //    Random rn = new Random();
                //    int R, G, B;
                //    R = rn.Next(0, 255);
                //    B = rn.Next(0, 255);
                //    G = rn.Next(0, 255);

                //    gbpTextLabel.ForeColor = System.Drawing.Color.FromArgb(R, B, G);
                //    ////dolarTextlabel.Attributes.Add("style", "color:Blue;");
                //    //euroTextminus.Visible = true;
                //    //euroTextplus.Visible = false;
                //    dolarTextlabel.Text = dolar_rate;
                //    gbpTextLabel.Text = gbp_rate;
                //    euroTextLabel.Text = euro_rate;
                //}
                // if (euro_rate != euroTextLabel.Text)
                //{
                //    Random rn = new Random();
                //    int R, G, B;
                //    R = rn.Next(0, 255);
                //    B = rn.Next(0, 255);
                //    G = rn.Next(0, 255);

                //    euroTextLabel.ForeColor = System.Drawing.Color.FromArgb(R, B, G);
                //    ////dolarTextlabel.Attributes.Add("style", "color:Blue;");
                //    //euroTextminus.Visible = true;
                //    //euroTextplus.Visible = false;
                //    dolarTextlabel.Text = dolar_rate;
                //    gbpTextLabel.Text = gbp_rate;
                //    euroTextLabel.Text = euro_rate;
                //}
                //else
                //{
                else
                {

                    dolarTextlabel.Text = dolar_rate;
                gbpTextLabel.Text = gbp_rate;
                euroTextLabel.Text =euro_rate;
                }

                //}




            }
            if (!IsPostBack)
            {
                using (var context = new DataBaseContext())
                {
                    var Duzenle = (from i in context.Counters where i.ID == 1 select i).FirstOrDefault();
                    //Session["Timer"] = DateTime.Now.AddMinutes(Duzenle.Mınute).ToString();
                    Session["Timer"] = DateTime.Now.AddHours(Duzenle.Hour).ToString();
                    Session["TimerMınute"] = DateTime.Now.AddMinutes(Duzenle.Mınute).ToString();
                    Session["TimerSecond"] = DateTime.Now.AddSeconds(Duzenle.Second).ToString();
                }

             
            }
        }
        public class Time
        {
            public string updated { get; set; }
            public DateTime updatedISO { get; set; }
            public string updateduk { get; set; }
        }

        
        public class USD
        {
            public string code { get; set; }
            public string symbol { get; set; }
            public string rate { get; set; }
            public string description { get; set; }
            public double rate_float { get; set; }
        }

        public class GBP
        {
            public string code { get; set; }
            public string symbol { get; set; }
            public string rate { get; set; }
            public string description { get; set; }
            public double rate_float { get; set; }
        }

        public class EUR
        {
            public string code { get; set; }
            public string symbol { get; set; }
            public string rate { get; set; }
            public string description { get; set; }
            public double rate_float { get; set; }
        }

        public class Bpi
        {
            public USD USD { get; set; }
            public GBP GBP { get; set; }
            public EUR EUR { get; set; }
        }

        public class Root
        {
            public Time time { get; set; }
            public string disclaimer { get; set; }
            public string chartName { get; set; }
            public Bpi bpi { get; set; }
            //public IList<string> Bpi { get; set; }

        }
        protected void TimerTest_Tick(object sen,EventArgs e)
        {
            
            if (DateTime.Compare(DateTime.Now,DateTime.Parse(Session["Timer"].ToString()))<0 || DateTime.Compare(DateTime.Now, DateTime.Parse(Session["TimerMınute"].ToString())) < 0)
            {
                litMsg.Text="Time Left : " + ((Int32)DateTime.Parse(Session["Timer"].ToString()).Subtract(DateTime.Now).TotalMinutes).ToString()+" Minute " +(((Int32)DateTime.Parse(Session["Timer"].ToString()).Subtract(DateTime.Now).TotalSeconds)%60).ToString() + " Seconds";
                Literal1.Text =  (((Int32)DateTime.Parse(Session["TimerMınute"].ToString()).Subtract(DateTime.Now).TotalMinutes) % 60).ToString() ;
                Literal2.Text =  (((Int32)DateTime.Parse(Session["TimerSecond"].ToString()).Subtract(DateTime.Now).TotalSeconds) % 60).ToString() ;
                //Literal3.Text = (((Int32)DateTime.Parse(Session["Timer"].ToString()).Subtract(DateTime.Now).TotalHours) % 60).ToString();
                using (var context = new DataBaseContext())
                {
                    var Duzenle = (from i in context.Counters where i.ID == 1 select i).FirstOrDefault();
                    Literal3.Text = Duzenle.Hour.ToString();
                }
                    

                if ((((Int32)DateTime.Parse(Session["TimerSecond"].ToString()).Subtract(DateTime.Now).TotalSeconds) % 60)==0)
                {
                    using (var context = new DataBaseContext())
                    {
                        var Duzenle = (from i in context.Counters where i.ID == 1 select i).FirstOrDefault();
                       

                        if (Duzenle.Mınute == 1 && Duzenle.Hour>0)
                        {
                            Session["Timer"] = DateTime.Now.AddHours(Duzenle.Hour - 1).ToString();
                            Duzenle.Hour = Duzenle.Hour - 1;
                            Duzenle.Mınute = 60;
                            Session["TimerMınute"] = DateTime.Now.AddMinutes(Duzenle.Mınute).ToString();
                            
                            Session["TimerSecond"] = DateTime.Now.AddSeconds(60).ToString();


                        }
                        else if (Duzenle.Mınute == 1 && Duzenle.Hour==0)
                        {
                            Session["Timer"] = DateTime.Now.AddHours(0).ToString();
                            Duzenle.Hour = 0;
                            Duzenle.Mınute = 0;
                            Session["TimerMınute"] = DateTime.Now.AddMinutes(0).ToString();
                            Session["TimerSecond"] = DateTime.Now.AddSeconds(0).ToString();

                        }
                        else if (Duzenle.Hour == 1 && Duzenle.Mınute == 0)
                        {
                            Session["Timer"] = DateTime.Now.AddHours(0).ToString();
                            Duzenle.Hour = 0;
                            Duzenle.Mınute = 60;
                            Session["TimerMınute"] = DateTime.Now.AddMinutes(60).ToString();
                            Session["TimerSecond"] = DateTime.Now.AddSeconds(60).ToString();
                        }
                        else
                        {
                            Session["TimerMınute"] = DateTime.Now.AddMinutes(Duzenle.Mınute - 1).ToString();
                            Duzenle.Mınute = Duzenle.Mınute - 1;
                            Session["TimerSecond"] = DateTime.Now.AddSeconds(60).ToString();
                        }
                        
                        context.SaveChanges();
                    }
                }  


            }
            else
            {
                litMsg.Visible = true;
                litMsg.Text = "ZAMAN DOLDU..";
                

            }
        }

        public void MınuteOnclickUp(object sender, EventArgs e)
        {
            using (var context = new DataBaseContext())
            {
                var Duzenle = (from i in context.Counters where i.ID == 1 select i).FirstOrDefault();
                
                
               
                if (Duzenle.Mınute == 60 && Duzenle.Hour==10)
                {
                    
                    
                    Session["TimerMınute"] = DateTime.Now.AddMinutes(60).ToString();
                    Duzenle.Mınute = 60;
                }
                else if (Duzenle.Mınute == 60 &&Duzenle.Hour!=10)
                {
                    Session["Timer"] = DateTime.Now.AddHours(Duzenle.Hour + 1).ToString();
                    Duzenle.Hour = Duzenle.Hour + 1;
                    Session["TimerMınute"] = DateTime.Now.AddMinutes(1).ToString();
                    Duzenle.Mınute = 1;
                }
                else
                {
                    Session["TimerMınute"] = DateTime.Now.AddMinutes(Duzenle.Mınute + 1).ToString();
                    Duzenle.Mınute = Duzenle.Mınute + 1;
                    Session["TimerSecond"] = DateTime.Now.AddSeconds(59).ToString();
                }

                
                context.SaveChanges();
            } 
        }
        public void MınuteOnclickDown(object sender, EventArgs e)
        {
            using (var context = new DataBaseContext())
            {
                var Duzenle = (from i in context.Counters where i.ID == 1 select i).FirstOrDefault();
                
                
                if (Duzenle.Mınute-1==0)
                {
                    Session["Timer"] = DateTime.Now.AddHours(Duzenle.Hour - 1).ToString();
                    Duzenle.Hour=Duzenle.Hour-1;
                    Session["TimerMınute"] = DateTime.Now.AddMinutes(60).ToString();
                    Duzenle.Mınute = 60;
                }
                else
                {
                    Session["TimerMınute"] = DateTime.Now.AddMinutes(Duzenle.Mınute - 1).ToString();
                    Duzenle.Mınute = Duzenle.Mınute - 1;
                }
                
                context.SaveChanges();
            }
        }
        public void HourOnclickUp(object sender, EventArgs e)
        {
            using (var context = new DataBaseContext())
            {
                var Duzenle = (from i in context.Counters where i.ID == 1 select i).FirstOrDefault();

                if (Duzenle.Hour==10)
                {
                    Session["Timer"] = DateTime.Now.AddHours(10).ToString();
                    Duzenle.Hour = 10;
                }
                else if (Duzenle.Hour==0 && Duzenle.Mınute==0)
                {
                    //Session["Timer"] = DateTime.Now.AddHours(Duzenle.Hour + 1).ToString();
                    //Duzenle.Hour = Duzenle.Hour + 1;
                    Session["TimerSecond"] = DateTime.Now.AddSeconds(60).ToString();
                    Session["TimerMınute"] = DateTime.Now.AddMinutes(60).ToString();
                    Duzenle.Mınute = 60;
                }
                else
                {
                    Session["Timer"] = DateTime.Now.AddHours(Duzenle.Hour + 1).ToString();
                    Duzenle.Hour = Duzenle.Hour + 1;
                    Session["TimerSecond"] = DateTime.Now.AddSeconds(59).ToString();
                }
                

                context.SaveChanges();
            }
        }
        public void HourOnclickDown(object sender, EventArgs e)
        {
            using (var context = new DataBaseContext())
            {
                var Duzenle = (from i in context.Counters where i.ID == 1 select i).FirstOrDefault();

                if (Duzenle.Hour==0)
                {
                    Session["Timer"] = DateTime.Now.AddHours(0).ToString();
                    Duzenle.Hour = 0;
                }
                else
                {
                    Session["Timer"] = DateTime.Now.AddHours(Duzenle.Hour - 1).ToString();
                    Duzenle.Hour = Duzenle.Hour - 1;
                }
               
                context.SaveChanges();
            }
        }
    }
}