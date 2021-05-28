<%-- 
    Document   : lab6_7
    Created on : 28.05.2021, 8:57:42
    Author     : Ivan
--%>

<%@page import="fit.knu.ist.ta2.lab6_7.BinaryTreePrinter"%>
<%@page import="fit.knu.ist.ta2.lab6_7.BinaryTree"%>
<%@page import="fit.knu.ist.ta2.lab6_7.Lab6_7_1"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lab 6-7</title>
    </head>
    <body>
        <a href="index.jsp">Back to landing page</a>
        <%! Lab6_7_1 lab6_7_1 = new Lab6_7_1();%>
         <% lab6_7_1.InitArray(10); %>
        <p> Numbers: <%= lab6_7_1.DisplayArray()%></p>
        <p> Sum: <%= lab6_7_1.CountSum(0, 0)%></p>
        <%! BinaryTree tree = new BinaryTree();%>
        <%
            tree.add(3);
            tree.add(8);
            tree.add(9);
            tree.add(7);
            tree.add(5);
            tree.add(1);
            tree.add(14);
            tree.add(11);
        %>
        <pre>
        <p>Result:<br> <%= BinaryTreePrinter.printNode(tree.getRoot())%></p>
        </pre>
        <%tree.mirrorTree(tree.getRoot()); %>
        <pre>
        <p>Result:<br> <%= BinaryTreePrinter.printNode(tree.getRoot())%></p>
        </pre>
    </body>
</html>