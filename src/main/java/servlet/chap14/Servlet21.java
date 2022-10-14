package servlet.chap14;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import domain.chap14.Product;

/**
 * Servlet implementation class Servlet21
 */
@WebServlet("/Servlet21")
public class Servlet21 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Servlet21() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String id = request.getParameter("id");

		// 2. request param 가공
		if (id == null || id.equals("")) {
			id = "1";
		}

		String sql = "SELECT ProductName, Price FROM Products "
				+ "WHERE ProductID = " + id; //sql을 스트링 연결연산자로 사용하는 것은 안전하지 않으므로 이렇게 쓰지 않도록 주의.
		ServletContext application = request.getServletContext();

		String url = application.getAttribute("jdbc.url").toString();
		String user = application.getAttribute("jdbc.username").toString();
		String pw = application.getAttribute("jdbc.password").toString();

		try (
				Connection con = DriverManager.getConnection(url, user, pw);
				Statement stmt = con.createStatement();
				ResultSet rs = stmt.executeQuery(sql);) {

			List<Product> list = new ArrayList<>();
			while (rs.next()) {
				Product p=new Product();
			//	p.setId(id);
				p.setName(rs.getString("ProductName"));
				p.setPrice(rs.getDouble("Price"));
				
				list.add(p);

			//	product.setName(productName);
			//	product.setPrice(price);
			//	product.setId(id);

				
			}

			// 4. add attribute
			request.setAttribute("products", list);

		} catch (Exception e) {
			e.printStackTrace();
		}
		// 5. forward / redirect
		String path = "/WEB-INF/view/chap14/view09.jsp";
		request.getRequestDispatcher(path).forward(request, response);

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
