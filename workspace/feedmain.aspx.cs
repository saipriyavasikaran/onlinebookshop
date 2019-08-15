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

public partial class feedmain : System.Web.UI.Page
{
    MySqlConnection cn;
    MySqlCommand cmd;

    protected void Page_Load(object sender, EventArgs e)
    {
        cn = new MySqlConnection("Server=localhost;Database=bookshop;Uid=root;Pwd=123");
        cn.Open();

        MySqlDataAdapter ad = new MySqlDataAdapter("select * from feedback ", cn);

        DataSet ds = new DataSet();

        ad.Fill(ds);

        GridView1.DataSource = ds;

        GridView1.DataBind();
    }

    public void abc(object sender, GridViewDeleteEventArgs g)
    {
        string date = GridView1.Rows[g.RowIndex].Cells[0].Text;
        string name = GridView1.Rows[g.RowIndex].Cells[1].Text;
        string feedback = GridView1.Rows[g.RowIndex].Cells[2].Text;
        string rating = GridView1.Rows[g.RowIndex].Cells[3].Text;

        cmd = new MySqlCommand("delete from feedback where Name='" + name + "' ", cn);
        cmd.ExecuteNonQuery();

        MySqlDataAdapter ad = new MySqlDataAdapter("select * from feedback ", cn);

        DataSet ds = new DataSet();

        ad.Fill(ds);

        GridView1.DataSource = ds;

        GridView1.DataBind();


    }
}