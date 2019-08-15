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

public partial class thanks : System.Web.UI.Page
{
     MySqlConnection cn;
    double off;
    protected void Page_Load(object sender, EventArgs e)
    {
        cn = new MySqlConnection("Server=localhost;Database=bookshop;Uid=root;Pwd=123");
        cn.Open();
        
        string na = Convert.ToString(Session["user"]);

        string date = DateTime.Now.ToShortDateString();

        double tot = Convert.ToDouble(Session["price"]);

         MySqlCommand cmd = new MySqlCommand("select offer from offer where Date='" + date + "' ", cn);

        MySqlDataReader r= cmd.ExecuteReader();

        if (r.Read())
        {
            off = Convert.ToDouble(r.GetValue(0));
        }
        r.Close();

       
      

        double total = 0;
        total = tot * off / 100;

        double tt = 0;
        tt = tot - total;
        Label1.Text = "" + tt;
    }
}
