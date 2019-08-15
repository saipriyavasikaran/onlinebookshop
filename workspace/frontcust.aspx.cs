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

public partial class frontcust : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Image3.ImageUrl = "~/design/6.jpeg";
        Image4.ImageUrl = "~/design/16.jpeg";
    }
}
