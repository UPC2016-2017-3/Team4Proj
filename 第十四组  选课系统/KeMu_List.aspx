﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="KeMu_List.aspx.cs" Inherits="KeMu_List" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>无标题页</title>
    <style type="text/css">

TD {
	COLOR: #000000; FONT-FAMILY: "Arial", "Helvetica", "sans-serif"; FONT-SIZE: 12px
}
TH {
	COLOR: #000000; FONT-FAMILY: "Arial", "Helvetica", "sans-serif"; FONT-SIZE: 12px
}
A:link {
	COLOR: #000000;
	TEXT-DECORATION: none;
}
    </style>
</head>
<body> 
    <form id="form1" runat="server">
    <div>
    
        <table align="center" border="1" bordercolordark="#9cc7ef" bordercolorlight="#145aa0"
            cellpadding="4" cellspacing="0" style="width: 100%">
            <tr bgcolor="#999999">
                <td colspan="1" style="height: 24px">
                    <div align="center">
                       <font color="#ffffff"><span style="color: #000000"><span style="font-size: 12pt;
                            font-family: 仿宋_GB2312; mso-hansi-font-family: 'Times New Roman'; mso-bidi-font-family: 'Times New Roman';
                            mso-font-kerning: 1.0pt; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN;
                            mso-bidi-language: AR-SA"><span style="font-size: 10.5pt; font-family: 宋体; mso-hansi-font-family: 'Times New Roman';
                                mso-bidi-font-family: 'Times New Roman'; mso-font-kerning: 1.0pt; mso-ansi-language: EN-US;
                                mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA; mso-bidi-font-size: 12.0pt;
                                mso-ascii-font-family: 'Times New Roman'"> 课程管理</span></span></span></font></div>
                </td>
            </tr>
            <tr>
                <td width="79%">
                    &nbsp; &nbsp; &nbsp; &nbsp;<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False"
                        CellPadding="4" ForeColor="#333333" GridLines="None" Width="910px">
                        <FooterStyle BackColor="#999999" Font-Bold="True" ForeColor="White" />
                        <RowStyle BackColor="#EFF3FB" />
                        <Columns>
                            <asp:BoundField DataField="KeMu" HeaderText="课程名称" />
                            <asp:BoundField DataField="Semester" HeaderText="学期" />
                              <asp:BoundField DataField="XueFen" HeaderText="学分" />
                             <asp:BoundField DataField="JiaoShi" HeaderText="教室" />
                            <asp:BoundField DataField="ShiJian" HeaderText="时间" />
                              <asp:BoundField DataField="Department" HeaderText="专业" />
                        <asp:BoundField DataField="XueKe" HeaderText="学科性质" />
                            
                              <asp:BoundField DataField="LaoSHi" HeaderText="老师" />
                            <asp:BoundField DataField="RenShu" HeaderText="容纳人数" />
                              <asp:BoundField DataField="YiXuanRenSHu" HeaderText="已选人数" />
                            <asp:HyperLinkField DataNavigateUrlFields="ID" 
                                DataNavigateUrlFormatString="KeMu.aspx?ID={0}" HeaderText="编辑" Text="编辑" />
                            <asp:HyperLinkField DataNavigateUrlFields="ID" DataNavigateUrlFormatString="KeMuD.aspx?ID={0}"
                                HeaderText="删除" Text="删除" />
                        </Columns>
                        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                        <HeaderStyle BackColor="#999999" Font-Bold="True" ForeColor="White" />
                        <EditRowStyle BackColor="#2461BF" />
                        <AlternatingRowStyle BackColor="White" />
                    </asp:GridView>
                </td>
            </tr>
            <tr>
                <td colspan="1">
                    <div align="center">
                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="KeMu.aspx" Target="_self">添加</asp:HyperLink>&nbsp;</div>
                </td>
            </tr>
            <tr bgcolor="#999999">
                <td colspan="1">
                    &nbsp;</td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html> 
