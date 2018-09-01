package com.exam.bean;

import java.sql.Date;

public class NewUserBean 
{
	private String firstName;
	private String registrationNumber;
	private String password;
	private String fatherName;
	private String motherName;
	private Date dob;
	private String gender;
	private String address;
	private String city;
	private String pincode;
	private String state;
	private String country;
	private String emailId;
	private String mobileNumber;
	private double sslcPercent;
	private String sslcSchool;
	private double hscPercent;
	private String hscSchool;
	private double diplomaPercent;
	private String diplomaCollege;
	private int departmentId;
	private int batchId;
	private double semester1;
	private double semester2;
	private double semester3;
	private double semester4;
	private double semester5;
	private double semester6;
	private double semester7;
	private double semester8;
	private boolean arrear;
	private int noOfArrear;

	public NewUserBean()
	{
		super();
	}
	public NewUserBean(String firstName, String registrationNumber,
			String password, String fatherName, String motherName, Date dob,
			String gender, String address, String city, String pincode,
			String state, String country, String emailId, String mobileNumber,
			double sslcPercent, String sslcSchool, double hscPercent,
			String hscSchool, double diplomaPercent, String diplomaCollege,
			int departmentId, int batchId, double semester1, double semester2,
			double semester3, double semester4, double semester5,
			double semester6, double semester7, double semester8,
			boolean arrear, int noOfArrear)
	{
		super();
		this.firstName = firstName;
		this.registrationNumber = registrationNumber;
		this.password = password;
		this.fatherName = fatherName;
		this.motherName = motherName;
		this.dob = dob;
		this.gender = gender;
		this.address = address;
		this.city = city;
		this.pincode = pincode;
		this.state = state;
		this.country = country;
		this.emailId = emailId;
		this.mobileNumber = mobileNumber;
		this.sslcPercent = sslcPercent;
		this.sslcSchool = sslcSchool;
		this.hscPercent = hscPercent;
		this.hscSchool = hscSchool;
		this.diplomaPercent = diplomaPercent;
		this.diplomaCollege = diplomaCollege;
		this.departmentId = departmentId;
		this.batchId = batchId;
		this.semester1 = semester1;
		this.semester2 = semester2;
		this.semester3 = semester3;
		this.semester4 = semester4;
		this.semester5 = semester5;
		this.semester6 = semester6;
		this.semester7 = semester7;
		this.semester8 = semester8;
		this.arrear = arrear;
		this.noOfArrear = noOfArrear;
	}
	public String getFirstName() 
	{
		return firstName;
	}
	public void setFirstName(String firstName) 
	{
		this.firstName = firstName;
	}
	public String getRegistrationNumber() 
	{
		return registrationNumber;
	}
	public void setRegistrationNumber(String registrationNumber) 
	{
		this.registrationNumber = registrationNumber;
	}
	public String getPassword() 
	{
		return password;
	}
	public void setPassword(String password) 
	{
		this.password = password;
	}
	public String getFatherName() 
	{
		return fatherName;
	}
	public void setFatherName(String fatherName) 
	{
		this.fatherName = fatherName;
	}
	public String getMotherName() 
	{
		return motherName;
	}
	public void setMotherName(String motherName) 
	{
		this.motherName = motherName;
	}
	public Date getDob() 
	{
		return dob;
	}
	public void setDob(Date dob) 
	{
		this.dob = dob;
	}
	public String getGender() 
	{
		return gender;
	}
	public void setGender(String gender) 
	{
		this.gender = gender;
	}
	public String getAddress() 
	{
		return address;
	}
	public void setAddress(String address) 
	{
		this.address = address;
	}
	public String getCity() 
	{
		return city;
	}
	public void setCity(String city) 
	{
		this.city = city;
	}
	public String getPincode() 
	{
		return pincode;
	}
	public void setPincode(String pincode) 
	{
		this.pincode = pincode;
	}
	public String getState() 
	{
		return state;
	}
	public void setState(String state) 
	{
		this.state = state;
	}
	public String getCountry() 
	{
		return country;
	}
	public void setCountry(String country) 
	{
		this.country = country;
	}
	public String getEmailId() 
	{
		return emailId;
	}
	public void setEmailId(String emailId) 
	{
		this.emailId = emailId;
	}
	public String getMobileNumber() 
	{
		return mobileNumber;
	}
	public void setMobileNumber(String mobileNumber) 
	{
		this.mobileNumber = mobileNumber;
	}
	public double getSslcPercent() 
	{
		return sslcPercent;
	}
	public void setSslcPercent(double sslcPercent) 
	{
		this.sslcPercent = sslcPercent;
	}
	public String getSslcSchool() 
	{
		return sslcSchool;
	}
	public void setSslcSchool(String sslcSchool) 
	{
		this.sslcSchool = sslcSchool;
	}
	public double getHscPercent() 
	{
		return hscPercent;
	}
	public void setHscPercent(double hscPercent) 
	{
		this.hscPercent = hscPercent;
	}
	public String getHscSchool() 
	{
		return hscSchool;
	}
	public void setHscSchool(String hscSchool) 
	{
		this.hscSchool = hscSchool;
	}
	public double getDiplomaPercent() 
	{
		return diplomaPercent;
	}
	public void setDiplomaPercent(double diplomaPercent) 
	{
		this.diplomaPercent = diplomaPercent;
	}
	public String getDiplomaCollege() 
	{
		return diplomaCollege;
	}
	public void setDiplomaCollege(String diplomaCollege) 
	{
		this.diplomaCollege = diplomaCollege;
	}
	public int getDepartmentId() 
	{
		return departmentId;
	}
	public void setDepartmentId(int departmentId) 
	{
		this.departmentId = departmentId;
	}
	public int getBatchId() 
	{
		return batchId;
	}
	public void setBatchId(int batchId) 
	{
		this.batchId = batchId;
	}
	public double getSemester1() 
	{
		return semester1;
	}
	public void setSemester1(double semester1) 
	{
		this.semester1 = semester1;
	}
	public double getSemester2() 
	{
		return semester2;
	}
	public void setSemester2(double semester2) 
	{
		this.semester2 = semester2;
	}
	public double getSemester3() 
	{
		return semester3;
	}
	public void setSemester3(double semester3) 
	{
		this.semester3 = semester3;
	}
	public double getSemester4() 
	{
		return semester4;
	}
	public void setSemester4(double semester4) 
	{
		this.semester4 = semester4;
	}
	public double getSemester5() 
	{
		return semester5;
	}
	public void setSemester5(double semester5) 
	{
		this.semester5 = semester5;
	}
	public double getSemester6() 
	{
		return semester6;
	}
	public void setSemester6(double semester6) 
	{
		this.semester6 = semester6;
	}
	public double getSemester7() 
	{
		return semester7;
	}
	public void setSemester7(double semester7) 
	{
		this.semester7 = semester7;
	}
	public double getSemester8() 
	{
		return semester8;
	}
	public void setSemester8(double semester8) 
	{
		this.semester8 = semester8;
	}
	public boolean isArrear() 
	{
		return arrear;
	}
	public void setArrear(boolean arrear) 
	{
		this.arrear = arrear;
	}
	public int getNoOfArrear() 
	{
		return noOfArrear;
	}
	public void setNoOfArrear(int noOfArrear) 
	{
		this.noOfArrear = noOfArrear;
	}
	@Override
	public String toString()
	{
		String result= "[FirstName:"+firstName+", RegistrationNumber:"+registrationNumber+",Password:"+password+", FatherName:"+fatherName+", MotherName:"+motherName+", DOB:"+dob+", Gender:"+gender+", Address:"+address+", City:"+city+", Pincode:"+pincode+", State:"+state+", Country:"+country+", EmailId"+emailId+", MobileNumber:"+mobileNumber;
		result=result+", SSLC %:"+sslcPercent+", SSLC School:"+sslcSchool+", HSC %:"+hscPercent+", HSC School:"+hscSchool+", Diploma %"+diplomaPercent+", Diploma College"+diplomaCollege+", Semester1:"+semester1+", Semester2:"+semester2+", Semester3:"+semester3+", Semester4:"+semester4+", Semester5:"+semester6+", Semester7:"+semester7+", Semester8:"+semester8;
		result=result+",DepartmentId:"+departmentId+", BatchId:"+batchId+", Arrear:"+arrear+"NoOfArrear:"+noOfArrear+"]";
		return result;
	}
}