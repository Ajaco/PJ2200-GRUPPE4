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
		
		String[] fullName = req.getParameterValues("fullName");
		String[] dateOfBirth = req.getParameterValues("dateOfBirth");
		String[] sex = req.getParameterValues("sex");
		String[] email = req.getParameterValues("email");
		String[] phoneNumber = req.getParameterValues("phoneNumber");
		String[] occupation = req.getParameterValues("occupation");

		for(int i = 0; i < fullName.length; i++){
			new UserDAO().insertUser(fullName[i], dateOfBirth[i], sex[i], email[i], phoneNumber[i], occupation[i]);	
		}
		
		RequestDispatcher view = req.getRequestDispatcher("/WEB-INF/mingle.jsp");
		view.forward(req, resp);
	}
}
