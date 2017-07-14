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

public partial class GongGao_List : System.Web.UI.Page
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
        DataSet ds = DBHelper.GetDataSet("select * from TB_GongGao");
        this.GridView1.DataSource = ds.Tables[0];
        this.GridView1.DataBind();
    }


    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
    

        string ID = GridView1.DataKeys[e.RowIndex].Values[0].ToString();
        string SQL = "delete from TB_GongGao where ID='" + ID + "'";
        bool bRet = DBHelper.ExecSql(SQL);

        if (bRet)
        {
            Response.Write("<script>javascript:alert('操作成功');window.navigate('GongGao_List.aspx');</script>");
        }
        else
        {
            Response.Write("<script>javascript:alert('操作失败');window.navigate('GongGao_List.aspx');</script>");
        } GetDate();
    }
}
