package servlet.chap17;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebInitParam;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Servlet08
 */
@WebServlet(value = "/Servlet08",
initParams = {
		@WebInitParam(name="userName", value="panther"),
		@WebInitParam(name="pw", value="1q2w3e")
})
public class Servlet08 extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private String name;
    private String pw;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Servlet08() {
        super();
        // TODO Auto-generated constructor stub
    }
    @Override
    public void init() throws ServletException{
    	System.out.println("init().. > 서블릿08 처음 실행시 실행되고 다시 실행되지 않음.");
    	this.name=getInitParameter("userName");
    	this.pw=getInitParameter("pw");
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		System.out.println("요청시마다 실행..");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
