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

public partial class overview : System.Web.UI.Page
{
     MySqlConnection cn;
    protected void Page_Load(object sender, EventArgs e)
    {
        cn = new MySqlConnection("Server=localhost;Database=bookshop;Uid=root;Pwd=123");
        cn.Open();

        ImageButton1.ImageUrl = "~/img/1.jpg";
        ImageButton2.ImageUrl = "~/img/2.jpg";
        ImageButton3.ImageUrl = "~/img/3.jpg";
        ImageButton4.ImageUrl = "~/img/4.jpg";
        ImageButton5.ImageUrl = "~/img/5.jpg";
        ImageButton6.ImageUrl = "~/img/6.jpg";
        ImageButton7.ImageUrl = "~/img/7.jpg";
        ImageButton8.ImageUrl = "~/img/8.jpg";

       
        
            
    }
    protected void ImageButton5_Click(object sender, ImageClickEventArgs e)
    {
        Session["cate"] = Convert.ToString(Label5.Text);
        Response.Redirect("~/bookimage.aspx");
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        Session["cate"] = Convert.ToString(Label1.Text);
        Response.Redirect("~/bookimage.aspx");
    }
    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        Session["cate"] = Convert.ToString(Label2.Text);
        Response.Redirect("~/bookimage.aspx");
    }
    protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
    {
        Session["cate"] = Convert.ToString(Label3.Text);
        Response.Redirect("~/bookimage.aspx");
    }
    protected void ImageButton4_Click(object sender, ImageClickEventArgs e)
    {
        Session["cate"] = Convert.ToString(Label4.Text);
        Response.Redirect("~/bookimage.aspx");

    }
    protected void ImageButton6_Click(object sender, ImageClickEventArgs e)
    {
        Session["cate"] = Convert.ToString(Label6.Text);
        Response.Redirect("~/bookimage.aspx");
    }
    protected void ImageButton7_Click(object sender, ImageClickEventArgs e)
    {
        Session["cate"] = Convert.ToString(Label7.Text);
        Response.Redirect("~/bookimage.aspx");
    }
    protected void ImageButton8_Click(object sender, ImageClickEventArgs e)
    {
        Session["cate"] = Convert.ToString(Label8.Text);
        Response.Redirect("~/bookimage.aspx");
    }

    protected void ImageButton9_Click(object sender, ImageClickEventArgs e)
    {
        Session["cate"] = Convert.ToString(Label9.Text);
        Response.Redirect("~/bookimage.aspx");

    }
}
