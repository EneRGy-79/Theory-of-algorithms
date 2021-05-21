<%-- 
    Document   : lab3
    Created on : 15.05.2021, 22:03:27
    Author     : Ivan
--%>

    <%@page contentType="text/html" pageEncoding="UTF-8" import="fit.knu.ist.ta2.lab3.Lab3"%>
    <!DOCTYPE html>
    <html>
        <head>
            <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
            <title>JSP Page</title>
        </head>
        <body>
            <h1>Результат</h1>
            <p><%= request.getAttribute("result") %></p>
                <div>
                    <form action="lab3form.jsp">
                        <input type="submit" value="Назад(ввести ще раз k)">
                    </form>
                </div>
        <div>
            <form action="index.jsp">          

                <input type="submit" value="Home">
            </form> 
        </div>
        </body>
    </html>