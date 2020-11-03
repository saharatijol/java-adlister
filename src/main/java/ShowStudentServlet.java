import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "ShowStudentServlet", urlPatterns = "/users")
public class ShowStudentServlet extends HttpServlet {
    protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        res.setContentType("text/html");
        PrintWriter out = res.getWriter();

        String name = req.getParameter("name");
        out.println("<h3>Hello " + name + "</h3>");

        int grade = Integer.parseInt(req.getParameter("grade"));
        out.println("<span>Grade: " + grade + ".00</span>");
    }

    protected void doPost(HttpServletRequest req, HttpServletResponse res) throws IOException {
        res.setContentType("text/html");
        PrintWriter out = res.getWriter();

        String name = req.getParameter("name");
        out.println("<h3>Hello " + name + "</h3>");

        int grade = Integer.parseInt(req.getParameter("grade"));
        out.println("<span>Grade: " + grade + ".00</span>");
    }
}
