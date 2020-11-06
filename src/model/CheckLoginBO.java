package model;

import java.sql.SQLException;
import java.util.ArrayList;

import model.bean.User;

public class CheckLoginBO {
	
	CheckLoginDAO checkLoginDAO = new CheckLoginDAO();
	
	public boolean isValidUser(String userName, String password) throws ClassNotFoundException, SQLException {
		return checkLoginDAO.isExitUser(userName, password);
	}
}
