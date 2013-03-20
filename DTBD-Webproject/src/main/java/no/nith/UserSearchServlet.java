package no.nith;

import java.io.IOException;
import java.util.List;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class UserSearchServlet extends HttpServlet {

	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws IOException, ServletException {
		String culomn = req.getParameter("c");
		String value = req.getParameter("v");
		
		List<User> user;
		try{
			/*if (query != null && query.length() > 0) {
				user = new UserDAO().getUser(query);
			} else {
				user = new UserDAO().getUser(); // just fetch everything
			}*/
			
			user = new UserDAO().getUser(culomn, value);
			System.out.println("asdasdasd" + user.size());
			// Gir JSP-siden tilgang til lista over brukere
			req.setAttribute("user", user);
			
			// Serverer JSP-siden responsen vi har klargjort
			RequestDispatcher view = req.getRequestDispatcher("/WEB-INF/users.jsp");
			view.forward(req, resp);
		}catch(SQLException e){
			e.printStackTrace();
		}
	}
}
