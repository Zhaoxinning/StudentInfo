<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="studentInfo.BaseDao"%>  
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="studentInfo.Student"%>
<%@page import="studentInfo.UserImpl"%>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>getform</title>
</head>
<body background="2.jpg">
<h3 style="font-family:times;color:white">登录跳转界面</h3>
<%	
    	String username=request.getParameter("Name");
    	String password=request.getParameter("pswd");
    	int ifmanager=3;
      
		BaseDao bs=new BaseDao();
	    Connection conn=null;
	    PreparedStatement pstmt=null;
		conn=bs.getConnection();
        ResultSet rs=null;
        String sql="Select * from manager where username=? and password=?";
        try
		{
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1,username);
			pstmt.setString(2,password);
			rs=pstmt.executeQuery();
			
			if(rs.next())
			{
				ifmanager=rs.getInt(3);
				out.println("登录成功");
				if(ifmanager==0)
					{
								   
					   response.sendRedirect("teacher.jsp");//跳转到教师界面
					        	
					}
				else
					{
								  
					   response.sendRedirect("student.jsp");//跳转到学生界面
					}   
			}
			else
				out.print("登录失败，请校对用户名或者密码");
		} 
        catch (Exception e)
		{
			
			e.printStackTrace();
		}
        finally
        {
        	bs.closeConn(conn, pstmt, rs);
        }
		
		
%>
		
</body>
</html>
