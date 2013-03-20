package no.nith;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.SQLException;

public class InsertUserServlet extends HttpServlet {
	
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		
		String[] fullName = req.getParameterValues("fullName");
		String[] dateOfBirth = req.getParameterValues("dateOfBirth");
		String[] sex = req.getParameterValues("sex");
		String[] email = req.getParameterValues("email");
		String[] phoneNumber = req.getParameterValues("phoneNumber");
		String[] occupation = req.getParameterValues("occupation");
		String groupName = req.getParameter("groupName");
		
		try{
			for(int i = 0; i < fullName.length; i++){
				if(fullName[i] != null && !fullName[i].isEmpty() )
					new UserDAO().insertUser(fullName[i], dateOfBirth[i], sex[i], email[i], phoneNumber[i], occupation[i], groupName);	
			}
			resp.sendRedirect("/hello");
		}catch(SQLException e){
			System.out.println(e.getMessage());
			resp.sendRedirect("/asdlkjsadlkj");
		}
	}
}
