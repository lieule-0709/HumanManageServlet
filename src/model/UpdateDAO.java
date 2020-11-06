package model;

import java.sql.*;
import java.util.ArrayList;

import model.bean.NhanVien;
import model.bean.User;

public class UpdateDAO {
	public void update(String manv, String userName, String diaChi, String IDPB) throws ClassNotFoundException, SQLException {
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/dulieu?serverTimezone=UTC", "root", "");
		Statement stmt =  conn.createStatement();							
		String sql = "UPDATE `nhanvien` SET `hoTen`='"+ userName+"',`diaChi`='"+diaChi +"', `IDPB`='"+IDPB +"' WHERE IDNV = '"+ manv+ "'";
		System.out.print(sql);
		stmt.executeUpdate(sql);
	}
	
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
