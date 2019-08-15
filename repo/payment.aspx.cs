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

public partial class payment : System.Web.UI.Page
{
    MySqlCommand cmd;
     MySqlConnection cn;
    MySqlDataReader dr;

    double off;
    protected void Page_Load(object sender, EventArgs e)
    {
        cn = new MySqlConnection("Server=localhost;Database=bookshop;Uid=root;Pwd=123");
        cn.Open();

        string na = Convert.ToString(Session["user"]);
        Label9.Text = na;

        double tot = Convert.ToDouble(Session["price"]);




        //cmd = new MySqlCommand("select Slno from sales where CustName='" + Label9.Text + "' ", cn);
        //dr = cmd.ExecuteReader();
        //while (dr.Read())
        //{
        //    TextBox8 .Text  = "" + Convert.ToInt32(dr.GetValue(0));
        //}
        //dr.Close();
     


    
            cmd = new MySqlCommand("select Bname,Aname,Quantity,Date from sales where CustName='"+Label9 .Text +"' ", cn);

            dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                TextBox1.Text = dr.GetString(0);
                TextBox2.Text = dr.GetString(1);
                
                TextBox4.Text = "" + Convert.ToInt32(dr.GetValue(2));
                Label10.Text = dr.GetString(3);
            }
            dr.Close();
           
       
   
            cmd = new MySqlCommand("select offer from offer where Date='" + Label10.Text + "' ", cn);
            dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                off = Convert.ToDouble(dr.GetValue(0));
            }
            dr.Close();
          
        double total = 0;
            total = tot * off / 100;

            double tt = 0;
            tt = tot - total;
         TextBox3 .Text  = "" + tt;
         

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        int tot = Convert.ToInt32(TextBox8.Text) - Convert.ToInt32(TextBox3.Text);

        cmd = new MySqlCommand("select * from credit where creditno='" + TextBox5.Text + "' and expdate ='" + TextBox6.Text + "' ", cn);
        dr = cmd.ExecuteReader();

        if (dr.Read())
        {
            dr.Close();
            cmd = new MySqlCommand("insert into payment values('" + TextBox1.Text + "','" + TextBox2.Text + "'," + Convert.ToInt32(TextBox3.Text) + "," + Convert.ToInt32(TextBox4.Text) + ",'" + TextBox5.Text + "','" + TextBox6.Text + "','" + TextBox7.Text + "')", cn);
            cmd.ExecuteNonQuery();


            cmd = new MySqlCommand("update credit set cbal=" + tot + " where creditno='" + TextBox5.Text + "' ", cn);
            cmd.ExecuteNonQuery();

            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            TextBox5.Text = "";
            TextBox6.Text = "";
            TextBox7.Text = "";

        }
        else
        {
            dr.Close();
            Response .Write ("Check your credit card no..!");
            
        }
        Response.Redirect("thanks.aspx"); 
    }
    protected void TextBox4_TextChanged(object sender, EventArgs e)
    {

    }
    protected void TextBox8_TextChanged(object sender, EventArgs e)
    {

    }
    protected void TextBox5_TextChanged(object sender, EventArgs e)
    {
        cmd = new MySqlCommand("select cbal from credit where creditno='" + TextBox5.Text + "' ", cn);
        dr = cmd.ExecuteReader();
        while (dr.Read())
        {
            TextBox8.Text = "" + Convert.ToInt32(dr.GetValue(0));
        }
        dr.Close();

    }
}
