using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
//using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

namespace Kitchen_project5
{
    public partial class Single_Product : System.Web.UI.Page
    {
        int i = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
           
            string x = Server.MapPath(@"~\comment.txt");
            using (StreamWriter co = File.AppendText(x))
            {
                co.WriteLine(add_comment.Text);
            }
            string[] rea = File.ReadAllLines(x);

            Label[] l = new Label[rea.Length];

            for (int i = 0; i < l.Length; i++)
            {
                l[i] = new Label();
                l[i].ID = $"lbl{i}";
            }


            for (int i = 0; i < l.Length; i++)
            {
                if (rea[i].Length > 0) { 
                l[i].Text = rea[i];
                    add_comment.Text = "";
                this.Controls.Add(l[i]);
                l[i].CssClass = "commented"; }
            }

            

            try
            {
                //string str = Request.QueryString["id"];
                //int x = Convert.ToInt32(str);
                SqlConnection cc = new SqlConnection("data source =DESKTOP-L7EOP8B\\SQLEXPRESS; database =KitchenProject ; integrated security=SSPI");

                //SqlCommand comand = new SqlCommand("select * from name_and_password", cc);
                cc.Open();
                string q = "select * from product where id='" + 0 + "'";
                SqlCommand com = new SqlCommand(q, cc);
                SqlDataReader sdr = com.ExecuteReader();
                if (sdr.Read())
                {
                    Label1.Text = (string)sdr[1];
                    product_img.ImageUrl = "~/images/"+(string)sdr[4];
                    description.Text = (string)sdr[2];
                    price.Text = (string)sdr[3]+ "JD";
                    //com.ExecuteNonQuery();

                }
                cc.Close();
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);

            }
        }

        protected void minus_Click(object sender, EventArgs e)
        {
            int c = Convert.ToInt32(quan.Text);
            if (c == 1) { quan.Text = "1"; }
            else if (c>1)
            {
                c--;
                quan.Text= c.ToString(); 
            }

        }

        protected void plus_Click(object sender, EventArgs e)
        {
            int c = Convert.ToInt32(quan.Text);
                c++;
                quan.Text = c.ToString();
            
        }

        protected void post_Click(object sender, EventArgs e)
        {/***********/
            //string x = Server.MapPath(@"~\comment.txt");
            //using (StreamWriter co = File.AppendText(x))
            //{
            //    co.WriteLine(add_comment.Text);
            //}
            //string[] rea = File.ReadAllLines(x);

            //Label[] l = new Label[rea.Length];

           
            //    l[rea.Length-1] = new Label();
                
            


          
            //    l[rea.Length - 1].Text = rea[rea.Length - 1];
            //    this.Controls.Add(l[rea.Length - 1]);
            

            
            
            
        }

        protected void addtocart_Click(object sender, EventArgs e)
        {

            try
            {
                //string str = Request.QueryString["id"];
                //int x = Convert.ToInt32(str);
                //Response.Redirect("cart.aspx?proID="+str);
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);

            }
        }
    }
}