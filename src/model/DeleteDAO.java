package model;

import java.sql.*;
import java.util.ArrayList;

import model.bean.User;

public class DeleteDAO {
	
	public void delete(String masv) throws ClassNotFoundException, SQLException {
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/sinhvien?serverTimezone=UTC", "root", "");
		Statement stmt =  conn.createStatement();							
		String sql = "DELETE FROM `bangsinhvien` WHERE maso = '"+ masv+ "'";
		System.out.print(sql);
		stmt.executeUpdate(sql);
	}
	
	public ArrayList<User> getUsers() throws SQLException, ClassNotFoundException{
		ArrayList<User> result = new ArrayList<User>();
		User user;
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/sinhvien?serverTimezone=UTC", "root", "");
		Statement stmt =  conn.createStatement();							
		String sql = "select * from bangsinhvien" ;									
		ResultSet rs = stmt.executeQuery(sql);
		
		while(rs.next()){
			user = new User();
			user.setId(rs.getString(1));
			user.setname(rs.getString(2));
			user.setgender((rs.getString(3)));
			user.setkhoa((rs.getString(4)));
			result.add(user);
		}
		
		rs.close();
		stmt.close();

		return result;
	}
}
