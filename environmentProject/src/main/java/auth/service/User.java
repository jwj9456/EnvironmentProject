package auth.service;

public class User {
	private String id;
	private String email;
	
	public User(String id, String email) {
		super();
		this.id = id;
		this.email = email;
	}

	public String getId() {
		return id;
	}

	public String getEmail() {
		return email;
	}
}
