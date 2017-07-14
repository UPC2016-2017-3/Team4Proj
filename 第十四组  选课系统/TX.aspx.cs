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

public partial class TX : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        int ID = Convert.ToInt32(Request.QueryString["ID"].ToString());
        int KID = Convert.ToInt32(Request.QueryString["KID"].ToString());
        string sql = "delete from TB_XuanKe where ID='" + ID + "'";

        sql = sql + "update    TB_KeMu set YiXuanRenSHu=YiXuanRenSHu-1  where ID='" + KID + "'";
       bool B = DBHelper.ExecSql(sql);
       if (B)
        {
            Response.Write("<script>javascript:alert('操作成功');window.navigate('YXKeMu_List.aspx');</script>");
        }
        else
        {
            Response.Write("<script>javascript:alert('操作失败');window.navigate('YXKeMu_List.aspx');</script>");
        }
    }
}
