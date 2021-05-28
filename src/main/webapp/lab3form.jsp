<%-- 
    Document   : lab3view
    Created on : 20.05.2021, 21:58:17
    Author     : Ivan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Form</title>
    </head>
    <body>
        <h4 class="fig">Завдання №8</h4>
        <h4 class="fig">Заповнити масив 50 натуральних випадкових чисел в діапазоні від 1 до k включно. Обчислити суму елементів масиву, індекси яких є числами Фібоначчі.</h4>
        <h2 class="fig">Введiть k</h2>
        <div>
            <form action="./lab3" method="post">
                <input type="text" name="k" placeholder="###"/>
                <input type="submit" value="ввести"/>
            </form>
        </div>
        <div>
            <form action="index.jsp">          

                <input type="submit" value="Home">
            </form> 
        </div>
    </body>
</html>
