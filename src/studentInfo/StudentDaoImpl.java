package studentInfo;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;


import studentInfo.Student;
import studentInfo.BaseDao;

public class StudentDaoImpl 
{
	BaseDao bs=new BaseDao();
	Connection conn=null;
	PreparedStatement pstmt=null;
	
	
	

		public ArrayList<Student> findAll()
		{
			// 查看整个学生表
			ArrayList<Student> AL =new ArrayList<Student>();
			String sql="select * from student";
			ResultSet rs=null;
			conn=bs.getConnection();
			try
			{
				pstmt=conn.prepareStatement(sql);
				rs=pstmt.executeQuery();
				//System.out.println("学号"+"\t"+"姓名"+"\t"+"年龄"+"\t"+"性别"+"\t"+"年级"+"\t"+"学院"+"\t" );
	 			while(rs.next())
				{
					Student stu=new Student();
					stu.setId(rs.getString(1));
					stu.setName(rs.getString(2));   
					stu.setAge(rs.getString(3));
					stu.setSex(rs.getString(4));
					stu.setGrade(rs.getString(5));
					stu.setCollage(rs.getString(6));
					AL.add(stu);	
				}
	 			for(int i=0;i<AL.size();i++)
	 			{
	 				//System.out.println(AL.get(i).getId()+"\t"+AL.get(i).getName()+"\t"+AL.get(i).getAge()+"\t"+AL.get(i).getSex()+"\t"+AL.get(i).getGrade()+"\t"+AL.get(i).getCollage() ); 
	 			}
			}
			catch (SQLException e)
			{
				// TODO 自动生成的 catch 块
				e.printStackTrace();
			}
			finally
			{
				bs.closeConn(conn, pstmt, rs);
			}
			return AL;
		}
		public Student findStudent(String id)
		{
			//根据学号查找学生
			Student stu=new Student();
			conn=bs.getConnection();
			ResultSet rs=null;
			String sql="select * from student where id=? ";
			
			try
			{
				pstmt=conn.prepareStatement(sql);
				pstmt.setString(1, id);
				rs=pstmt.executeQuery();
				//System.out.println("学号"+"\t"+"姓名"+"\t"+"年龄"+"\t"+"性别"+"\t"+"年级"+"\t"+"学院"+"\t" );
				while(rs.next())
				{
					
					stu.setId(id);
					stu.setName(rs.getString(2));
					stu.setAge(rs.getString(3));
					stu.setSex(rs.getString(4));
					stu.setGrade(rs.getString(5));
					stu.setCollage(rs.getString(6));
					
				}	
					//System.out.println(stu.getId()+"\t"+stu.getName()+"\t"+stu.getAge()+"\t"+stu.getSex()+"\t"+stu.getGrade()+"\t"+stu.getCollage()); 
				
			}
			catch (SQLException e)
			{
				// TODO 自动生成的 catch 块
				e.printStackTrace();
			}
			finally
			{
				bs.closeConn(conn, pstmt, rs);
			}
			return stu;
		}
		
		
		public boolean delStudent(String id)//根据id删除学生信息
		{
			boolean isflag=false;
			conn=bs.getConnection();
			String sql="delete  from student where id=? ";
			try
			{
				pstmt=conn.prepareStatement(sql);
				pstmt.setString(1, id);
				int num=pstmt.executeUpdate();
				if(num>0)
				{
					isflag=true;
					System.out.println("删除成功！");
					System.out.println("------------------");
				}
			} catch (SQLException e)
			{
				// TODO 自动生成的 catch 块
				e.printStackTrace();
			}
			finally
			 {
				bs.closeConn(conn, pstmt);
			 }
			return isflag;
		}
		
		public boolean addStudent(String id,String name,String age,String sex,String collage,String grade)//添加学生信息
		{
			boolean isflag=false;
			conn=bs.getConnection();
			String sql="insert into  student values(?,?,?,?,?,?) ";
			try
			{
				pstmt=conn.prepareStatement(sql);
				pstmt.setString(1, id);
				pstmt.setString(2, name);
				pstmt.setString(3, age);
				pstmt.setString(4, sex);
				pstmt.setString(5, collage);
				pstmt.setString(6, grade);
				int num=pstmt.executeUpdate();
				if(num>0)
				{
					isflag=true;
					System.out.println("添加成功！");
					System.out.println("------------------");
				}
			} catch (SQLException e)
			{
				// TODO 自动生成的 catch 块
				e.printStackTrace();
			}
			finally
			 {
				bs.closeConn(conn, pstmt);
			 }
			return isflag;
		}
		public boolean updateStudent(String id,String age)//根据学号修改学生年龄
		{
			boolean isflag=false;
			conn=bs.getConnection();
			String sql="update student set age=? where id=? ";
			try
			{
				pstmt=conn.prepareStatement(sql);
				pstmt.setString(2, id);
				pstmt.setString(1, age);
				int num=pstmt.executeUpdate();
				if(num>0)
				{
					isflag=true;
					System.out.println("更新成功！");
					System.out.println("------------------");
				}
			} catch (SQLException e)
			{
				// TODO 自动生成的 catch 块
				e.printStackTrace();
			}
			finally
			{
				bs.closeConn(conn, pstmt);
			}
			return isflag;
		}

		
}
