package servlet.chap14;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import domain.chap14.Customer;
import domain.chap14.Employee;

/**
 * Servlet implementation class Servlet30
 */
@WebServlet("/Servlet30")
public class Servlet30 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Servlet30() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    // 임플로이 정보 수정 프로그램 만들기
    // 아이디 요청을 겟방식으로 받아서 해당 임플로이 수정.
    //    > 업데이트 쿼리문으로 db 수정.
    
    //내용 : 
    //	id 겟요청으로 받아서 했는데, 이제 이거 말고 Servlet23을 실행해서 동작하게할것임.
    //	어쨌든  id 겟요청으로 받음
    // 받은 id로 db에서 고객 select
    //
    
    
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// get request param
		String idParam = request.getParameter("id");
		int id = Integer.parseInt(idParam); 
		// client에게 parameter요청을 get방식으로 받아서 필드에 저장. 
		
		
		// business logic
		String sql = "SELECT CustomerName, ContactName, Address, City, Country "
				+ "FROM Customers "
				+ "WHERE CustomerID = ? ";
		//수정할 정보를 셀렉하는 쿼리.
		//받은 id로 쿼리문 작성할건데 id는 '?'로. 
		// 쿼리문을 sql변수에 저장함.
		
		
		ServletContext application = request.getServletContext();

		String url = application.getAttribute("jdbc.url").toString();
		String user = application.getAttribute("jdbc.username").toString();
		String pw = application.getAttribute("jdbc.password").toString();

		try (
				Connection con = DriverManager.getConnection(url, user, pw);
				PreparedStatement pstmt = con.prepareStatement(sql);) {
			
   //이제 그 id로 임플로이 인스턴스를 만들것임.
			pstmt.setInt(1, id);// 쿼리문이 들어있는 준비된스테이트먼트에 등장하는 첫번째 '?'에 id를 저장.
			try (ResultSet rs = pstmt.executeQuery();) { //쿼리문 실행하고 결과셋필드에저장. 

				if (rs.next()) {//결과셋(rs)에 row가 있으면, 정보로 임플로이 한명 만듬.
					Customer c = new Customer();
					c.setName(rs.getString("CustomerName"));
					c.setContactName(rs.getString("ContactName"));
					c.setAddress(rs.getString("Address"));
					c.setCity(rs.getString("City"));
					c.setCountry(rs.getString("Country"));
					c.setId(id); //쿼리문 '?'에 저장했던 아이디를 임플로이 인스턴스에도 저장.

					request.setAttribute("customer", c);//client가 보내온 요청객체에 'employee'라는 이름의 attribute에 방금 만든 임플로이를 저장해줌.
				}
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		// forward
		//방금 수정한 request객체를 포워드? 
		String path = "/WEB-INF/view/chap14/view13.jsp";
		request.getRequestDispatcher(path).forward(request, response);//response는 그대로임?
	}
// 포워드로  view12에서 사용자가 입력한것을 또다시 가져와서(포워드라서 이미 여기에 가져와진거지?) 쿼리문으로 db수정.
// 
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// 1. request param 수집/가공
		// 포워드로 가져와진 정보를 필드에 저장.
		String name = request.getParameter("name");
		String contactName = request.getParameter("contactName");
		String address=request.getParameter("address");
		String city=request.getParameter("city");
		String country=request.getParameter("country");	
		String idParam = request.getParameter("id");
		int id = Integer.parseInt(idParam);

		// 3. business logic
		String sql = "UPDATE Customers "
				+ "SET CustomerName = ?, "
				+ "    ContactName = ?, "
				+ "    Address = ?, "
				+ "    City = ?, "
				+ "    Country = ? "
				+ "WHERE "
				+ "    CustomerID = ? ";
		
		// 포워드로 가져온 리퀘스트 파라미터 값이 저장된 필드를 쿼리에 넣어줄거임.
		ServletContext application = request.getServletContext();

		String url = application.getAttribute("jdbc.url").toString();
		String user = application.getAttribute("jdbc.username").toString();
		String pw = application.getAttribute("jdbc.password").toString();

		try (
				Connection con = DriverManager.getConnection(url, user, pw);
				PreparedStatement pstmt = con.prepareStatement(sql);) {

			pstmt.setString(1, name);
			pstmt.setString(2, contactName);
			pstmt.setString(3, address);
			pstmt.setString(4, city);
			pstmt.setString(5, country);
			pstmt.setInt(6, id);

			int cnt = pstmt.executeUpdate(); //쿼리실행하고 실행결과를 인트에담음.
			if (cnt == 1) {
				// 4. add attribute
				HttpSession session = request.getSession();
				//실행에 성공했으면 리퀘스트객체를 세션객체에 담음.(왜?)
				session.setAttribute("message", "고객 정보가 수정되었습니다.");
			}
			// 5. forward / redirect
			response.sendRedirect(request.getContextPath() + "/Servlet23");//-------
			// 수정된 리퀘스트를 Servlet23의 응답으로? 가져감?

		} catch (Exception e) {
			e.printStackTrace();
		}

	}

}
