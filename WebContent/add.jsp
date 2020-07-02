<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@page import="studentInfo.StudentDaoImpl"%> 
<%@page import="studentInfo.BaseDao"%>  
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>   
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
<title>添加新学生信息</title>
</head>
<jsp:useBean id="student" scope="request" class="studentInfo.StudentDaoImpl"></jsp:useBean>
<body background="2.jpg">
	<center>
	<h3 style="font-family:times;color:white">添加学生信息</h3>
	<form method="post" action="">
   	<h4 style="font-family:times;color:white"> 
	学号：<input name="id" type="text" id="id" >
	</h4>
   	<h4 style="font-family:times;color:white"> 
	姓名：<input name="name" type="text" id="name" >
	</h4>
	<h4 style="font-family:times;color:white">
	性别：<input name="sex" type="text" id="sex"  >
	</h4>
	<h4 style="font-family:times;color:white">
   	年龄：<input name="age" type="text" id="age" >
	</h4>
	<h4 style="font-family:times;color:white">
	年级：<input name="grade" type="text" id="grade" >
	</h4>
	<h4 style="font-family:times;color:white"> 
	学院：<input name="collage" type="text" id="collage" >
	</h4>
	
	<input name="Submit" type="submit" value="增加">
	<input type="button" value="返回" onclick="javascript:history.go(-1);">   
	</form>
	<%
	response.setContentType("text/html;charset=gb2312"); request.setCharacterEncoding("gb2312");//解决数据库乱码
	String stuid=request.getParameter("id");
	String stuname=request.getParameter("name");
 	String stusex=request.getParameter("sex");
 	String stuage=request.getParameter("age");
 	String stugrade=request.getParameter("grade");
 	String stucollage=request.getParameter("collage");
 	StudentDaoImpl a=new StudentDaoImpl();
 	
 	
 	
 	BaseDao bs=new BaseDao();
	Connection conn=null;
	PreparedStatement pstmt=null;
	
	conn=bs.getConnection();
	String sql="insert into  student values(?,?,?,?,?,?) ";
	try
	{
		pstmt=conn.prepareStatement(sql);
		pstmt.setString(1, stuid);
		pstmt.setString(2, stuname);
		pstmt.setString(3, stuage);
		pstmt.setString(4, stusex);
		pstmt.setString(5, stugrade);
		pstmt.setString(6, stucollage);
		int num=pstmt.executeUpdate();
		if(num>0)
		{
			
			out.println("添加成功！");
			
		}
	} catch (Exception e)
	{
		// TODO 自动生成的 catch 块
		e.printStackTrace();
	}
	finally
	{
		bs.closeConn(conn, pstmt);
	}
 	
 	%>
	
	</center>
</body>
</html>
