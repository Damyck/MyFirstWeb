package proyecto;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

/**
 * Created by Marc on 20/10/2016.
 */
@WebServlet("/calculo")
public class calculadora extends HttpServlet {
    protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {

    }

    protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {

        int primNum = Integer.parseInt(req.getParameter("primNum"));
        int segNum = Integer.parseInt(req.getParameter("segNum"));
        String operator = req.getParameter("operacion");
        String symbol = null;
        float result = 0;
        if (operator.equals("suma")){
            symbol = "+";
            result = primNum + segNum;
        }
        if (operator.equals("resta")){
            symbol = "-";
            result = primNum - segNum;
        }
        if (operator.equals("multiplicacion")){
            symbol = "x";
            result = primNum * segNum;
        }
        if (operator.equals("division")){
            symbol = "/";
            result = primNum / segNum;
        }


        req.setAttribute("result", result);
        req.setAttribute("primNum", primNum);
        req.setAttribute("segNum", segNum);
        req.setAttribute("symbol", symbol);
        req.getRequestDispatcher("/calculo.jsp").forward(req, res);


    }
}
