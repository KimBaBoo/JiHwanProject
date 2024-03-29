package servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.ReplyDAO;

@SuppressWarnings("serial")
@WebServlet("/ReplySaveServlet")
public class ReplySaveServlet extends HttpServlet {
	static String dbid = "projectDB";
	static String dbpw = "pass1234";
	static String driver = "oracle.jdbc.driver.OracleDriver";
	static String url = "jdbc:oracle:thin:@localhost:1521:xe";

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String uploadText = request.getParameter("writeReply");
		int reg_no = Integer.parseInt(request.getParameter("reg_no"));
		int showPostNo = Integer.parseInt(request.getParameter("showPostNo"));
		ReplyDAO reDao = ReplyDAO.getInstance();
		try {
			reDao.saveReply(uploadText, showPostNo, reg_no);
			response.setStatus(HttpServletResponse.SC_OK);
		} catch (Exception e) {
			response.setStatus(HttpServletResponse.SC_INTERNAL_SERVER_ERROR);
			e.printStackTrace();
		}
	}


}
