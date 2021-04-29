<%-- 
    Document   : lab2
    Created on : 29.04.2021, 21:10:03
    Author     : Ivan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        
        <p><%=request.getAttribute("result")%></p>
        
        <div>
            <form action="lab2form.jsp">  
                <input type="submit" value="New x">
            </form> 
        </div>
        
        <div>
            <form action="index.jsp">  
                <input type="submit" value="Home">
            </form> 
        </div>
    </body>
</html>
