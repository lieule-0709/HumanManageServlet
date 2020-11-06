package model;

import java.sql.SQLException;
import java.util.ArrayList;

import model.bean.NhanVien;
import model.bean.User;

public class UpdateBO {
	UpdateDAO updateDAO = new UpdateDAO();
	
	public void update(String manv, String userName, String add, String idpb) throws ClassNotFoundException, SQLException {
		updateDAO.update(manv, userName, add, idpb);
	}
	
	public ArrayList<NhanVien> getUsers() throws ClassNotFoundException, SQLException{
		return updateDAO.getUsers();
	}
}
