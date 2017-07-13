<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="java.util.List"%>
<%@ page import="java.util.Iterator"%>
<%@ page import="com.sanqing.po.Educate"%>
<%@ page import="com.sanqing.tool.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="textml; charset=UTF-8" />
<title>科技创新项目管理系统</title>
<link rel="stylesheet" rev="stylesheet" href="css/style.css " type="text/css" media="all" />
<script type="text/javascript" src="Jspem.js"></script>
<script type="text/javascript" src="Js/js.js"></script>
<style type="text/css">
<!--
.atten {font-size:12px;font-weight:normal;color:#F00;}
-->
</style>
</head>
<body class="ContentBody">

<div class="MainDiv">
<table width="99%" border="0" cellpadding="0" cellspacing="0" class="CContent">
  <tr>
      <th class="tablestyle_title" >详细信息
      	
      </th>
  </tr>
    <%
	  Educate e=(Educate)request.getAttribute("educate");
	  if(e!=null){
  	%>
		<TR>
			<TD width="100%">
				<fieldset style="height:100%;">
					  <table border="0" cellpadding="8" cellspacing="1" style="width:100%">
					  <tr>
					    <td nowrap align="right" width="11%">项目名称：</td>
					    <td colspan="3"><%=e.getName()%>
					    </td>
					    </tr>
					  <tr>
					    <td nowrap align="right" width="11%">项目年限：</td>
					    <td colspan="3"><%=e.getPurpose()%>
					    </td>
					    </tr>
					 
					  <tr>
					    <td nowrap align="right" width="11%">指导教师：</td>
					    <td colspan="3"><%=e.getTeacher()%>
					    </td>
					    <tr>
					    <td nowrap align="right" width="11%">学生负责人：</td>
					    <td colspan="3"><%=e.getStudent()%>
						</td>
						</tr>
					  </tr>
					    
					  <tr>
					    <td width="11%" nowrap align="right">项目材料：</td>
					    <td colspan="3"><%=e.getDatum()%></td>
					  </tr>
					  							  		  <tr>
					    <td colspan="4" align="center">
					     <a href="updateeducate.do?&action=detaileducate&id=<%=e.getId()%>">审核</a>&nbsp;&nbsp;
					    
					    <a href="#" onclick="javascript:history.back();">返回</a></td>
					  </tr>					  		  
					   
						 
					  </table>
				</fieldset>			
				</TD>
		</TR>
    <%}else{ %>
  	<tr>
    <td height="22" colspan="4" align="center" >该信息不存在！！！</td>
  	</tr>
  	<%}%>
</TABLE>	
</div>
</form>
</body>
<ml>
