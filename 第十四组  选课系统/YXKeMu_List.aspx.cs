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

public partial class YXKeMu_List : System.Web.UI.Page
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
        DataSet ds = DBHelper.GetDataSet("select * from View_1 where Xuehao='"+Session["username"].ToString()+"'");
        this.GridView1.DataSource = ds.Tables[0];
        this.GridView1.DataBind();
    }

}
