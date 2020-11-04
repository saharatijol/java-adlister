import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "HelloServlet", urlPatterns = "/hello")
public class HelloServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        String name = request.getParameter("name");

        if (name == null) {
            name = "World!";
        } else if (name.equals("bgates")) {
//            response.sendRedirect("https://microsoft.com");
//            return;
            name = "Bill Gates";
        } else if (name.equals("elonm")) {
//            response.sendRedirect("https://tesla.com");
//            return;
            name = "Elon Musk";
        } else if (name.equals("jbezos")) {
//            response.sendRedirect("https://amazon.com");
//            return;
            name = "Jeff Bezos";
        }
        request.setAttribute("name", name);
        request.getRequestDispatcher("/hello.jsp").forward(request, response);
    }
}
