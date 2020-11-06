package controller;

import java.awt.Window;
import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


import model.AddBO;
import model.CheckLoginBO;
import model.UpdateBO;
import model.bean.NhanVien;
import model.bean.User;

/**
 * Servlet implementation class AddServlet
 */
@WebServlet("/AddServlet")
public class AddServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
//		response.getWriter().append("Served at: ").append(request.getContextPath());
		String manv= new String(request.getParameter("manv"));
		String userName= request.getParameter("userName");
		String add = request.getParameter("add");
		String idpb= request.getParameter("IDPB");
		ArrayList<NhanVien> listUsers = null;
		
		AddBO addBO = new AddBO();
		try {
			addBO.add(manv, userName, add, idpb);
			listUsers = addBO.getUsers();
			request.setAttribute("listUsers", listUsers);
			RequestDispatcher rd = getServletContext().getRequestDispatcher("/xemthongtinnhanvien.jsp");
			rd.forward(request, response);
	
		} catch (ClassNotFoundException | SQLException | ServletException | IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);	
	}

}
