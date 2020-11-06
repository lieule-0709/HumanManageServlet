package model;

import java.sql.SQLException;
import java.util.ArrayList;

import model.bean.NhanVien;

public class ShowNhanVienBO {
	
	ShowNhanVienDAO showNhanVienDAO = new ShowNhanVienDAO();
	
	public ArrayList<NhanVien> getUsers() throws ClassNotFoundException, SQLException{
		return showNhanVienDAO.getUsers();
	}
}
