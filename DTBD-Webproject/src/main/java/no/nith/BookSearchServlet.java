package no.nith;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class BookSearchServlet extends HttpServlet {

	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws IOException, ServletException {

		String query = req.getParameter("q");
		
		List<Book> books;
		
		if (query != null && query.length() > 0) {
			books = new BookDAO().getBooks(query);
		} else {
			books = new BookDAO().getBooks(); // just fetch everything
		}
		
		// Gir JSP-siden tilgang til lista over bøker
		req.setAttribute("books", books);
		
		// Serverer JSP-siden responsen vi har klargjort
		RequestDispatcher view = req.getRequestDispatcher("/WEB-INF/books.jsp");
		view.forward(req, resp);
	}
}
