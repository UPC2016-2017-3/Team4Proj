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

public partial class  mygo : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["cx"].ToString() == "管理员")
        {
            Response.Redirect("menu.aspx");
        }
        if (Session["cx"].ToString() == "教师")
        {
            Response.Redirect("Tmenu.aspx");
        }
        else
        {
            Response.Redirect("Smenu.aspx");
        }
        
    }
}
