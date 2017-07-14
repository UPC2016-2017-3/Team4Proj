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

public partial class  TMod : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (this.TextBox2.Text == "" || this.TextBox3.Text == "")
        {
            Response.Write("<script>alert('密码不能为空！');document.location=document.location;</script>");
        }
        if (this.TextBox2.Text == this.TextBox3.Text)
        {
            string sql = "update TB_Teacher set PassWord='" + this.TextBox2.Text + "' where UserName='" + Session["username"].ToString() + "'";
            bool b = DBHelper.ExecSql(sql);
            if (b)
            {
                Response.Write("<script>alert('操作成功！');document.location=document.location;</script>");
            }
            else
            {
                Response.Write("<script>alert('操作失败！');document.location=document.location;</script>");
            }
        }
        else
        {
            Response.Write("<script>alert('2次输入的密码不一致！');document.location=document.location;</script>");
        }
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        this.TextBox2.Text = "";
        this.TextBox3.Text = "";
    }
}
