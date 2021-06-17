<%-- 
    Document   : exam
    Created on : 17.06.2021, 9:27:28
    Author     : Ivan
--%>

<%@page import="fit.knu.ist.ta2.exam.FormExam"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Скриль Іван, Білет №19</h1>
        <h1>Формула 7/(10x+3)</h1>
        <form action="./formula" method="post" class="form-inline">
            <label for="x"><b>Enter x:</b></label>
            <div class="input-group">
                <input  class="form-control" id="x" type="text" name="x"/>
                <input class="btn btn-success" type="submit" value="Submit"/>
            </div>
            <p class="mt-3 mb-0"><b>f(x):</b><%=request.getAttribute("result")%></p>
        </form>
        <%! FormExam fr = new FormExam(89); %>
        <p>Args: <%= fr.GetArgs()%> </p>
        <p>Results:<%= fr.Calculate() %></p>
        <form action="./searching" method="post" class="form-inline">
            <label for="x"><b>Enter number from list:</b></label>
            <div class="input-group">
                <input  class="form-control" id="value" type="text" name="value"/>
                <input class="btn btn-success" type="submit" value="Submit"/>
            </div>
            <p class="mt-3 mb-0"><b>Index of number:</b><%=request.getAttribute("index")%></p>
        </form>
        <form action="./sortMode" method="post" class="form-inline">
            <label for="x"><b>Enter sort mode (increase/decrease):</b></label>
            <div class="input-group">
                <input  class="form-control" id="mode" type="text" name="mode"/>
                <input class="btn btn-success" type="submit" value="Submit"/>
            </div>
            <p class="mt-3 mb-0"><b>Sorted results:</b><%=request.getAttribute("sortedResults")%></p>
        </form>
    </body>
</html>

