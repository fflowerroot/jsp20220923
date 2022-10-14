package servlet.chap14;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import domain.chap14.Employee;

/**
 * Servlet implementation class Servlet24
 */
@WebServlet("/Servlet24")
public class Servlet24 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Servlet24() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 1. 파라미터 수집 / 가공
		String keyword = request.getParameter("keyword");
		
		if (keyword == null) {
			keyword = "";
		}
		
		keyword = "%" + keyword + "%";
		
		String keyword2 = request.getParameter("keyword2");
		
		if (keyword2 == null) {
			keyword2 = "";
		}
		
		keyword2 = "%" + keyword2 + "%";
		
		String sql = "SELECT LastName, FirstName "
				+ "FROM Employees "
				+ "WHERE LastName LIKE ?"
				+ "|| FirstName LIKE ?";
		
		ServletContext application = request.getServletContext();

		String url = application.getAttribute("jdbc.url").toString();
		String user = application.getAttribute("jdbc.username").toString();
		String pw = application.getAttribute("jdbc.password").toString();

		try (
				Connection con = DriverManager.getConnection(url, user, pw);
				PreparedStatement pstmt = con.prepareStatement(sql);) {
			
			pstmt.setString(1, keyword);
			pstmt.setString(2, keyword2);
			
			try (ResultSet rs = pstmt.executeQuery()) {
				
				List<Employee> list = new ArrayList<>();
				while (rs.next()) {
					Employee e = new Employee();
					e.setFirstName(rs.getString(1));
					e.setLastName(rs.getString(2));
					
					list.add(e);
				}
				
				request.setAttribute("employeeList", list);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		String path = "/WEB-INF/view/chap14/view05.jsp";
		request.getRequestDispatcher(path).forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
