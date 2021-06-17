<%-- 
    Document   : lab1
    Created on : 22 апр. 2021 г., 20:31:55
    Author     : Ivan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="fit.knu.ist.ta2.FirstJava"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Laba1</title>
    </head>
    <body>
        <h3>Laba1</h3>
        <br>

        <%! FirstJava FirstClas = new FirstJava();
            FirstJava SecondClas = new FirstJava(10);%>



        <% FirstClas.SetExample(3);
            int prois = FirstClas.GetExample() * SecondClas.GetExample();%>

        <p><%= "1) Get : " + FirstClas.GetExample() + '\n'%></p>

        <p><%= FirstClas.toString() + '\n'%></p>

        <p><%= "2) Get : " + SecondClas.GetExample() + '\n'%></p>

        <p><%= SecondClas.toString() + '\n'%></p>



        <p><%= "prois = " + prois + '\n'%></p>

        <p></p>
        <p></p>
        <div>
            <form action="index.jsp">          

                <input type="submit" value="Home">
            </form> 
        </div>
    </body>
</html>