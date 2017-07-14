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

public partial class  KeMu : System.Web.UI.Page
{
   
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string SQL = "select * from TB_Teacher";
                DataSet ds = DBHelper.GetDataSet(SQL);
                this.DropDownList2.DataSource = ds.Tables[0];
                this.DropDownList2.DataTextField = "TeacherName";
                this.DropDownList2.DataValueField = "ID";
                this.DropDownList2.DataBind();

        


                string SQLX = "select * from TB_Semester";
                DataSet dsX = DBHelper.GetDataSet(SQLX);
                this.DropDownList1.DataSource = dsX.Tables[0];
                this.DropDownList1.DataTextField = "Semester";
                this.DropDownList1.DataValueField = "ID";
                this.DropDownList1.DataBind();
                
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

                string SQL = "select * from TB_KeMu where ID='" + id + "'";
                DataTable dt = DBHelper.GetDataSet(SQL).Tables[0];

                if (dt.Rows.Count > 0)
                {
                    this.TextBox1.Text = dt.Rows[0]["KeMu"].ToString();
                    this.TextBox2.Text = dt.Rows[0]["JiaoShi"].ToString();

                    this.TextBox3.Text = dt.Rows[0]["ShiJian"].ToString();
                    this.TextBox4.Text = dt.Rows[0]["RenShu"].ToString();
                    this.TextBox5.Text = dt.Rows[0]["XueFen"].ToString();
                    this.DropDownList1.Text = dt.Rows[0]["Semester"].ToString();
                    this.DropDownList2.Text = dt.Rows[0]["LaoSHi"].ToString();
                    this.DropDownList3.Text = dt.Rows[0]["Department"].ToString();
                    this.TextBox6.Text = dt.Rows[0]["XueKe"].ToString();
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
                SQL = "update TB_KeMu set KeMu='" + this.TextBox1.Text + "',JiaoShi='" + this.TextBox2.Text + "',ShiJian='" + this.TextBox3.Text + "',XueKe='" + this.TextBox6.Text + "',RenShu='" + this.TextBox4.Text + "',XueFen='" + this.TextBox5.Text + "',Semester='" + this.DropDownList1.SelectedItem.Text + "',Department='" + this.DropDownList3.SelectedItem.Text + "',LaoSHi='" + this.DropDownList2.SelectedItem.Text + "' where ID='" + id + "'";
            iRet = DBHelper.ExecSql(SQL);

            }
            else
            {
                SQL = "insert into TB_KeMu(KeMu,JiaoShi,ShiJian,RenShu,Semester,LaoSHi,XueFen,Department,XueKe ) values('" + this.TextBox1.Text + "','" + this.TextBox2.Text + "','" + this.TextBox3.Text + "','" + this.TextBox4.Text + "','" + this.DropDownList1.SelectedItem.Text + "','" + this.DropDownList2.SelectedItem.Text + "','" + this.TextBox5.Text + "','" + this.DropDownList3.SelectedItem.Text + "','" + this.TextBox6.Text + "')";
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
            this.TextBox2.Text = "";
            this.TextBox3.Text = "";
            this.TextBox4.Text = "";
            this.TextBox5.Text = "";
            this.TextBox6.Text = "";  

        }

 
}
 
