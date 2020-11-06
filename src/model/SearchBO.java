package model;

import java.sql.SQLException;
import java.util.ArrayList;

import model.bean.NhanVien;
import model.bean.User;

public class SearchBO {

	SearchDAO searchDAO = new SearchDAO();
	
	public ArrayList<NhanVien> getUsers(String userName, String manv) throws ClassNotFoundException, SQLException{
		return searchDAO.getUsers(userName, manv);
	}
	
}
