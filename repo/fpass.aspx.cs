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
public partial class fpass : System.Web.UI.Page
{
     MySqlConnection cn;
    
    protected void Page_Load(object sender, EventArgs e)
    {
        cn = new MySqlConnection("Server=localhost;Database=bookshop;Uid=root;Pwd=123");
        cn.Open();
        Label1.Visible = false;
        Label2.Visible = false;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
         MySqlCommand cmd = new  MySqlCommand ("select Password from customers where Email='"+TextBox1.Text+"'  ",cn);
        MySqlDataReader r= cmd.ExecuteReader();
        if (r.Read())
        {
            Label1.Visible = true;
            Label2.Visible = true;
            Label2.Text = r.GetString(0);

        }
        r.Close();
    }
}
