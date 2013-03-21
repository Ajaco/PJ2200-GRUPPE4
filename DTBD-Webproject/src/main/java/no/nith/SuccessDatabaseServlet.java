package no.nith;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class SuccessDatabaseServlet extends HttpServlet {

	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws IOException, ServletException {
		
		RequestDispatcher view = req.getRequestDispatcher("/WEB-INF/successdb.jsp");
		view.forward(req, resp);
	}
}