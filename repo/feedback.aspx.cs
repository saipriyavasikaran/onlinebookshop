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

public partial class feedback : System.Web.UI.Page
{
     MySqlConnection cn;

    protected void Page_Load(object sender, EventArgs e)
    {
        cn = new MySqlConnection("Server=localhost;Database=bookshop;Uid=root;Pwd=123");
        cn.Open();


        string time = DateTime.Today.ToShortDateString();
        string naa = Convert.ToString(Session["user"]);

        Label3.Text = naa;
        Label1.Text = time;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        string na = Label3.Text;
        string feed = TextBox1.Text;

        string date = Label1.Text;

        MySqlCommand  cmd = new MySqlCommand("insert into feedback values('"+date+"','"+na+"','"+feed+"','"+TextBox2 .Text +"')",cn);

        cmd.ExecuteNonQuery();

        TextBox1.Text = "";
        TextBox2.Text = "";


    }
}
