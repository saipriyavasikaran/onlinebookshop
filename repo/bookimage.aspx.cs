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

public partial class bookimage : System.Web.UI.Page
{
     MySqlConnection cn;
  
    protected void Page_Load(object sender, EventArgs e)
    {
        cn = new MySqlConnection("Server=localhost;Database=bookshop;Uid=root;Pwd=123");
        cn.Open();

        string cat = Convert.ToString(Session["cate"]);


        if (cat.Equals("Secondhandbooks"))
        {

            MySqlDataAdapter ad = new MySqlDataAdapter("select Bname,Aname,Price,Img,preview  from secondhandbook  ", cn);

            DataSet ds = new DataSet();

            ad.Fill(ds);

            GridView1.DataSource = ds;

            GridView1.DataBind();

        }
        else
        {
            MySqlDataAdapter ad = new MySqlDataAdapter("select Bname,Aname,Price,Img,preview  from books  where Category='" + cat + "'", cn);

            DataSet ds = new DataSet();

            ad.Fill(ds);

            GridView1.DataSource = ds;

            GridView1.DataBind();

        }
        //Response.Write(cat);
     
        
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        
    }
    public void xyz(object sender, GridViewEditEventArgs e)
    {
        //int slno = e.NewEditIndex;
        string name = GridView1.Rows[e.NewEditIndex].Cells[0].Text;

        string aname = GridView1.Rows[e.NewEditIndex].Cells[1].Text;

        string img = "~/addbook/" + name + aname + ".jpg";

        string preview = GridView1.Rows[e.NewEditIndex].Cells[3].Text;

        string image = GridView1.Rows[e.NewEditIndex].Cells[2].Text;

        int price = Convert.ToInt32(GridView1.Rows[e.NewEditIndex].Cells[4].Text);

        //Response.Write(name + "--");
       // Response.Write(aname + "--");
        Response.Write("image" + image);
       // Response.Write(preview + "--");
      //  Response.Write(price + "--");
        int x=1;
        MySqlCommand dmd = new MySqlCommand("select * from addcart",cn);
        MySqlDataReader r= dmd.ExecuteReader();
        while (r.Read())
        {
            x++;
        }
        r.Close();


         MySqlCommand cmd = new MySqlCommand("insert into addcart values(" + x + ",'" + name + "','" + aname + "','" + img + "','" + preview + "'," + price + ",'1') ", cn);
        cmd.ExecuteNonQuery();

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/addca.aspx");
    }
}
