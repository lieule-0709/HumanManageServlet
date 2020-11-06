package model;

import java.sql.*;
import java.util.ArrayList;

import model.bean.NhanVien;
import model.bean.User;


public class SearchDAO {

	public ArrayList<NhanVien> getUsers(String userName, String manv) throws SQLException, ClassNotFoundException{
		ArrayList<NhanVien> result = new ArrayList<NhanVien>();
		NhanVien user;
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/dulieu?serverTimezone=UTC", "root", "");
		Statement stmt =  conn.createStatement();
		String sql = "select * from nhanvien where hoTen LIKE '%" + userName+"%'" ;
		
		if(userName.equals("")) {
			sql = "select * from nhanvien where IDNV LIKE '%" + manv+"%'" ;
		}
		else if(manv.equals("")) {
			sql = "select * from nhanvien where hoTen LIKE '%" + userName+"%'" ;
		}
		else {
			sql = "select * from nhanvien where hoTen LIKE '%" + userName+"%' and IDNV LIKE '%" + manv+"%'" ;
		}
		
		ResultSet rs = stmt.executeQuery(sql);
		
		while(rs.next()){
			user = new NhanVien();
			user.setId(rs.getString(1));
			user.setname(rs.getString(2));
			user.setAdd(rs.getString(3));
			user.setIdpb(rs.getString(4));
			result.add(user);
		}
		
		rs.close();
		stmt.close();
		return result;
	}
}
