package studentInfo;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class UserImpl 
{
	BaseDao bs=new BaseDao();
    Connection conn=null;
    PreparedStatement pstmt=null;
	public int  login(String username, String password)
	{
		//管理员登录
		
	    conn=bs.getConnection();
        ResultSet rs=null;
        int ifmanager=3;
        String sql="Select * from manager where username=? and password=?";
        try
		{
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1,username);
			pstmt.setString(2,password);
			rs=pstmt.executeQuery();
			
			if(rs.next())
			{
				ifmanager=rs.getInt(4);
				System.out.println("登录成功");
				System.out.println("----------------------");
			}
			else
				System.out.println("登录失败，请校对用户名或者密码");
		} 
        catch (SQLException e)
		{
			
			e.printStackTrace();
		}
        finally
        {
        	bs.closeConn(conn, pstmt, rs);
        }
	    return ifmanager;
	}
}