package no.nith;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class RegisterServlet extends HttpServlet {

	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws IOException, ServletException {
		String groupName = req.getParameter("groupName");
		
		try{
			List<User> users = new UserDAO().getUser(groupName);
			if(users.size() == 4){
				String subject = groupName + " is now registered for the Dare to be Digital tournament.";
				String message = "Hi!\n\nThe following group is registered for the tournament:\n" + groupName + "\n";
				for(int i = 0; i <users.size(); i++){
				message = message + users.get(i).getName() + " // " + users.get(i).getEmail() +"\n";
				}
				message = message + "\n\nBest regards, Dare to be Digital NORDIC\n";
				
				for(int i = 0; i<users.size(); i++){
				SendMail.send(subject, message, users.get(i).getEmail());	
				}
				SendMail.send(subject, message, "ajaco92@gmail.com");
				resp.sendRedirect("/success");
			}else{
				resp.sendRedirect("/regerror");
			}			
		}catch(Exception e){
			System.out.println(e.getMessage());
			resp.sendRedirect("/ouch");
		}
	}
}