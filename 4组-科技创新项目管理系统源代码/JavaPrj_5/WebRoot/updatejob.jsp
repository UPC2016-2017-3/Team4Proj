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
<form name="jobForm" method="post" action="modifyjob.do?action=updatejob" onSubmit="return jobValidate();">
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
		<input type="hidden" name="id" value="<%=j.getId()%>"/>
	  	<input type="hidden" name="job" value="<%=request.getParameter("job")%>"/>
		<tr>
			<td width="100%">
				<fieldset style="height:100%;">
				<table border="0" cellpadding="8" cellspacing="1" style="width:100%">
					  <tr>
					    <td align="right" width="17%">项目名称：</td>
					    <td width="36%"><input name="name" type="text" class="input" value="<%=j.getName()%>" disabled/></td>
					    <td width="20%"><div align="right">项目类别：</div></td>
					    <td width="43%"><input name="basic" type="text" class="input" id="basic" value="<%=new Byte("1").equals(j.getSex())?"创新":"创业"%>" disabled/>
	  </tr>
					  <tr>
					    <td align="right" width="17%">年限：</td>
					    <td><input type="text" name="purpose" class="input" value="<%=j.getAge()%>" disabled/></td>
					    <td><div align="right">指导教师：</div></td>
					    <td><input type="text" name="purpose" class="input" value="<%=j.getJob()%>" disabled/>
				        </td>
					  </tr>
					  <tr>
					    <td align="right" width="17%">项目负责人：</td>
					    <td><input type="text" name="purpose" class="input" value="<%=j.getSpecialty()%>" disabled/>
				        </td>
					    <td><div align="right">团队人数：</div></td>
					    <td><input type="text" name="purpose" class="input" value="<%=j.getExperience()%>" disabled/></td>
					    </tr>
					  <tr>
					    <td align="right" width="17%">学院：</td>
					    <td><input type="text" name="purpose" class="input" value="<%=j.getStudyeffort()%>" disabled/>
				        </td>
					    <td><div align="right">负责人专业：</div></td>
					    <td><input type="text" name="purpose" class="input" value="<%=j.getSchool()%>" disabled/></td>
					    </tr>
					  <tr>
					    <td align="right" width="17%">电话：</td>
					    <td><input type="text" name="purpose" class="input" value="<%=j.getTel()%>" disabled/>
				        </td>
					    </tr>
					  <tr>
					    <td align="right" width="17%">项目简介：</td>
					    <td colspan="4"><input type="text" name="purpose" class="input" value="<%=j.getContent()%>" disabled/></td>
					  </tr>
					  <tr>
					    <td align="right" width="17%">审核结果：</td>
					    <td height="22" colspan="3" align="left" >
					    <select id="email" name="email"> 
					    <option value="">请选择...</option>
					    <option value="通过">通过</option>
					    <option value="不通过">不通过</option><lect></td> 
					  </tr>
				</table>
				</fieldset>		
			</td>
		</tr>
		 <tr>
		<td colspan="2" align="center" height="50px">
		<input name="提交" type="submit" class="button" value="保存"/>　
		
		<input name="重置" type="reset" class="button" value="重置"/></TD>
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

