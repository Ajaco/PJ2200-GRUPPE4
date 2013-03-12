package no.nith;

import javax.servlet.*;
import javax.servlet.http.*;
import java.io.IOException;
import java.io.PrintWriter;

public class MyServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws IOException, ServletException
    {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        out.println("<html>");
        out.println("<head>");
        out.println("<title>Hello World - Kjetil!</title>");
        out.println("</head>");
        out.println("<body>");
        out.println("<h1>Hello World - Kjetil!</h1>");
        out.println("</body>");
        out.println("</html>");
    }
}