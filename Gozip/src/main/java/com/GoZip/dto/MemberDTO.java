package com.GoZip.dto;
import org.apache.ibatis.type.Alias;


@Alias("member")
public class MemberDTO {
	private String id;
	private String pw;
	private String name;
	private String birth;
	private String email;
	private String phone;
	
	public MemberDTO() {
	}

	public MemberDTO(String id, String pw, String name, String birth, String email, String phone) {
		super();
		this.id = id;
		this.pw = pw;
		this.name = name;
		this.birth = birth;
		this.email = email;
		this.phone = phone;
	}


	@Override
	public String toString() {
		return "MemberDTO [id=" + id + ", pw=" + pw + ", name=" + name + ", birth=" + birth + ", email=" + email
				+ ", phone=" + phone + "]";
	}


	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getpw() {
		return pw;
	}
	public void setpw(String pw) {
		this.pw = pw;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getBirth() {
		return birth;
	}
	public void setBirth(String birth) {
		this.birth = birth;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	
	
	
	
	
}
