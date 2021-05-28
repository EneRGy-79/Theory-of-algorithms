<%-- 
    Document   : lab5
    Created on : 23.05.2021, 22:18:30
    Author     : Ivan
--%>

<%@page import="fit.knu.ist.ta2.lab5.Lab5_1"%>
<%@page import="fit.knu.ist.ta2.lab5.Lab5_1"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lab 5</title>
    </head>
    <body>
        <a href="index.jsp">Back to landing page</a>
        <%! Lab5_1 lab5_1 = new Lab5_1("Germany (German: Deutschland, pronounced,"
            + " officially the Federal Republic of Germany, is a country in Central"
            + " Europe. It is the second-most populous country in Europe after Russia,"
            + " and the most populous member state of the European Union. Germany"
            + " is situated between the Baltic and North seas to the north, and the"
            + " Alps to the south; covering an area of 357,022 square kilometres"
            + " (137,847 sq mi), with a population of over 83 million within its 16"
            + " constituent states. It borders Denmark to the north, Poland and the Czech"
            + " Republic to the east, Austria and Switzerland to the south, and France,"
            + " Luxembourg, Belgium, and the Netherlands to the west. The nation's capital"
            + " and largest city is Berlin, and its financial centre is Frankfurt; the"
            + " largest urban area is the Ruhr. Various Germanic tribes have inhabited"
            + " the northern parts of modern Germany since classical antiquity. A region"
            + " named Germania was documented before AD 100. In the 10th century, German"
            + " territories formed a central part of the Holy Roman Empire. During the 16th"
            + " century, northern German regions became the centre of the Protestant Reformation."
            + " Following the Napoleonic Wars and the dissolution of the Holy Roman Empire in 1806,"
            + " the German Confederation was formed in 1815. In 1871, Germany became a nation-state"
            + " when most of the German states unified into the Prussian-dominated German Empire. After"
            + " World War I and the German Revolution of 1918–1919, the Empire was replaced by the"
            + " semi-presidential Weimar Republic. The Nazi seizure of power in 1933 led to the establishment"
            + " of a dictatorship, World War II, and the Holocaust. After the end of World War II in Europe"
            + " and a period of Allied occupation, Germany was divided into the Federal Republic of Germany,"
            + " generally known as West Germany, and the German Democratic Republic, East Germany. The Federal"
            + " Republic of Germany was a founding member of the European Economic Community and the European"
            + " Union, while the German Democratic Republic was a communist Eastern Bloc state and member of"
            + " the Warsaw Pact. After the fall of communism, German reunification saw the former East German"
            + " states join the Federal Republic of Germany on 3 October 1990—becoming a federal parliamentary"
            + " republic led by a chancellor. Germany is a great power with a strong economy; it has the largest"
            + " economy in Europe, the world's fourth-largest economy by nominal GDP, and the"
            + " fifth-largest by PPP. As a global leader in several industrial, scientific and"
            + " technological sectors, it is both the world's third-largest exporter and importer "
            + "of goods. As a developed country, which ranks very high on the Human Development Index"
            + ", it offers social security and a universal health care system, environmental protections"
            + ", and a tuition-free university education. Germany is a member of the United Nations, NATO,"
            + " the G7, the G20, and the OECD. It has the fourth-greatest number of UNESCO World Heritage Sites.");%>
            <p><b>Text:</b> <%= lab5_1.GetText()%></p>
            <form action="./lab5" method="post" class="form-inline">
                <label for="find"><b>Enter word to search for: </b></label>
                <div class="input-group">
                    <input  class="form-control" id="find" type="text" name="find"/>
                    <input class="btn btn-success" type="submit" value="Submit"/>
                </div>
                <p class="mt-3 mb-0"><b>Word number: </b><%=request.getAttribute("result")%></p>
            </form>
            <p><b>Most popular words:</b> <%= lab5_1.GetMostPopularWords()%></p>
            <p><b>Most popular sequences (4):</b>
                <%= lab5_1.MostPopularSequences(4)%></p>
            <%! Lab5_2 lab5_2 = new Lab5_2(20); %>
            <% lab5_2.InitList(); %>
            <p><b>List: </b><br/> <%= lab5_2.DisplayList()%></p>
            <%! String find = "model #7"; %>
            <% lab5_2.SortByStringField();%>
            <p><b>Sorted by string field: </b><br/> <%= lab5_2.DisplayList()%></p>
            <p><b>Index of element with value </b><%= find %>: <%= lab5_2.jumpSearch(find)%></p>
            <% lab5_2.SortByIntField();%>
            <p><b>Sorted by int field: </b><br/> <%= lab5_2.DisplayList()%></p>
    </body>
</html>
