using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using MySql.Data.MySqlClient;
using System.Net;
using System.Net.Mail;
public partial class mail : System.Web.UI.Page
{
    MySqlConnection cn, con;
    protected void Page_Load(object sender, EventArgs e)
    {
        cn = new MySqlConnection("Server=localhost;Database=bookshop;Uid=root;Pwd=123");
        cn.Open();
        con = new MySqlConnection("Server=localhost;Database=bookshop;Uid=root;Pwd=123");
        con.Open();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        MySqlCommand  sd = new MySqlCommand("Select Email from customers  ", cn);



        MySqlDataReader  rr = sd.ExecuteReader();


        while (rr.Read())
        {
            try
            {
                string toid = rr.GetString(0);




                SmtpClient smtp = new System.Net.Mail.SmtpClient();


                smtp.Host = "smtp.gmail.com";
                smtp.Port = 587;
                smtp.EnableSsl = true;
                smtp.DeliveryMethod = System.Net.Mail.SmtpDeliveryMethod.Network;
                smtp.Credentials = new NetworkCredential("shripadma47@gmail.com", "cognitive");
                smtp.Timeout = 20000;

                // Passing values to smtp object
                smtp.Send("shripadma47@gmail.com", toid, TextBox1.Text, TextBox2.Text);

              //   MyMySqlCommand cmd = new MySqlCommand("insert into  mail values('vino.4redvr@gmail.com','" + toid +"','" + TextBox1.Text + "','" + TextBox2.Text + "')", con);

               // cmd.ExecuteNonQuery();



            }

            catch (Exception ee)
            {
                Response.Write(ee.ToString());
            }
        }


        rr.Close();

       
        TextBox1.Text = "";
        TextBox2.Text = "";

        Response.Write("<script>alert('Mail Send Successfully')</script>");
    }
}
