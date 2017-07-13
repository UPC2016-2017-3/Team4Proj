<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="java.util.List"%>
<%@ page import="java.util.Iterator"%>
<%@ page import="com.sanqing.po.Institution"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>科技创新项目管理系统</title>
<link rel="stylesheet" rev="stylesheet" href="css/style.css " type="text/css" media="all" />
<script type="text/javascript" src="Js/typem.js"></script>
<script type="text/javascript" src="Js/js.js"></script>
<style type="text/css">
<!--
.atten {font-size:12px;font-weight:normal;color:#F00;}
-->
</style>
</head>
<body class="ContentBody">
 <form name="institutionForm" method="post" action="modifyinstitution.do?action=updateinstitution" onSubmit="return institutionValidate()">
<div class="MainDiv">
<table width="99%" border="0" cellpadding="0" cellspacing="0" class="CContent">
  <tr>
      <th class="tablestyle_title" >审核结题信息</th>
  </tr>
    <%
	  Institution e=(Institution)request.getAttribute("institution");
	  if(e!=null){
  %>
  <tr>
    <td class="CPanel">
		<table border="0" cellpadding="0" cellspacing="0" style="width:80%" align="center">
		<tr>
			<td width="100%">
				<fieldset style="height:100%;">
				<legend>审核结题信息</legend>
						<input type="hidden" name="id" value="<%=e.getId()%>"/>
					  <table border="0" cellpadding="2" cellspacing="1" style="width:100%">
					  <tr>
					    <td nowrap align="right" width="11%">项目名称：</td>
					    <td width="89%"><input name="name" type="text" class="input" value="<%=e.getName()%>" disabled/>
						<span class="red">*</span></td>
					    </tr>
					  <tr>
					    <td nowrap align="right" width="11%">审核结果：</td>
					     <td height="22" colspan="3" align="left" >
					    <select id="reason" name="reason"> 
					    <option value="">请选择...</option>
					    <option value="通过">通过</option>
					    <option value="不通过">不通过</option></select> 
						<span class="red">*</span></td>
					    </tr>
					    
					  <tr>
					    <td width="11%" nowrap align="right">审核意见：</td>
					    <td><textarea name="explain" cols="100" rows="6" class="input" id="explain"></textarea></td>
					  </tr>
					  </table>
				</fieldset>			
				</td>
			
		</tr>
		</table>
	</td>
 	</tr>
	<tr>
		<td colspan="2" align="center" height="50px">
		<input name="提交" type="submit" class="button" value="保存"/>　
		
		<input name="重置" type="reset" class="button" value="重置"/></TD>
	</tr>
	<%}else{ %>
	  <tr>
	    <td height="22" colspan="2" align="center" >该信息不存在！！！</td>
	  </tr>
	  <%}%>
</tabel>
</table>
</div>
</form>	
</body>
</html>

