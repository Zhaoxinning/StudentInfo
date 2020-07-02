<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<style>
 h2 { 
     color: white;
	 font-size:36px;
	 padding:18px;
     text-shadow: 1px 1px black, -1px -1px black,
                  1px -1px black, -1px 1px black;	
}
</style>
<title>学生登录成功界面</title>
</head>
<body background="2.jpg">
<center>
<h2 style="font-family:times;color:white">尊敬的学生，您登陆成功</h2>
<a href="selectall.jsp" style="font-family:times;color:Chocolate  ">查看所有学生信息</a>
<br/><br/><br/><br/>
<a href="selectid.jsp" style="font-family:times;color:Chocolate ">按学号查看学生信息</a>
<br/><br/><br/><br/>
<form>
<input type="button" value="返回" onclick="javascript:history.go(-1);">
</form>

</center>
</body>
