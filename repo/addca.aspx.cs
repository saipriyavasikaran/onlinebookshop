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
using System.Data.Sql;
using MySql.Data.MySqlClient;
using System.Net;
using System.Net.Mail;

public partial class addcart2 : System.Web.UI.Page
{
    MySqlConnection  cn, con, cnn;
    int sno;
    MySqlCommand  gmd;
    MySqlDataReader  h;
    string date;


    protected void Page_Load(object sender, EventArgs e)
    {

        cn = new MySqlConnection("Server=localhost;Database=bookshop;Uid=root;Pwd=123");
        cn.Open();
        con = new MySqlConnection("Server=localhost;Database=bookshop;Uid=root;Pwd=123");
        con.Open();
        cnn = new MySqlConnection("Server=localhost;Database=bookshop;Uid=root;Pwd=123");
        cnn.Open();
        


       
        


        string na = Convert.ToString(Session["user"]);
        Label5.Text = na;
       

        date = DateTime.Now.ToShortDateString();

        if (!IsPostBack)
        {
            sno = 1;

            Label3.Text = sno + "";

             MySqlCommand cmd = new MySqlCommand("select BName,AName,Image,Price,Quantity from addcart where Slno=" + sno + " ", cn);

            MySqlDataReader d = cmd.ExecuteReader();

            if (d.Read())
            {
                Label1.Text = d.GetString(0);
                Label2.Text = d.GetString(1);
                Label4.Text = d.GetString(2);
                TextBox1.Text = "" + d.GetInt32(3);
                TextBox2.Text = "" + d.GetInt32(4);
                Image1.ImageUrl = Label4.Text;
            }
            d.Close();
        }

    }
    protected void Button1_Click(object sender, EventArgs e)
    {

      
        int qua = Convert.ToInt32(TextBox2.Text);

     



        MySqlCommand jmd = new MySqlCommand("update addcart set Quantity=" + qua + " where Slno=" + Label3.Text + "", cn);

        jmd.ExecuteNonQuery();


        sno = Convert.ToInt32(Label3.Text);
        sno++;


        Label3.Text = sno + "";

        

        gmd = new MySqlCommand("select BName,AName,Image,Price,Quantity from addcart where Slno=" + sno + " ", cn);

        h = gmd.ExecuteReader();

        if (h.Read())
        {
            Label1.Text = h.GetString(0);
            Label2.Text = h.GetString(1);
            Label4.Text = h.GetString(2);
            TextBox1.Text = "" + h.GetInt32(3);
            TextBox2.Text = "" + h.GetInt32(4);
            Image1.ImageUrl = Label4.Text;

        }
        else
        {
            Button1.Enabled = false;
            Button2.Enabled = false;
        }
        h.Close();

        


       
        
        




    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        sno = Convert.ToInt32(Label3.Text);

        gmd = new MySqlCommand("delete from addcart where Slno=" + sno + " ", cn);
        gmd.ExecuteNonQuery();

        sno++;


        Label3.Text = sno + "";



        gmd = new MySqlCommand("select BName,AName,Image,Price,Quantity from addcart where Slno=" + sno + " ", cn);

        h = gmd.ExecuteReader();

        if (h.Read())
        {
            Label1.Text = h.GetString(0);
            Label2.Text = h.GetString(1);
            Label4.Text = h.GetString(2);
            TextBox1.Text = "" + h.GetInt32(3);
            TextBox2.Text = "" + h.GetInt32(4);
            Image1.ImageUrl = Label4.Text;

        }
        else
        {
            Button2.Enabled = false;
            Button1.Enabled = false;
        }
        h.Close();


        

    }
    protected void Button3_Click(object sender, EventArgs e)
    {

        int sl = 0, price = 0, quan = 0;

        string Bna, Ana, img, pre;
 
        MySqlCommand kmd = new MySqlCommand("select * from addcart", cn);

        MySqlDataReader g = kmd.ExecuteReader();


        double amt = 0;
        while (g.Read())
        {
             sl = g.GetInt32(0);
             Bna = g.GetString(1);
             Ana = g.GetString(2);
             img = g.GetString(3);
             pre = g.GetString(4);
             price = g.GetInt32(5);
             quan = g.GetInt32(6);
             amt = amt + (price * quan);
            
             MySqlCommand fmd = new MySqlCommand("insert into sales values('" + Label5.Text + "'," + sl + ",'" + Bna + "','" + Ana + "','" + img + "','" + pre + "'," + price + "," + quan + ",'" + date + "','waiting')", con);
             fmd.ExecuteNonQuery();

             
           

        }
        g.Close();

        MySqlCommand umd = new MySqlCommand("delete  from addcart", cnn);
        umd.ExecuteNonQuery();

        Session["price"] = amt;
      
      //  Response.Redirect("~/thanks.aspx");

        string toid = Label5.Text;

        SmtpClient smtp = new System.Net.Mail.SmtpClient();


        smtp.Host = "smtp.gmail.com";
        smtp.Port = 587;
        smtp.EnableSsl = true;
        smtp.DeliveryMethod = System.Net.Mail.SmtpDeliveryMethod.Network;
        smtp.Credentials = new NetworkCredential("shripadma47@gmail.com", "cognitive");
        smtp.Timeout = 20000;

        // Passing values to smtp object
        smtp.Send("shripadma47@gmail.com", toid,Label7 .Text ,Label6 .Text );





        Response.Redirect("~/make payment.aspx");
            

   }
}
