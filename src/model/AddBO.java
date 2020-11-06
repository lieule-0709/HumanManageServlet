package model;

import java.sql.SQLException;
import java.util.ArrayList;

import model.bean.NhanVien;
import model.bean.User;

public class AddBO {
	AddDAO addDAO = new AddDAO();
	
	public void add(String masv, String userName, String gender, String khoa) throws ClassNotFoundException, SQLException {
		addDAO.add(masv, userName, gender, khoa);
	}
	
	public ArrayList<NhanVien> getUsers() throws ClassNotFoundException, SQLException{
		return addDAO.getUsers();
	}
}
