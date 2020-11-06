package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import model.bean.NhanVien;

public class ShowNhanVienDAO {
	
	public ArrayList<NhanVien> getUsers() throws SQLException, ClassNotFoundException{
		ArrayList<NhanVien> result = new ArrayList<NhanVien>();
		NhanVien user;
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/dulieu?serverTimezone=UTC", "root", "");
		Statement stmt =  conn.createStatement();							
		String sql = "select * from nhanvien" ;									
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
