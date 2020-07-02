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
<title>按学号查看学生信息</title>
</head>
<body background="2.jpg">
<center>
<h3 style="font-family:times;color:white">按学号查看</h3>
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
		stu=a.findStudent(num);
		if(stu.getId()!=null)
		{	
%>		
		<br><br>
			
学号&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
姓名&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
年龄&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
性别&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
年级&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
学院
		<br><br>		
		<%=stu.getId()%>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<%=stu.getName()%>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<%=stu.getAge()%>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
		<%=stu.getSex()%>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<%=stu.getGrade()%>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  
		<%=stu.getCollage()%>
<%
		}

%>		
</center>
</body>
</html>
