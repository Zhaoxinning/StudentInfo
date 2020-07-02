<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@page import="studentInfo.Student"%>
<%@page import="java.util.ArrayList"%>      
<%@page import="studentInfo.StudentDaoImpl"%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<style>
 h3 { 
     color: white;
	 font-size:36px;
	 padding:18px;
     text-shadow: 1px 1px black, -1px -1px black,
                  1px -1px black, -1px 1px black;	
}
</style>
<title>按学号删除学生信息</title>
</head>
<body background="2.jpg">
<center>
<h3 style="font-family:times;color:white">按学号删除</h3>
<form  action="" method="post" >
<table>
<tr>
<td><b style="font-family:times;color:white">请输入学生的学号</b></td>
<td><input type="text" name="Num" ></td>
</tr>
</table>
<br><br>
<input type="submit" value="确定" />
<input type="button" value="返回" onclick="javascript:history.go(-1);">
</form>
<%
		StudentDaoImpl a=new StudentDaoImpl();
		String num=request.getParameter("Num");
		Student stu=new Student();
		boolean isflag=false;
		isflag=a.delStudent(num);
		if(isflag==true)
		{	
%>
			<br><br>
			删除成功
<%
		}
%>			
</center>
</body>
</html>
