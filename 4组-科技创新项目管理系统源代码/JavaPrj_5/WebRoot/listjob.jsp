<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="java.util.List"%>
<%@ page import="java.util.Iterator"%>
<%@ page import="com.sanqing.po.Job"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>科技创新项目管理系统</title>
<style type="text/css">
<!--
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
}
.tabfont01 {	
	font-family: "宋体";
	font-size: 9px;
	color: #555555;
	text-decoration: none;
	text-align: center;
}
.font051 {font-family: "宋体";
	font-size: 12px;
	color: #333333;
	text-decoration: none;
	line-height: 20px;
}
.font201 {font-family: "宋体";
	font-size: 12px;
	color: #FF0000;
	text-decoration: none;
}
.button {
	font-family: "宋体";
	font-size: 14px;
	height: 37px;
}
html { overflow-x: auto; overflow-y: auto; border:0;} 
-->
</style>

<link href="css/css.css" rel="stylesheet" type="text/css" />
<script type="text/JavaScript">

</script>
<link href="css/style.css" rel="stylesheet" type="text/css" />
</head>

<body>

<table width="100%" border="0" cellspacing="0" cellpadding="0">
  
  <tr>
    <td height="30">      <table width="100%" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td height="62" background="images/nav04.gif">&nbsp;</td>
        </tr>
    </table></td></tr>
  <tr>
    <td><table id="subtree1" style="DISPLAY: " width="100%" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td><table width="95%" border="0" align="center" cellpadding="0" cellspacing="0">
          	 <tr>
               <td height="20"><span class="newfont07">审核申报信息</span></td>
          	 </tr>
              <tr>
                <td height="40" class="font42" style="width: 909px; ">
<table width="100%" border="0" cellpadding="4" cellspacing="1" bgcolor="#464646" class="newfont03" style="width: 911px; ">
<tr class="CTitle" >
	<td height="22" colspan="8" align="center" style="font-size:16px">申报信息列表</td>
</tr>
<tr bgcolor="#EEEEEE">
	<td width="15%" align="center" height="30">项目名称</td>
	<td width="10%" align="center" >类别</td>
	<td width="10%" align="center" >年限</td>
	<td width="10%" align="center" >指导教师</td>
	<td width="10%" align="center" >项目负责人</td>
	<td width="10%" align="center" >审核结果</td>
	<td width="12%" align="center" >执行操作</td>
</tr>
<% List list=(List)request.getAttribute("list");
if(list!=null&&list.size()>0){
Iterator it = list.iterator();
   while (it.hasNext()) {
			Job j = (Job) it.next();

%>
	<tr  bgcolor="#FFFFFF">
	<td height="22" align="center" ><%=j.getName()%></td>
	<td height="22" align="center" ><%=new Byte("1").equals(j.getSex())?"创新":"创业"%></td>
	<td height="22" align="center" ><%=j.getAge()%></td>
	<td height="22" align="center" ><%=j.getJob()%></td>
	<td height="22" align="center" ><%=j.getSpecialty()%></td>
	<td height="22" align="center" ><%=j.getEmail()%></td>
	<td height="22" align="center" ><a href="detailjob.do?action=detailjob&id=<%=j.getId()%>">审核</a>&nbsp;&nbsp;<a onclick="return confirm('确认要删除？')"href="modifyjob.do?action=deletejob&id=<%=j.getId()%>">删除</a>

	</tr>
<%}
}else{
%>
<tr  bgcolor="#FFFFFF">
	<td height="22" colspan="7" align="center" >对不起，没有信息！！！</td>
</tr>
<%}%>
</table>
            </td>
        </tr>
      </table>
          </td>
        </tr>
</table>
</body>
</html>

