﻿using System;
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

public partial class searchauther : System.Web.UI.Page
{
     MySqlConnection cn;
    protected void Page_Load(object sender, EventArgs e)
    {
        cn = new MySqlConnection("Server=localhost;Database=bookshop;Uid=root;Pwd=123");
        cn.Open();


        if (!IsPostBack)
        {
            MySqlDataAdapter ad = new MySqlDataAdapter("select distinct Aname from books", cn);

            DataSet ds = new DataSet();

            ad.Fill(ds);

            DropDownList1.DataSource = ds;

            DropDownList1.DataTextField = "Aname";

            DropDownList1.DataBind();
        }
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {

     //   cn = new MySqlConnection("Server=localhost;Database=bookshop;Uid=root;Pwd=123");
     //   cn.Open();

        MySqlDataAdapter dd = new MySqlDataAdapter("select Bname,Category,Price,Stock,Publisher,preview from books  where  Aname='"+DropDownList1.SelectedItem.Text+"' ",cn);

        DataSet ss = new DataSet();

        dd.Fill(ss);

        GridView1.DataSource = ss;

        GridView1.DataBind();
    }
}
