using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Xml.Linq;
using System.Data.Sql;
using MySql.Data.MySqlClient;

public partial class Customer : System.Web.UI.MasterPage
{
     MySqlConnection cn;
  
    protected void Page_Load(object sender, EventArgs e)
    {
        cn = new MySqlConnection("Server=localhost;Database=bookshop;Uid=root;Pwd=123");
        cn.Open();

        string date = DateTime.Now.ToShortDateString();

        try
        {
             MySqlCommand cmd = new MySqlCommand("select offer from offer where Date='" + date + "' ", cn);

            MySqlDataReader r= cmd.ExecuteReader();



            if (r.Read())
            {
                Label1.Text = "" + Convert.ToDouble(r.GetValue(0));

            }

            r.Close();
        }
        catch (Exception ee)
        {
           // Response.Write("" + ee.ToString());
        }
    }
}
