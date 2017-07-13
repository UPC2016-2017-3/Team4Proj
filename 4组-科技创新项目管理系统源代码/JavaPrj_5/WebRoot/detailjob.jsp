<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="java.util.List"%>
<%@ page import="java.util.Iterator"%>
<%@ page import="com.sanqing.po.Job"%>
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
      <th class="tablestyle_title" >详细信息</th>
  </tr>

  <tr>
    <td class="CPanel">
		<table border="0" cellpadding="0" cellspacing="0" style="width:80%" align="center">
		<%
		 	Job j=(Job)request.getAttribute("job");
		 	if(j!=null){
		%>
		<tr>
			<td width="100%">
				<fieldset style="height:100%;">
				<table border="0" cellpadding="8" cellspacing="1" style="width:100%">
					  <tr>
					    <td align="right" width="17%">项目名称：</td>
					    <td width="36%"><%=j.getName()%></td>
					    <td width="20%"><div align="right">项目类别：</div></td>
					    <td width="43%"><%=new Byte("1").equals(j.getSex())?"创新":"创业"%>	  </tr>
					  <tr>
					    <td align="right" width="17%">年限：</td>
					    <td><%=j.getAge()%></td>
					    <td><div align="right">指导教师：</div></td>
					    <td><%=j.getJob()%>
				        </td>
					  </tr>
					  <tr>
					    <td align="right" width="17%">项目负责人：</td>
					    <td><%=j.getSpecialty()%>
				        </td>
					    <td><div align="right">团队人数：</div></td>
					    <td><%=j.getExperience()%></td>
					    </tr>
					  <tr>
					    <td align="right" width="17%">学院：</td>
					    <td><%=j.getStudyeffort()%>
				        </td>
					    <td><div align="right">负责人专业：</div></td>
					    <td><%=j.getSchool()%></td>
					    </tr>
					  <tr>
					    <td align="right" width="17%">电话：</td>
					    <td><%=j.getTel()%>
				        </td>

					    </tr>
					  <tr>
					    <td align="right" width="17%">项目简介：</td>
					    <td colspan="4"><%=j.getContent()%></td>
					  </tr>
		  <tr>
					    <td colspan="4" align="center">
					     <a href="updatejob.do?action=detailjob&id=<%=j.getId()%>">审核</a>&nbsp;&nbsp;
					    
					    <a href="#" onclick="javascript:history.back();">返回</a></td>
					  </tr>
				</table>
				</fieldset>		
			</td>
		</tr>
		<%}else{ %>
		<tr>
			<td height="22" colspan="4" align="center" >该信息不存在！！！</td>
		</tr>
		<%}%>
		</table>
	 </td>
  </tr>
</tabel>	
</div>
</body>
<ml>

