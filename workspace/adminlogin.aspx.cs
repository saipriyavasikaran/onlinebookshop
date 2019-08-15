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

public partial class adminlogin : System.Web.UI.Page
{
     MySqlConnection cn;
    protected void Page_Load(object sender, EventArgs e)
    {
        cn = new MySqlConnection("Server=localhost;Database=bookshop;Uid=root;Pwd=123");
        cn.Open();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string na = TextBox1.Text;
        string pwd = TextBox2.Text;

        if (na == "admin" && pwd == "pass")
        {

            Response.Redirect("~/frontadmin.aspx");

        }
        else
        {
             MySqlCommand cmd = new MySqlCommand("select * from customers where Email='"+na+"' and Password='"+pwd+"' ",cn);

            MySqlDataReader r= cmd.ExecuteReader();

            if (r.Read())
            {

                Session["user"] = Convert.ToString(TextBox1.Text);
                Response.Redirect("~/frontcust.aspx");

            }
            else
            {
                Label1.Text = "Check the username or password........";
            }
        }
    }
}
