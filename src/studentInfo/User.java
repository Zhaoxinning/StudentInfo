package studentInfo;

public class User {
	private String username;
    private String password;
	public String getusername()
	{
		return username;
	}
	public void setusername(String username)
	{
		this.username = username;
	}
	public String getpassword()
	{
		return password;
	}
	public void setpassword(String password)
	{
		this.password = password;
	}
	
	public User(String username, String password)
	{
		super();
		this.username = username;
		this.password = password;
	}
	public User()
	{
		super();
	}
}
