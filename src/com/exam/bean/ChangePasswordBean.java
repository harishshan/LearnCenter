package com.exam.bean;

public class ChangePasswordBean
{
	
		private String userName;
		private String oldpassword;
		private String newpassword;

		public ChangePasswordBean()
		{
			super();
			// TODO Auto-generated constructor stub
		}
		public ChangePasswordBean(String userName, String oldpassword,String newpassword)
		{
			super();
			this.userName = userName;
			this.oldpassword = oldpassword;
			this.newpassword = newpassword;		
		}
		public String getUserName() 
		{
			return userName;
		}
		public void setUserName(String userName) 
		{
			this.userName = userName;
		}
		public String getOldpassword() 
		{
			return oldpassword;
		}
		public void setOldpassword(String oldpassword) 
		{
			this.oldpassword = oldpassword;
		}
		public String getNewpassword() 
		{
			return newpassword;
		}
		public void setNewpassword(String newpassword) 
		{
			this.newpassword = newpassword;
		}		
}