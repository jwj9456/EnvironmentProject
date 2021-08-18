package members.model;

import java.util.Date;

public class Members {
	private String id;
	private String password;
	private String email;
	private Date regDate;
	
	public Members(String id, String password, String email, Date regDate) {
		super();
		this.id = id;
		this.password = password;
		this.email = email;
		this.regDate = regDate;
	}

	public String getId() {
		return id;
	}

	public String getPassword() {
		return password;
	}

	public String getEmail() {
		return email;
	}

	public Date getRegDate() {
		return regDate;
	}
	
	public boolean matchPassword(String pwd) {
		return password.equals(pwd);
	}
}
