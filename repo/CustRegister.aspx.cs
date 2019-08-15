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

public partial class CustRegister : System.Web.UI.Page
{
     MySqlConnection cn;
    protected void Page_Load(object sender, EventArgs e)
    {


        cn = new MySqlConnection("Server=localhost;Database=bookshop;Uid=root;Pwd=123");
        cn.Open();


    }
    protected void Button1_Click(object sender, EventArgs e)
    {


         MySqlCommand cmd = new MySqlCommand("insert into customers values ('"+TextBox1.Text+"','"+TextBox2.Text+"','"+DropDownList1.SelectedItem.Text+"','"+TextBox3.Text+"','"+TextBox4.Text+"','"+TextBox5.Text+"','"+TextBox6.Text+"','"+TextBox7.Text+"') ",cn);
        cmd.ExecuteNonQuery();




        String toid = TextBox3.Text;
        string user = "Your UserName:"+TextBox3.Text + "\n" + "Your Password:"+TextBox7 .Text; 
      

        SmtpClient smtp = new System.Net.Mail.SmtpClient();


        smtp.Host = "smtp.gmail.com";
        smtp.Port = 587;
        smtp.EnableSsl = true;
        smtp.DeliveryMethod = System.Net.Mail.SmtpDeliveryMethod.Network;
        smtp.Credentials = new NetworkCredential("shripadma47@gmail.com", "cognitive");
        smtp.Timeout = 20000;

        // Passing values to smtp object
        smtp.Send("shripadma47@gmail.com", toid ,Label3 .Text ,user);
        



        TextBox1.Text = "";
        TextBox2.Text = "";
        TextBox3.Text = "";
        TextBox4.Text = "";
        TextBox5.Text = "";
        TextBox6.Text = "";
        TextBox7.Text = "";
        Response.Write("<script>alert('Registered Successfully')</script>");
    }
    protected void TextBox3_TextChanged(object sender, EventArgs e)
    {

    }
    protected void TextBox7_TextChanged(object sender, EventArgs e)
    {

    }
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }
}
