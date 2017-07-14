<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="SysManage_Login" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
<title></title>
<style type="text/css">
body 
{
	margin:0;
	font-size:14px;
	color:#098ED0;
}
.textbox
{
	border:1px solid #ccc;
	margin-left:2px;
}
    .style1
    {
        height: 24px;
    }
</style>
<link href="Images/login.css" rel="stylesheet" type="text/css" />
</head>
<body>
<form id="form1" runat="server">

<table style="WIDTH:100%; HEIGHT:100%">
            <tr>
                <td></td>
                <td style="height:100px"><br /><br /></td>
                <td></td>
            </tr>
            <tr>
                <td></td>
                <td valign="top" style="background-image:url(images/loginbg.gif); background-repeat:no-repeat; width: 432px; height: 283px;">
                    <table style="WIDTH: 60%; margin-top:70px; margin-left:160px;">
                        <tr>
                            <td style="height:24px" align="center">帐&nbsp;&nbsp;&nbsp;号：</td>
                            <td><asp:TextBox ID="Txtuid" runat="server" CssClass="textbox" Width="160px"></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td align="center" class="style1">密&nbsp;&nbsp;&nbsp;码：</td>
                            <td class="style1"><asp:TextBox ID="Txtpwd" runat="server" CssClass="textbox" TextMode="Password" Width="160px"></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td align="center" class="style1">角&nbsp;&nbsp; 色：</td>
                            <td class="style1">
                                <asp:DropDownList ID="DropDownList1" runat="server">
                                    <asp:ListItem>管理员</asp:ListItem>
                                      <asp:ListItem>教师</asp:ListItem>
                                    
                                    <asp:ListItem>学生</asp:ListItem>
                                    
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td></td>
                            <td style="padding-top:10px;">
                                &nbsp; &nbsp;
                                <asp:Button ID="Button1" runat="server" Text="登录" Width="60px" OnClick="Button1_Click" />
                                <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="取消" 
                                    Width="60px"  /></td>
                        </tr>
                        <tr>
                            <td></td>
                            <td style="color:#db0000;">
                                <asp:Literal ID="ltlMess" runat="server"></asp:Literal></td>
                        </tr>
                    </table>
                </td>
                <td></td>
            </tr>
            
        </table>









</form>
</body>
</html>