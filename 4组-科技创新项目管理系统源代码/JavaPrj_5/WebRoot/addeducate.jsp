<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
<form name="educateForm" method="post" action="modifyeducate.do?action=addeducate" onsubmit="return educateValidate();">
<div class="MainDiv">
<table width="99%" border="0" cellpadding="0" cellspacing="0" class="CContent">
  <tr>
      <th class="tablestyle_title" >填写中期检查信息</th>
  </tr>
  <tr>
    <td class="CPanel">
		
		<table border="0" cellpadding="0" cellspacing="0" style="width:80%" align="center">
		<TR>
			<TD width="100%">
				<fieldset style="height:100%;">
				<legend>填写中期检查信息</legend>
					  <table border="0" cellpadding="2" cellspacing="1" style="width:100%">
					  <tr>
					    <td nowrap align="right" width="11%">项目名称：</td>
					    <td colspan="3"><input name="name" type="text" class="input"/>
					    <span class="red">*</span></td>
					    </tr>
					  <tr>
					    <td nowrap align="right" width="11%">年限：</td>
					    <td colspan="3"><input type="text" name="purpose" class="input"/>
					    <span class="red">*</span></td>
					    </tr>
					  
					  <tr>
					    <td nowrap align="right">指导教师：</td>
					    <td><input type="text" name="teacher" class="input"/>
					    <span class="red">*</span></td>
					    </tr>
					    <tr>
					    <td nowrap align="right">学生负责人：</td>
					    <td><input type="text" name="student" class="input"/>
					    <span class="red">*</span>
						</td>
					  </tr>
					    
					  <tr>
					    <td width="11%" nowrap align="right">项目材料：</td>
					    <td colspan="3"><textarea name="datum" cols="100" rows="6" class="input"></textarea></td>
					  </tr>
					  <tr>
				<td nowrap align="right">中期检查报告：</td>
				<td>
				<input type="file" name="img" multiple="multiple" /></td>
				</tr>
					  </table>
				</fieldset>			
			</TD>
		</TR>
		</TABLE>
	 </td>
  </tr>
		<TR>
			<TD colspan="2" align="center" height="50px">
			<input name="提交" type="submit" class="button" onblur=check() value="保存"/>
			<input name="重置" type="reset" class="button" value="重置"/></TD>
		</TR>
	</TABLE>	
</div>
</form>
</body>
</html>

