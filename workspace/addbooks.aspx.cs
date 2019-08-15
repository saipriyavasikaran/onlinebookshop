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

public partial class addbooks : System.Web.UI.Page
{
     MySqlConnection cn;
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
    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        string bname = TextBox1.Text;
        string aname = TextBox2.Text;
        string category = DropDownList1.SelectedItem.Text;
        int price = Convert.ToInt32(TextBox3.Text);
        int stock = Convert.ToInt32(TextBox4.Text);
        string publisher = TextBox5.Text;
        string preview = TextBox6.Text;

        string img = FileUpload1.FileName;
        string im = "~/addbook/" + bname + aname + ".jpg";


        MySqlCommand cmd = new MySqlCommand("insert into books values('" + bname + "','" + aname + "','" + category + "'," + price + "," + stock + ",'" + im + "','" + publisher + "','" + preview + "')", cn);
        cmd.ExecuteNonQuery();
        FileUpload1.SaveAs(Server.MapPath("~/addbook/" + bname + aname + ".jpg")); 

        TextBox1.Text = "";
        TextBox2.Text = "";
        TextBox3.Text = "";
        TextBox4.Text = "";
        TextBox5.Text = "";
        TextBox6.Text = "";


    }
}
