package controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.AddBO;
import model.UpdateBO;
import model.bean.NhanVien;
import model.bean.User;

/**
 * Servlet implementation class UpdateServlet
 */
@WebServlet("/UpdateServlet")
public class UpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateServlet() {
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
		
		UpdateBO updateBO = new UpdateBO();
		try {
				updateBO.update(manv, userName, add, idpb);
				listUsers = updateBO.getUsers();
				request.setAttribute("listUsers", listUsers);
				RequestDispatcher rd = getServletContext().getRequestDispatcher("/chinhsua.jsp");
				rd.forward(request, response);
	
		} catch (ClassNotFoundException | SQLException | ServletException | IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();

			RequestDispatcher rd = getServletContext().getRequestDispatcher("/chinhsua.jsp");
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
