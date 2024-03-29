package servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import DAO.PostDAO;

@SuppressWarnings("serial")
@WebServlet("/PostSaveServlet")
public class PostSaveServlet extends HttpServlet {
	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
	        throws ServletException, IOException {
		
	        String board = request.getParameter("board");
			String title = request.getParameter("title");
			String content = request.getParameter("content");
			int reg_no = Integer.parseInt(request.getParameter("reg_no"));
	        PostDAO poDao = PostDAO.getInstance();
	        try {
	        poDao.savePost(board, title, content, reg_no);
	        response.setStatus(HttpServletResponse.SC_OK);
	    } catch (Exception e) {
	        response.setStatus(HttpServletResponse.SC_INTERNAL_SERVER_ERROR);
	        e.printStackTrace();
	    }
	}
}

	

