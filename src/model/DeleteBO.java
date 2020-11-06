package model;

import java.sql.SQLException;
import java.util.ArrayList;

import model.bean.User;

public class DeleteBO {
	
	DeleteDAO deleteDAO = new DeleteDAO();
	
	public void delete(String masv) throws ClassNotFoundException, SQLException {
		deleteDAO.delete(masv);
	}
	
	public ArrayList<User> getUsers() throws ClassNotFoundException, SQLException{
		return deleteDAO.getUsers();
	}
	
}
