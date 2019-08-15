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

public partial class add_credit_card : System.Web.UI.Page
{
     MySqlConnection cn;
     MySqlCommand cmd;

    protected void Page_Load(object sender, EventArgs e)
    {
        cn = new MySqlConnection("Server=localhost;Database=bookshop;Uid=root;Pwd=123");
        cn.Open();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        int bal = Convert.ToInt32(TextBox6.Text);
        cmd = new MySqlCommand ("insert into credit values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + DropDownList1.Text + "','" + TextBox5.Text + "'," +bal + ",'" + TextBox7.Text + "','" + TextBox8.Text + "','" + TextBox9.Text + "','" + TextBox10.Text + "','" + DropDownList2.Text + "')", cn);
        cmd.ExecuteNonQuery();

        TextBox1.Text = "";
        TextBox2.Text = "";
        TextBox3.Text = "";
        TextBox4.Text = "";
        TextBox5.Text = "";
        TextBox6.Text = "";
        TextBox7.Text = "";
        TextBox8.Text = "";
        TextBox9.Text = "";
        TextBox10.Text = "";
        Response.Write("<script>alert('Added Successfully')</script>");
    }
}
