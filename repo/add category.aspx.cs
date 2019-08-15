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
public partial class add_category : System.Web.UI.Page
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
        cmd = new MySqlCommand ("insert into category values('" + TextBox1.Text + "')", cn);
        cmd.ExecuteNonQuery();
        TextBox1.Text = "";
        Response.Write("<script>alert('Added Successfully')</script>");

    }
}
