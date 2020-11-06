package model;

import java.util.ArrayList;

public class bean {
	public static class User{
		private String id;
		private String name;
		private String pass;
		
		public String getId() {
			return id;
		}
		public void setId(String id){
			this.id= id;
		}
		
		public String getname() {
			return name;
		}
		public void setname(String name){
			this.name= name;
		}

		public String getpass() {
			return pass;
		}
	}
	
	
	public static class NhanVien{
		private String id;
		private String name;
		private String add;
		private String idpb;
		
		public String getId() {
			return id;
		}
		public void setId(String id){
			this.id= id;
		}
		
		public String getname() {
			return name;
		}
		public void setname(String name){
			this.name= name;
		}

		public String getAdd() {
			return add;
		}
		public void setAdd(String gender){
			this.add= gender;
		}
		
		public String getIdpb() {
			return idpb;
		}
		public void setIdpb(String khoa){
			this.idpb= khoa;
		}
	}
	

	public static class PhongBan{
		private String id;
		private String name;
		private String add;
		
		public String getId() {
			return id;
		}
		public void setId(String id){
			this.id= id;
		}
		
		public String getname() {
			return name;
		}
		public void setname(String name){
			this.name= name;
		}

		public String getAdd() {
			return add;
		}
		public void setAdd(String gender){
			this.add= gender;
		}
	}
	
	public ArrayList<User> listUser;
	public ArrayList<NhanVien> listNhanVien;
	public ArrayList<PhongBan> listPhongBan;

}
