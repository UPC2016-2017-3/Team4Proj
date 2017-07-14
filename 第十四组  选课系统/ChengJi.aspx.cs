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

public partial class ChengJi : System.Web.UI.Page
{
   
      
   

 
        protected void Button1_Click(object sender, EventArgs e)
        {
            
            string SQL = "";
           bool iRet=false;
           if (Request["ID"] != null)
           {
               string id = Request["ID"].ToString();
               SQL = "update TB_XuanKe set ChengJi='" + this.TextBox1.Text + "' where ID='" + id + "'";
               iRet = DBHelper.ExecSql(SQL);

           }
          
          

            if (iRet)
            {
                 
                Response.Write("<script>alert('恭喜您，操作成功！');document.location=document.location;</script>");
            }
            else
            {
                Response.Write("<script>alert('对不起，操作失败！');document.location=document.location;</script>");
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {


            this.TextBox1.Text = "";
    
            

        }

    }
 
