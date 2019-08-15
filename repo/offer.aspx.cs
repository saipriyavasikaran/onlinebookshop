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

public partial class offer : System.Web.UI.Page
{
     MySqlConnection cn;
    protected void Page_Load(object sender, EventArgs e)
    {
        cn = new MySqlConnection("Server=localhost;Database=bookshop;Uid=root;Pwd=123");
        cn.Open();

        string date = DateTime.Now.ToShortDateString();
        Label1.Text = date;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        double off = Convert.ToDouble(TextBox1.Text);

         MySqlCommand cmd = new MySqlCommand("insert into offer values('" + Label1.Text + "'," + off + ")", cn);
        cmd.ExecuteNonQuery();

        TextBox1.Text = "";
        Response.Write("<script>alert('offer added Successfully')</script>");
    }
}
