package studentInfo;
import java.sql.*;
public class BaseDao 
{
	public Connection getConnection()
	{	
		Connection conn=null;
		try
		{
			Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
			conn=DriverManager.getConnection("jdbc:sqlserver://127.0.0.1:1433;DatabaseName=jsp1","sa","123456");
		}
		catch (Exception e)
		{
			e.printStackTrace();
		}
		return conn;
	  }
	  public void closeConn(Connection conn,PreparedStatement pstmt,ResultSet rs)
	  {
	      try
	      {
	         if(rs!=null)
	          {
	             rs.close();
	          }
	         if(pstmt!=null)
	         {
	        	 pstmt.close();
	         }
	         if(conn!=null)
	         {
	        	 conn.close();
	         }

	      }
	      catch(Exception ex)
	      {
	    	  System.out.println(ex.getMessage());
	      }	
	  }
	  public void closeConn(Connection conn,PreparedStatement pstmt)
	  {
	      try
	      {
	         
	         if(pstmt!=null)
	         {
	        	 pstmt.close();
	         }
	         if(conn!=null)
	         {
	        	 conn.close();
	         }

	      }
	      catch(Exception ex)
	      {
	    	  System.out.println(ex.getMessage());
	      }	
	  }
	 public static void main(String [] args)
	 {
		  String driverName="com.microsoft.sqlserver.jdbc.SQLServerDriver";
		  String dbURL="jdbc:sqlserver://127.0.0.1:1433;DatabaseName=jsp1";
		  String userName="sa";
		  String userPwd="123456";
		  PreparedStatement pstmt=null;
		  try
		  {
		      Class.forName(driverName);
		      System.out.println("加载驱动成功！");
		  }catch(Exception e){
		    e.printStackTrace();
		    System.out.println("加载驱动失败！");
		  }
		  try{
		        Connection dbConn=DriverManager.getConnection(dbURL,userName,userPwd);
		        System.out.println("连接数据库成功！");
		        Statement stat = dbConn.createStatement();
		        stat.close();
		        dbConn.close();
		  }catch(Exception e)
		  {
		    e.printStackTrace();
		    System.out.print("SQL Server连接失败！");
		  }
	   }
}

