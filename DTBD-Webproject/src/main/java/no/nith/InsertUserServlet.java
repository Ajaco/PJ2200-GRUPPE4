package no.nith;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class InsertUserServlet extends HttpServlet {
	
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		
		String fullName = req.getParameter("fullName");
		String dateOfBirth = req.getParameter("dateOfBirth");
		String sex = req.getParameter("sex");
		String email = req.getParameter("email");
		String phoneNumber = req.getParameter("phoneNumber");
		String occupation = req.getParameter("occupation");
		
		
		new UserDAO().insertUser(fullName, dateOfBirth, sex, email, phoneNumber, occupation);
		
		List<User> user = new UserDAO().getUser();
		
		req.setAttribute("user", user);
		
		RequestDispatcher view = req.getRequestDispatcher("/WEB-INF/insertusers.jsp");
		view.forward(req, resp);
	}
}
