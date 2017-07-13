<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
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
<form name="jobForm" method="post" action="modifyjob.do?action=addjob" onSubmit="return jobValidate();" >
<div class="MainDiv">
<table width="99%" border="0" cellpadding="0" cellspacing="0" class="CContent">
  <tr>
      <th class="tablestyle_title" >项目申报</th>
  </tr>
  <tr>
    <td class="CPanel">
		
		<table border="0" cellpadding="0" cellspacing="0" style="width:80%" align="center">		
		<TR>
			<TD width="100%">
				<fieldset style="height:100%;">
				<legend>填写申报信息</legend>
				<table border="0" cellpadding="2" cellspacing="1" style="width:100%">
				<tr>
					<td nowrap align="right" width="9%">项目名称：</td>
					<td width="36%"><input name="name" type="text" class="input">
					<span class="red">*</span></td>
					<td width="12%"><div align="right">项目类别：</div></td>
					<td width="43%">
					<input name="sex" type="radio" value="1" checked>创新
					<input name="sex" type="radio" value="0">创业
				</tr>
				<tr>
					<td nowrap align="right" width="9%">年限：</td>
					<td><input name="age" type="text" class="input">
					<span class="red">*</span></td>
					<td><div align="right">指导教师：</div></td>
					<td><input name="job" type="text" class="input">
					<span class="red">*</span></td>
				</tr>
					<tr>
					<td nowrap align="right">项目负责人：</td>
					<td><input name="specialty" type="text" class="input">
					<span class="red">*</span></td>
					<td><div align="right">团队人数：</div></td>
					<td><input name="experience" type="text" class="input">
					<span class="red">*</span></td>
				</tr>
				<tr>
					<td nowrap align="right">学院：</td>
					<td><select id="studyeffort" name="studyeffort" style="width: 154px; height: 23px"> 
					<option value="">请选择...</option> 
					<option value="经管">经济管理学院</option> 
					</select>
					<span class="red">*</span></td>
					<td><div align="right">负责人专业：</div></td>
					<td><select id="school" name="school" style="width: 154px; height: 23px"> 
					<option value="">请选择...</option> 
					<option value="信管">信管</option> 
					<option value="财务">财务</option>
					<option value="行政">行政</option> 
					<option value="国贸">国贸</option>
					<option value="会计">会计</option>
					<option value="工管">工管</option>
					<option value="营销">营销</option>
					<option value="经济">经济</option>
					</select>
					<span class="red">*</span></td> 
				</tr>
				<tr>
					<td nowrap align="right">电话：</td>
					<td><input name="tel" type="text" class="input">
					<span class="red">*</span></td>
					<td><div align="right">Email：</div></td>
					<td><input name="email" type="text" class="input">
					</td>
				</tr>
				
				<tr>
					<td width="9%" nowrap align="right">项目简介：</td>
					<td colspan="3">
					<textarea name="content" cols="100" rows="6" class="input" id="content">
					</textarea></td>
				</tr>
				<tr>
				<td nowrap align="right">申报书：</td>
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
			<input name="提交" type="submit" class="button" value="保存"/>　
			
			<input name="重置" type="reset" class="button" value="重置"/></TD>
		</TR>
		</TABLE>	
</div>
</form>
</body>
</html>

