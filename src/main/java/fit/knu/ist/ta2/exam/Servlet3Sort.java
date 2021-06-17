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
@WebServlet(name = "Servlet3Sort", urlPatterns = {"/sortMode"})
public class Servlet3Sort extends HttpServlet {

   @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {
        String mode = request.getParameter("mode");
        if(mode.equals("increase") || mode.equals("decrease")){
            String sortedResults = FormExam.Sort(mode.equals("increase"));
            request.setAttribute("sortedResults", sortedResults);
        }
        else
            request.setAttribute("sortedResults", "Enter other sort mode");
        request.getRequestDispatcher("exam.jsp").forward(request, response);
    }
}
