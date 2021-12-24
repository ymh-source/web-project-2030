package com.ppg.main.domain;

public class LoginDTO {

	private String id;
	private String password;
	private boolean Cookie;

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public boolean isCookie() {
		return Cookie;
	}

	public void setCookie(boolean cookie) {
		this.Cookie = cookie;
	}

	@Override
	public String toString() {
		return "LoginDTO{" +
	"id='" + id + '\'' + 
	", password='" + password + '\'' +
	", Cookie=" + Cookie +
	'}';

	}

}
