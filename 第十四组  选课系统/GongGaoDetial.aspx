<%@ Page Language="C#" AutoEventWireup="true" CodeFile="GongGaoDetial.aspx.cs" Inherits="GongGaoDetial" %> 


 


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>无标题页</title>
    <style type="text/css">
.editor_select {FONT: 9pt Verdana,Arial}
.editor_select {FONT: 9pt Verdana,Arial}
.outcolor{border:1px double;border-color:#dddddd #dddddd #dddddd #dddddd;cursor:pointer;background:#efefef}
.outcolor{border:1px double;border-color:#dddddd #dddddd #dddddd #dddddd;cursor:pointer;background:#efefef}
.editor_switcher_nohighlight {
 BACKGROUND: #FFFFFF; MARGIN-LEFT: 2px; VERTICAL-ALIGN: top;BORDER: #CCCCCC 1px solid; BORDER-TOP: none; TOP: 0px
}
.editor_switcher_nohighlight {
 BACKGROUND: #FFFFFF; MARGIN-LEFT: 2px; VERTICAL-ALIGN: top;BORDER: #CCCCCC 1px solid; BORDER-TOP: none; TOP: 0px
}
.editor_switcher_highlight {
 BACKGROUND:#EFEFEF; MARGIN-LEFT: 2px; VERTICAL-ALIGN:top; BORDER:#CCCCCC 1px solid;BORDER-TOP: none; TOP: 0px
}
.editor_switcher_highlight {
 BACKGROUND:#EFEFEF; MARGIN-LEFT: 2px; VERTICAL-ALIGN:top; BORDER:#CCCCCC 1px solid;BORDER-TOP: none; TOP: 0px
}
    </style>
   
</head>
<body style="font-size: 12pt">
    <form id="form1" runat="server">
    <div>
    
			<table cellSpacing="0" borderColorDark="#9cc7ef" cellPadding="4" width="60%" align="center"
				borderColorLight="#145aa0" border="1">
				<tr bgColor="#999999">
					<td>
						<div align="center">公告信息</div>
					</td>
				</tr>
				<tr style="font-size: 12pt">
					<td>
						   <asp:DataList ID="dlTopic" runat="server" Width="710px">
                    <ItemTemplate>
                        <table border="0" bordercolor="#ffffff" cellspacing="0" style="width: 100%;">
                            <tr>
                                <td colspan="2" style="height: 18px">
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2" style="height: 28px; text-align: center" valign="top">
                                    <span style="font-size: 14pt">
                                        <%# Eval("BiaoTi")%>
                                        <br />
                                    </span>发布时间：
                                    <%# Eval("ShiJian")%>
                                    发布人：
                                    <%# Eval("FabuRen")%>
                                </td>
                            </tr>
                            <tr>
                                <td align="left" colspan="2" style="height: 100px" valign="top">
                                    <br />
                                    <%# Eval("NeiRong")%>
                                </td>
                            </tr>
                        </table>
                    </ItemTemplate>
                </asp:DataList>
					</td>
				</tr>
				<tr bgColor="#999999" style="font-size: 12pt">
					<td style="height: 29px">&nbsp;</td>
				</tr>
			</table>
    
    </div>
    </form>
</body>
</html>
