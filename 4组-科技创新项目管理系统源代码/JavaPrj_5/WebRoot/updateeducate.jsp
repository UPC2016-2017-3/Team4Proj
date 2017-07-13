<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="java.util.List"%>
<%@ page import="java.util.Iterator"%>
<%@ page import="com.sanqing.po.Educate"%>
<%@ page import="com.sanqing.tool.*"%>
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
<form name="educateForm" method="post" action="modifyeducate.do?action=updateeducate" onSubmit="return educateValidate();">
<div class="MainDiv">
<table width="99%" border="0" cellpadding="0" cellspacing="0" class="CContent">
  <tr>
      <th class="tablestyle_title" >审核中期检查</th>
  </tr>
  <tr>
    <td class="CPanel">
		
		<table border="0" cellpadding="0" cellspacing="0" style="width:80%" align="center">
		<%
		  Educate e=(Educate)request.getAttribute("educate");
		  if(e!=null){
	  	%>
	  	<input type="hidden" name="id" value="<%=e.getId()%>"/>
	  	<input type="hidden" name="educate" value="<%=request.getParameter("educate")%>"/>
		<TR>
			<TD width="100%">
				<fieldset style="height:100%;">
				<legend>审核中期检查</legend>
					  <table border="0" cellpadding="2" cellspacing="1" style="width:100%">
					  <tr>
					    <td nowrap align="right" width="11%">项目名称：</td>
					    <td colspan="3"><input name="name" type="text" class="input" value="<%=e.getName()%>" disabled/>
					    <span class="red">*</span></td>
					    </tr>
					  <tr>
					    <td nowrap align="right" width="11%">年限：</td>
					    <td colspan="3"><input type="text" name="purpose" class="input" value="<%=e.getPurpose()%>" disabled/>
					    <span class="red">*</span></td>
					    </tr>
					  <tr>
					    <td nowrap align="right">指导教师：</td>
					    <td><input type="text" name="teacher" class="input" value="<%=e.getTeacher()%>" disabled/>
					    <span class="red">*</span></td>
					    </tr>
					    <tr>
					    <td>学生负责人：</td>
					    <td><input type="text" name="student" class="input" value="<%=e.getStudent()%>" disabled/>
					    <span class="red">*</span>
						</td>
					  </tr>
					    
					  <tr>
					    <td width="11%" nowrap align="right">项目材料：</td>
					    <td colspan="3"><textarea name="datum" cols="100" rows="6" class="input" disabled><%=e.getDatum()%></textarea></td>
					  </tr>
					  					  <tr align="center">
					    <td width="11%" height="22" >审核结果：</td>
					    <td height="22" colspan="3" align="left" >
					    <select id="effect" name="effect"> 
					    <option value="">请选择...</option>
					    <option value="通过">通过</option>
					    <option value="不通过">不通过</option></select></td> 
					  </tr>
					  <tr align="center">
					    <td width="11%" height="22" >审核意见：</td>
					    <td height="22" colspan="3" align="left" ><textarea name="summarize" cols="50" rows="6"  class="input"><%=StringUtil.notNull(e.getSummarize())%></textarea></td>
					  </tr>
					  </table>
			  
				</fieldset>			</TD>
			
		</TR>
		</TABLE>
	 </td>
  </tr>
   <%}else{ %>
  <tr>
    <td height="22" colspan="4" align="center" >该信息不存在！！！</td>
  </tr>
  <%}%>
	<TR>
		<TD colspan="2" align="center" height="50px">
			<input name="提交" type="submit" class="button" value="保存"/>　
			<input name="重置" type="reset" class="button" value="重置"/>
		</TD>
	</TR>
</TABLE>	
</div>
</form>
</body>
</html>

