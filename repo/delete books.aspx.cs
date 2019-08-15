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

public partial class delete_books : System.Web.UI.Page
{
     MySqlConnection cn;
   MySqlCommand cmd;

    protected void Page_Load(object sender, EventArgs e)
    {
        cn = new MySqlConnection("Server=localhost;Database=bookshop;Uid=root;Pwd=123");
        cn.Open();

        Label4.Visible = false;

        if (!IsPostBack)
        {
            MySqlDataAdapter da = new MySqlDataAdapter("select Category from books", cn);
            DataSet ds = new DataSet();
            da.Fill(ds);
            DropDownList1.DataSource = ds;
            DropDownList1.DataTextField = "Category";
            DropDownList1.DataBind();
            DropDownList1.Items.Insert(0, "--select--");
        }
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        MySqlDataAdapter da = new MySqlDataAdapter("select Bname from books where Category='"+DropDownList1 .Text +"' ", cn);
        DataSet ds = new DataSet();
        da.Fill(ds);
        DropDownList2.DataSource = ds;
        DropDownList2.DataTextField = "Bname";
        DropDownList2.DataBind();
        DropDownList2.Items.Insert(0, "--select--");
    }
    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {
        Label4.Visible = true;

        cmd = new MySqlCommand("select Aname from books where Category='" + DropDownList1.Text + "' and Bname='" + DropDownList2.Text + "' ", cn);
        MySqlDataReader dr = cmd.ExecuteReader();
        while (dr.Read())
        {
            Label4.Text = dr.GetString(0);
        }
        dr.Close();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        cmd = new MySqlCommand("delete from books where Category='" + DropDownList1.Text + "' and Bname='" + DropDownList2.Text + "' ", cn);
        cmd.ExecuteNonQuery();
        Response.Write("<script>alert('Deleted Successfully')</script>");
    }
}
