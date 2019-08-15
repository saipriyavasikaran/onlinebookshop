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

public partial class add_credit_amt : System.Web.UI.Page
{
     MySqlConnection cn;
    
  MySqlCommand cmd;
    MySqlDataReader dr;
    

    protected void Page_Load(object sender, EventArgs e)
    {
        cn = new MySqlConnection("Server=localhost;Database=bookshop;Uid=root;Pwd=123");
        cn.Open();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
       
        cmd = new MySqlCommand("select cbal from credit where creditno='" + TextBox1.Text + "'", cn);
        dr = cmd.ExecuteReader();
        while (dr.Read())
        {
            TextBox2.Text = "" + Convert.ToInt32(dr.GetValue(0));
        }
        dr.Close();
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        int tot=Convert .ToInt32 (TextBox2 .Text )+Convert .ToInt32 (TextBox3.Text );

        cmd = new  MySqlCommand ("update credit set cbal=" + tot + " where creditno='" + TextBox1.Text + "' ", cn);
        cmd.ExecuteNonQuery();
        TextBox1.Text = "";
        TextBox2.Text = "";
        TextBox3.Text = "";
        Response.Write("<script>alert('Amount Added Successfully')</script>");
    }
}
