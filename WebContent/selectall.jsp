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
<title>查看所有学生信息</title>
</head>
<body background="2.jpg">
<center>
<h3 style="font-family:times;color:white">查看所有学生信息</h3>
<%
//查看整个学生表
			StudentDaoImpl a=new StudentDaoImpl();
			ArrayList<Student> AL=a.findAll();
%>			
学号&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
姓名&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
年龄&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
性别&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
年级&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
学院
			<br>
<% 			
			for(int i=0;i<AL.size();i++)
			{
%>				
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				&nbsp;&nbsp;<%=AL.get(i).getId()%>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				&nbsp;&nbsp;<%=AL.get(i).getName()%>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				&nbsp;&nbsp;<%=AL.get(i).getAge()%>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				&nbsp;&nbsp;<%=AL.get(i).getSex()%>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				&nbsp;&nbsp;<%=AL.get(i).getGrade()%>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				&nbsp;&nbsp;<%=AL.get(i).getCollage()%>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;			
			<br>
						
<% 
			}
			
%>
<br><br>
<form>
<input type="button" value="返回" onclick="javascript:history.go(-1);">
</form>
</center>
</body>
</html>
