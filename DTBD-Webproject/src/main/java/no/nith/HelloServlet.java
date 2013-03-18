package no.nith;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class HelloServlet extends HttpServlet {

	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws IOException, ServletException {
		
		// Serverer JSP-siden responsen vi har klargjort
		RequestDispatcher view = req.getRequestDispatcher("/WEB-INF/frontpage.jsp");
		view.forward(req, resp);
	}
}