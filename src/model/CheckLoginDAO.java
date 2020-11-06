package model;

import java.sql.*;
import java.util.ArrayList;

import model.bean.User;

public class CheckLoginDAO {
	public boolean isExitUser(String userName, String password) throws ClassNotFoundException, SQLException {
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/sinhvien?serverTimezone=UTC", "root", "");
		Statement stmt =  conn.createStatement();							
		String sql = "select * from admin where username='"+userName +"' and password='"+password+"'" ;									
		ResultSet rs = stmt.executeQuery(sql);
		
		if(rs.next()){
			rs.close();
			stmt.close();
			return true;
		}else{
			rs.close();
			stmt.close();
			return false;
		}
	}
}
