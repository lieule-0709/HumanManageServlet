package model;

import java.sql.SQLException;
import java.util.ArrayList;

import model.bean.NhanVien;
import model.bean.PhongBan;

public class ShowPhongBanBO {
	
	ShowPhongBanDAO showpbDAO = new ShowPhongBanDAO();
	
	public ArrayList<PhongBan> getPhongBans() throws ClassNotFoundException, SQLException{
		return showpbDAO.getPBs();
	}
}
