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

public partial class XK : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        int ID = Convert.ToInt32(Request.QueryString["ID"].ToString());
        string SQL = "select  * from TB_KeMu where  ID='" + ID + "';select * from TB_XuanKe where KeMuID='" + ID + "' and XueHao='"+Session["username"].ToString()+"'";
        DataSet ds = DBHelper.GetDataSet(SQL);
        if (ds.Tables[1].Rows.Count > 0)
        {
            Response.Write("<script>javascript:alert('对不起你已经选择了改课程请不要重复选择');window.navigate('SKeMu_List.aspx');</script>"); Response.End();
        }
         if(Convert.ToInt32(ds.Tables[0].Rows[0]["RenShu"])>Convert.ToInt32(ds.Tables[0].Rows[0]["YiXuanRenSHu"]))
        {
        string sql = "update    TB_KeMu set YiXuanRenSHu=YiXuanRenSHu+1  where ID='" + ID + "'";
        sql = sql + ";insert into TB_XuanKe (KeMuID ,XueHao) values('" + ID + "','" + Session["username"].ToString() + "')";
       bool B = DBHelper.ExecSql(sql);
       if (B)
        {
            Response.Write("<script>javascript:alert('操作成功');window.navigate('SKeMu_List.aspx');</script>");
        }
        else 
        {
            Response.Write("<script>javascript:alert('操作失败');window.navigate('SKeMu_List.aspx');</script>");
        }
        }
        else
        {
            Response.Write("<script>javascript:alert('选课人数已满');window.navigate('SKeMu_List.aspx');</script>");
        }
    }
}
