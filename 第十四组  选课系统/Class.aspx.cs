﻿using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

public partial class Class : System.Web.UI.Page
{
   
        protected void Page_Load(object sender, EventArgs e) 
        {
            if (!IsPostBack)
            {
              
                if (Request["ID"] != null)
                {
                    InitData();
                }
            }
        }
        protected void InitData()
        {

            string id = Request["ID"].ToString();

            try
            {

                string SQL = "select * from TB_class  where ID='" + id + "'";
                DataTable dt = DBHelper.GetDataSet(SQL).Tables[0];

                if (dt.Rows.Count > 0)
                {
                    this.TextBox2.Text = dt.Rows[0]["Department"].ToString();
                    this.TextBox1.Text = dt.Rows[0]["class "].ToString();
                
                }
            }
            catch
            {
            }

        }


 
        protected void Button1_Click(object sender, EventArgs e)
        {
        
            string SQL = "";
           bool iRet=false;
            if (Request["ID"] != null)
            {
                string id = Request["ID"].ToString();
                SQL = "update TB_class  set class ='" + this.TextBox1.Text + "',Department='" + this.TextBox2.Text + "' where ID='" + id + "'";
            iRet = DBHelper.ExecSql(SQL);

            }
            else
            {
                SQL = "insert into TB_class (class ,Department) values('" + this.TextBox1.Text + "','" + this.TextBox2.Text + "')";
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
 
