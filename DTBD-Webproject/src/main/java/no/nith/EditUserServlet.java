package no.nith;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class EditUserServlet extends HttpServlet {

	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		
		try{
		String group = req.getParameter("groupName");
		String email = req.getParameter("email");

		if(email != null && email.length() > 0){
			new UserDAO().editUser(group, email);
			resp.sendRedirect("/success");
		}else{
			new UserDAO().editUser();
		}

		
		RequestDispatcher view = req.getRequestDispatcher("/WEB-INF/edit.jsp");
		view.forward(req, resp);

		}catch(SQLException e){
			System.out.println(e.getMessage());
			e.printStackTrace();
			resp.sendRedirect("/ouch");
		}
	}
}