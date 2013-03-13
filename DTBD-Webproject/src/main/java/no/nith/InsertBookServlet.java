package no.nith;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class InsertBookServlet extends HttpServlet {
	
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String title = req.getParameter("title");
		String author = req.getParameter("author");
		
		new BookDAO().insertBook(title, author);
		
		List<Book> books = new BookDAO().getBooks();
		
		req.setAttribute("books", books);
		
		RequestDispatcher view = req.getRequestDispatcher("/WEB-INF/insertbooks.jsp");
		view.forward(req, resp);
	}
}
