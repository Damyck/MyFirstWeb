package proyecto;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

/**
 * Created by Marc on 19/10/2016.
 */
@WebServlet("/tablafibonacci")
public class fibonacci extends HttpServlet{

    protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {


        int numFib = Integer.parseInt(req.getParameter("numFib"));
        PrintWriter out = res.getWriter();
        out.println("<html><header><style>\n" +
                "table {\n" +
                "    font-family: arial, sans-serif;\n" +
                "    border-collapse: collapse;\n" +
                "    width: 100%;\n" +
                "}\n" +
                "\n" +
                "td, th {\n" +
                "    border: 1px solid #dddddd;\n" +
                "    text-align: left;\n" +
                "    padding: 8px;\n" +
                "}\n" +
                "\n" +
                "tr:nth-child(even) {\n" +
                "    background-color: #dddddd;\n" +
                "}\n" +
                "</style>\n" +
                "</head>\n" +
                "<body>\n" +
                "\n" +
                "<table>\n" +
                "  <tr>\n" +
                "    <th>Number</th>\n" +
                "    <th>Fibonacci Value</th>\n" +

                "  </tr>\n" +
                "<tr>\n" +
                "<td>1</td>\n" +
                "<td>1</td>\n" +
                "</tr>\n" +
                "<tr>\n" +
                "<td>2</td>\n" +
                "<td>1</td>\n" +
                "</tr>\n");
        int fibo1 = 1, fibo2 = 1, fibonacci = 1;
        for (int i = 3; i <= numFib; i++) {
            fibonacci = fibo1 + fibo2; // Fibonacci number is sum of previous two Fibonacci number
            fibo1 = fibo2;
            fibo2 = fibonacci;
            out.println("<tr>\n" +
                    "<td>"+i+"</td>\n" +
                    "<td>"+fibonacci+"</td>\n" +
                    "</tr>\n");
       }
        out.println("</table></body></html>");
       }
}
