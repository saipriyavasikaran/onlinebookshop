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

public partial class stockmainta : System.Web.UI.Page
{
     MySqlConnection cn;
    protected void Page_Load(object sender, EventArgs e)
    {

        cn = new MySqlConnection("Server=localhost;Database=bookshop;Uid=root;Pwd=123");
        cn.Open();

        MySqlDataAdapter ad = new MySqlDataAdapter("select Bname,Aname,Category,Price,Stock,Publisher,preview from books ",cn);

        DataSet ds = new DataSet();

        ad.Fill(ds);

        GridView1.DataSource = ds;

        GridView1.DataBind();    
    }
}
