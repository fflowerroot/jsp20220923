package servlet.chap14;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Servlet12
 */
@WebServlet("/Servlet12")
public class Servlet12 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Servlet12() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String sql = "SELECT CustomerName "
				+ "FROM Customers "
			//	+"WHERE CustomerID<=2 "
				+ "ORDER BY CustomerName";
		try {
			Class.forName("org.mariadb.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}

		ServletContext application = request.getServletContext();

		String url = application.getAttribute("jdbc.url").toString();
	//	System.out.println(url);
		String user = application.getAttribute("jdbc.username").toString();
	//	System.out.println(user);
		String password = application.getAttribute("jdbc.password").toString();
	//	System.out.println(password);

		try (
				Connection con = DriverManager.getConnection(url, user, password);
				Statement stmt = con.createStatement();
				ResultSet rs = stmt.executeQuery(sql);) {
			System.out.println("문제없이 연결됨");
//			System.out.println(rs.next());
//			System.out.println(rs.getString(1));
//			System.out.println(rs.next());
//			System.out.println(rs.next());

			while(rs.next()) {
				System.out.println(rs.getString(1));
					
			}
			
			
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("문제가 발생됨");
		}

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
