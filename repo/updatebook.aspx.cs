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

public partial class updatebook : System.Web.UI.Page
{
    
      MySqlConnection cn;
    protected void Page_Load(object sender, EventArgs e)
    {
        cn = new MySqlConnection("Server=localhost;Database=bookshop;Uid=root;Pwd=123");
        cn.Open();
    }
    protected void TextBox5_TextChanged(object sender, EventArgs e)
    {

    }
    protected void TextBox6_TextChanged(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        string na = TextBox1.Text;

         MySqlCommand cmd = new MySqlCommand("select Aname,Category,Price,Stock,Img,Publisher,preview from books where Bname='"+na+"' ",cn);

        MySqlDataReader r= cmd.ExecuteReader();

        if (r.Read())
        {

            TextBox2.Text = r.GetString(0);
            TextBox7.Text = r.GetString(1);
            TextBox3.Text = "" + r.GetInt32(2);
            TextBox4.Text = "" + r.GetInt32(3);
            Label1.Text = r.GetString(4);
            Image1.ImageUrl = "~/addbook/" + Label1.Text;
            TextBox5.Text = r.GetString(5);
            TextBox6.Text = r.GetString(6);

        }
        r.Close();
    }
    protected void TextBox4_TextChanged(object sender, EventArgs e)
    {

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
         MySqlCommand cmd = new MySqlCommand("update books set Price="+Convert.ToInt32(TextBox3.Text)+",Stock="+Convert.ToInt32(TextBox4.Text)+",Publisher='"+TextBox5.Text+"',preview='"+TextBox6.Text+"' where Bname='"+TextBox1.Text+"'  ",cn);

        cmd.ExecuteNonQuery();

        TextBox1.Text = "";
        TextBox2.Text = "";
        TextBox3.Text = "";
        TextBox4.Text = "";
        TextBox5.Text = "";
        TextBox6.Text = "";
        TextBox7.Text = "";
        Label1.Text = "";
    }
}
