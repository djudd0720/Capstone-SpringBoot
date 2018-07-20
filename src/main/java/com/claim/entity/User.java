package com.claim.entity;

/*import javax.persistence.CascadeType;*/
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
/*import javax.persistence.OneToOne;*/
import javax.persistence.Table;

	@Entity
	@Table (name="user")
	public class User {
		// variables
		@Column(name = "fName")
		private String fName;
		@Column(name = "lName")
		private String lName;
		@Id
		@Column(name = "email")
		private String email;
		@Column(name = "password")
		private String password;
		@Column(name = "password2")
		private String password2;
		
		@Column(name = "phone")
		private String phone;
		
	/*	@OneToOne(cascade=CascadeType.ALL)
		private Address address;*/
	
	
	public String getfName() {
		return fName;
	}
	public void setfName(String fName) {
		this.fName = fName;
	}
	public String getlName() {
		return lName;
	}
	public void setlName(String lName) {
		this.lName = lName;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	
	public String getPassword2() {
		return password2;
	}
	public void setPassword2(String password2) {
		this.password2 = password2;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	/*public Address getAddress() {
		return address;
	}
	public void setAddress(Address address) {
		this.address = address;
	}*/
	@Override
	public String toString() {
		return "User [fName=" + fName + ", lName=" + lName + ", email=" + email + ", password=" + password + ", phone="
				+ phone + "]";
	}
	
	
	
	
}
