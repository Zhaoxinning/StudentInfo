package studentInfo;

public class Student {
	private String id;
    private String name;
    private String sex;
    private String age ;
    private String collage;
    private String grade;
	public String getId()
	{
		return id;
	}
	public void setId(String id)
	{
		this.id = id;
	}
	public String getName()
	{
		return name;
	}
	public void setName(String name)
	{
		this.name = name;
	}
	public String getSex()
	{
		return sex;
	}
	public void setSex(String sex)
	{
		this.sex = sex;
	}
	public String getAge()
	{
		return age;
	}
	public void setAge(String age)
	{
		this.age = age;
	}
	public String getCollage()
	{
		return collage;
	}
	public void setCollage(String collage)
	{
		this.collage = collage;
	}
	public String getGrade()
	{
		return grade;
	}
	public void setGrade(String grade)
	{
		this.grade = grade;
	}
	public Student(String id, String name, String sex, String age, String collage, String grade)
	{
		super();
		this.id = id;
		this.name = name;
		this.sex = sex;
		this.age = age;
		this.collage = collage;
		this.grade = grade;
	}
	public Student()
	{
		super();
	}

}
