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

public partial class  Student : System.Web.UI.Page
{
   
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Getclass();
               
                if (Request["ID"] != null)
                {
                    InitData();
                }
            }
        }

    private void Getclass ()
    {
        string SQL = "select * from TB_class";
        DataSet ds = DBHelper.GetDataSet(SQL);
        this.DropDownList3.DataSource = ds.Tables[0];
        this.DropDownList3.DataTextField = "class";
        this.DropDownList3.DataValueField = "Teacher";
        this.DropDownList3.DataBind();
      
    }
        protected void InitData()
        {

            string id = Request["ID"].ToString();

            try
            {

                string SQL = "select * from TB_Student where ID='" + id + "'";
                DataTable dt = DBHelper.GetDataSet(SQL).Tables[0];

                if (dt.Rows.Count > 0)
                {
                    this.TextBox1.Text = dt.Rows[0]["StudentID"].ToString();
                    this.TextBox2.Text = dt.Rows[0]["SutdentName"].ToString();
             
                    this.DropDownList1.Text = dt.Rows[0]["Sex"].ToString();
                    this.DropDownList2.Text = dt.Rows[0]["Department"].ToString();
                    this.DropDownList3.Text = dt.Rows[0]["class"].ToString();

                }
            }
            catch
            {
            }

        }


 
        protected void Button1_Click(object sender, EventArgs e)
        {

            string SQL = "";
            bool iRet = false;
            if (Request["ID"] != null)
            {
                string id = Request["ID"].ToString();
                SQL = "update TB_Student set StudentID='" + this.TextBox1.Text + "',SutdentName='" + this.TextBox2.Text + "',Sex='" + this.DropDownList1.SelectedItem.Text + "',Department='" + this.DropDownList2.SelectedItem.Text + "',class ='" + this.DropDownList3.SelectedItem.Text + "' where ID='" + id + "'";
                iRet = DBHelper.ExecSql(SQL);

            }
            else
            {
                SQL = "insert into TB_Student(StudentID,SutdentName,Sex,Department,class ,PassWord) values('" + this.TextBox1.Text + "','" + this.TextBox2.Text + "','" + this.DropDownList1.SelectedItem.Text + "','" + this.DropDownList2.SelectedItem.Text + "','" + this.DropDownList3.SelectedItem.Text + "','" + this.TextBox1.Text + "')";
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
        

        }


 
}
 
