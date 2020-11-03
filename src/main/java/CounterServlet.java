import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "CounterServlet", urlPatterns = "/count")
public class CounterServlet extends HttpServlet {
        private int count = 0;

    protected void doGet(HttpServletRequest req, HttpServletResponse res) throws IOException {
        count += 1;
        res.setContentType("text/html");
        PrintWriter out = res.getWriter();
        out.println("<h2>Page View count: " + count + "</h2>");
    }

//    BONUS
    protected void doPost(HttpServletRequest req, HttpServletResponse res) throws IOException {
        res.setContentType("text/html");
        PrintWriter out = res.getWriter();

        int countReset = Integer.parseInt(req.getParameter("countReset"));
        out.println("<h2>Page View count: " + countReset + "</h2>");
    }
}
