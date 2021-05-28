<%-- 
    Document   : lab8
    Created on : 28.05.2021, 8:58:34
    Author     : Ivan
--%>

<%@page import="fit.knu.ist.ta2.lab8.AlgorithmDetails"%>
<%@page import="fit.knu.ist.ta2.lab8.Algorithms"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <a href="index.jsp">Back to landing page</a>
        <h2 class="text-left"><b>Постановка задачі:</b> відсортувати масив цілих чисел</h2>
        <p><b>Вихідні дані:</b><br>Кількість елементів: 20000</p>
        <%! Algorithms algorithms = new Algorithms(20000);%>
        <hr>
        <% AlgorithmDetails bubbleSortDetails = algorithms.bubbleSort(); %>
        <p><b>Назва алгоритму: </b>Bubble Sort</p>
        <p><b>Час роботи:</b>  <%= bubbleSortDetails.getTime() %>ms</p>
        <p><b>Кількість порівнянь </b><%= bubbleSortDetails.getComparisons() %></p>
        <p><b>Кількість перестановок </b><%= bubbleSortDetails.getSubstitutions() %></p>
        <p><b>Складність(Big-O): O^2</b></p>
        <hr>
        <% AlgorithmDetails quickSortDetails = algorithms.QuickSort(); %>
        <p><b>Назва алгоритму: </b>Quick Sort</p>
        <p><b>Час роботи:</b>  <%= quickSortDetails.getTime() %>ms</p>
        <p><b>Кількість порівнянь </b><%= quickSortDetails.getComparisons() %></p>
        <p><b>Кількість перестановок </b><%= quickSortDetails.getSubstitutions() %></p>
        <p><b>Складність(Big-O): O^2</b></p>
        <hr>
        <% AlgorithmDetails mergeSortDetails = algorithms.MergeSort(); %>
        <p><b>Назва алгоритму: </b>Merge Sort</p>
        <p><b>Час роботи:</b>  <%= mergeSortDetails.getTime() %>ms</p>
        <p><b>Кількість порівнянь </b><%= mergeSortDetails.getComparisons() %></p>
        <p><b>Кількість перестановок </b><%= mergeSortDetails.getSubstitutions() %></p>
        <p><b>Складність(Big-O): nlog(n)</b></p>
    </body>
</html>
