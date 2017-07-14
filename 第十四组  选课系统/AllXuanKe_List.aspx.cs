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

public partial class AllXuanKe_List : System.Web.UI.Page
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
        DataSet ds = DBHelper.GetDataSet("select * from View_1");
        this.GridView1.DataSource = ds.Tables[0];
        this.GridView1.DataBind();
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string SQL = "select * from View_1 where 1=1";
        if (!string.IsNullOrEmpty(this.TextBox1.Text))
        {
            SQL = SQL + " and KeMu='"+this.TextBox1.Text+"'";

        }

        if (!string.IsNullOrEmpty(this.TextBox2.Text))
        {
            SQL = SQL + " and XueFen='" + this.TextBox2.Text + "'";

        }

        if (!string.IsNullOrEmpty(this.TextBox3.Text))
        {
            SQL = SQL + " and LaoSHi='" + this.TextBox3.Text + "'";

        }
        DataSet ds = DBHelper.GetDataSet(SQL);
        this.GridView1.DataSource = ds.Tables[0];
        this.GridView1.DataBind();
    }
}
