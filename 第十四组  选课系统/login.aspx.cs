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
using System.Data.SqlClient;

public partial class SysManage_Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
         
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        this.Txtpwd.Text = "";
        this.Txtuid.Text = "";

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (Txtpwd.Text.ToString().Trim() == "" || Txtuid.Text.ToString().Trim() == "")
        {
            Response.Write("<script>javascript:alert('请输入完整');history.back();</script>");
            Response.End();
        }
     

            string membername = this.Txtuid.Text.Trim();
            string pwd = Txtpwd.Text;
            if (this.DropDownList1.SelectedIndex == 0)
            {
                string sql1 = "select * from TB_Admin where UserName='{0}' and Password='{1}'";
                string sql2 = string.Format(sql1, membername, pwd);
                DataTable dt = DBHelper.GetDataSet(sql2).Tables[0];
                if (dt.Rows.Count > 0)
                {
                    Session["cx"] = "管理员"; Session["PWD"] = this.Txtpwd.Text;
                    Session["username"] = this.Txtuid.Text;
                    Response.Redirect("main.aspx");
                }
                else
                {
                    Response.Write("<script>javascript:alert('对不起，用户名或密码不正确!');</script>");
                }
            }
             if (this.DropDownList1.SelectedIndex == 1)
            {
                string sql1 = "select * from TB_Teacher where TeacherID='{0}' and PassWord='{1}'";
                string sql2 = string.Format(sql1, membername, pwd);
                DataTable dt = DBHelper.GetDataSet(sql2).Tables[0];
                if (dt.Rows.Count > 0)
                {
                    Session["cx"] = "教师"; 
                    Session["username"] = this.Txtuid.Text;
                    Session["XM"] = dt.Rows[0]["TeacherName"].ToString();
                    Response.Redirect("main.aspx");
                }
                else
                {
                    Response.Write("<script>javascript:alert('对不起，用户名或密码不正确!');</script>");
                }

            }
          else
            {
                string sql1 = "select * from TB_Student where StudentID='{0}' and PassWord='{1}'";
                string sql2 = string.Format(sql1, membername, pwd);
                DataTable dt = DBHelper.GetDataSet(sql2).Tables[0];
                if (dt.Rows.Count > 0)
                {
                    Session["cx"] = "学生"; Session["PWD"] = this.Txtpwd.Text;
                   
                    Session["username"] = this.Txtuid.Text;
                    Response.Redirect("main.aspx");
                }
                else
                {
                    Response.Write("<script>javascript:alert('对不起，用户名或密码不正确!');</script>");
                }

            }
        }
 
 
    
}
