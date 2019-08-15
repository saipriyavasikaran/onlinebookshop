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

public partial class delete_category : System.Web.UI.Page
{
     MySqlConnection cn;
    MySqlCommand cmd;

    protected void Page_Load(object sender, EventArgs e)
    {
        cn = new MySqlConnection("Server=localhost;Database=bookshop;Uid=root;Pwd=123");
        cn.Open();

        if (!IsPostBack)
        {
            MySqlDataAdapter da = new MySqlDataAdapter("select category from category", cn);
            DataSet ds = new DataSet();
            da.Fill(ds);
            DropDownList1.DataSource = ds;
            DropDownList1.DataTextField = "category";
            DropDownList1.DataBind();
            DropDownList1.Items.Insert(0, "--select--");
        }
        else
        {
            Label3.Text = "Select the category";
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        cmd = new MySqlCommand("delete from category where category='" + DropDownList1.SelectedItem.Text + "' ", cn);
        cmd.ExecuteNonQuery();
        

    }
}
