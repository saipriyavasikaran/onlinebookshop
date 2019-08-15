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

public partial class cancelorder : System.Web.UI.Page
{
     MySqlConnection cn;
    string user, date;
    MySqlDataAdapter  ad;
    DataSet ds;
    protected void Page_Load(object sender, EventArgs e)
    {
       
        
        
        cn = new MySqlConnection("Server=localhost;Database=bookshop;Uid=root;Pwd=123");
        cn.Open();

        user = Convert.ToString(Session["user"]);

        date = DateTime.Now.ToShortDateString();

        MySqlDataAdapter ad = new MySqlDataAdapter("select * from sales where CustName='" + user + "' and Date='" + date + "' ", cn);

        DataSet ds = new DataSet();

        ad.Fill(ds);

        GridView1.DataSource = ds;
             
        GridView1.DataBind();

    }

    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        string na = GridView1.Rows[e.RowIndex].Cells[1].Text;
        string bna = GridView1.Rows[e.RowIndex].Cells[3].Text;
        string da = GridView1.Rows[e.RowIndex].Cells[9].Text;
        //Response.Write(na);
       // Response.Write(da);

         MySqlCommand cmd = new MySqlCommand("delete from sales where CustName='" + na + "' and Date='" + da + "' and Bname='" + bna + "' ", cn);
        cmd.ExecuteNonQuery();

        ad = new MySqlDataAdapter("select * from sales where CustName='" + user + "' and Date='" + date + "' ", cn);

        ds = new DataSet();

        ad.Fill(ds);

        GridView1.DataSource = ds;

        GridView1.DataBind();

    }


    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}
