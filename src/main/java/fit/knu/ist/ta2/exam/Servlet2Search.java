/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package fit.knu.ist.ta2.exam;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Ivan
 */
@WebServlet(name = "Servlet2Search", urlPatterns = {"/searching"})
public class Servlet2Search extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {
        String x = request.getParameter("value");
        double param = Double.parseDouble(x);
        double result = FormExam.SearchResult(param);
        request.setAttribute("index", result);
        request.getRequestDispatcher("exam.jsp").forward(request, response);
    }
}
