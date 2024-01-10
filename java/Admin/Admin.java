package Admin;

public class Admin {

	public int id;
	private String A_name;
	private String A_email;
	private int A_contactNo;
	private String A_password;
	public Admin(int id, String a_name, String a_email, int a_contactNo, String a_password) {
		super();
		this.id = id;
		A_name = a_name;
		A_email = a_email;
		A_contactNo = a_contactNo;
		A_password = a_password;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getA_name() {
		return A_name;
	}
	public void setA_name(String a_name) {
		A_name = a_name;
	}
	public String getA_email() {
		return A_email;
	}
	public void setA_email(String a_email) {
		A_email = a_email;
	}
	public int getA_contactNo() {
		return A_contactNo;
	}
	public void setA_contactNo(int a_contactNo) {
		A_contactNo = a_contactNo;
	}
	public String getA_password() {
		return A_password;
	}
	public void setA_password(String a_password) {
		A_password = a_password;
	}
	
	
	
	
	
	
	
}
