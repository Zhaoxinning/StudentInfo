package studentInfo;
import java.util.ArrayList;
import java.util.List;
import studentInfo.Student;

public class StudentDao {

	    /**
	     * 添加一个学生
	     * @param student
	     * @return
	     */
	    public ArrayList<Student> findAll()
	    {
			return null;
		}
	    
	    /**
	     * 删除一个学生
	     * @param id
	     * @return boolean
	     */
		public Student findStudent(String id)
		{
			return null;			
		}
	    
	    /**
	     * 更新
	     * @param student
	     * @return
	     */
		public boolean delStudent(String id)//根据id删除学生信息
		{
			return false;			
		}
	    
	    /**
	     * 获取所有的学生
	     * @return
	     */
		public boolean addStudent(String id,String name,String age,String sex,String collage,String grade)//添加学生信息
	    {
			return false;
	    	
	    }
	    
	    /**
	     * 根据客户的编号查询客户
	     * @param id
	     * @return 成功则返回此用户，否则返回null
	     */
		public boolean updateStudent(String id,String age)//根据学号修改学生年龄
		{
			return false;
			
		}
}
