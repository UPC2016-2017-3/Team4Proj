using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

public partial class TKeMu_List : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            GetDate();

        }
    }
    private void GetDate()
    {
        DataSet ds = DBHelper.GetDataSet("select * from TB_KeMu");
        this.GridView1.DataSource = ds.Tables[0];
        this.GridView1.DataBind();
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        DataSet ds = DBHelper.GetDataSet("select * from TB_KeMu where KeMu='"+this.TextBox1.Text+"'");
        this.GridView1.DataSource = ds.Tables[0];
        this.GridView1.DataBind();
    }
}
