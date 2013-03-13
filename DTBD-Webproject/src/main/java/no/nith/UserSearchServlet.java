package no.nith;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class UserSearchServlet extends HttpServlet {

	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws IOException, ServletException {

		String query = req.getParameter("q");
		
		List<User> user;
		
		if (query != null && query.length() > 0) {
			user = new UserDAO().getUser(query);
		} else {
			user = new UserDAO().getUser(); // just fetch everything
		}
		
		// Gir JSP-siden tilgang til lista over bøker
		req.setAttribute("user", user);
		
		// Serverer JSP-siden responsen vi har klargjort
		RequestDispatcher view = req.getRequestDispatcher("/WEB-INF/users.jsp");
		view.forward(req, resp);
	}
}
