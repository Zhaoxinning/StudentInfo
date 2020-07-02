<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link rel="stylesheet" href="./css/main.css">
<style>
 h1 { 
     color: white;
	 font-size:36px;
	 padding:18px;
     text-shadow: 1px 1px black, -1px -1px black,
                  1px -1px black, -1px 1px black;	
}
</style>

<title>学生学籍管理系统</title>
</head>
<body background="2.jpg">
<center>
<h1 align=center style="font-family:times;color:white">学生学籍管理系统</h1>
<hr>
<form name="登录"  method="post" action="loginsuccess.jsp" >
<table>
<tr>
<td><b style="font-family:times;color:white">账号</b></td>
<td><input type="text" name="Name" placeholder="请正确输入您的账户"></td>
</tr>
<tr>
<td><b style="font-family:times;color:white">密码</b></td>
<td><input type="password"name="pswd" placeholder="请正确输入您的密码"></td>
</tr>
</table>
<br><br>
<input type="submit" value="登录" >
<input type="button" value="退出" onclick="javascript:window.location.href ='exit.jsp';">
</form>
</center>
</body>
</html>
