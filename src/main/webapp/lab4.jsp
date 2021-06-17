<%-- 
    Document   : lab4
    Created on : 20.05.2021, 23:43:33
    Author     : Ivan
--%>

<%@page import="fit.knu.ist.ta2.lab4.TextProcessor"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lab 4</title>
       <form action="index.jsp">          
          <input type="submit" value="Home">
       </form> 
    </head>
    <style>
        body{
            font-family: Helvetica;
            background-color: #f8f9fa
        }
        h1{
            color: green;
        }
        #laba{
            border: 2px green solid;
            padding: 25px
        }
        input{
            max-width: 150px;
        }
    </style>
    <body>
        <div class="container">
            <h1 class="text-center">Lab 4</h1>
            <div class="mt-5" id="laba">
                <%! TextProcessor textProcessor = new TextProcessor("As she grew"
                    + " increasingly distant from family members trapped in Gaza"
                    + " , Leila retained her identity by tapping into the rich history of her family:"
                    + " of ancestors from seven centuries ago;"
                    + " of her grandparents' expulsion during the 1948-49 Middle East war"
                    + " following Israel's creation; and of her father's role as a student leader"
                    + " in the first Palestinian uprising, or intifada, from 1987-1993."
                    + " In college, however, her Palestinian American pride hit a roadblock."
                    + " Leila claims she was singled out for her family ties, harassed when she spoke "
                    + " out and even spat on during an on-campus protest. In her senior year, she says"
                    + " the school put her dorm under surveillance for a week after a conservative "
                    + " student publicly vilified her as an anti-Semite"
                    + " But the continued attacks on Palestinians lives and homes in recent years have "
                    + " prompted many progressive Americans - such as Democratic presidential"
                    + " hopeful Bernie Sanders, young anti-Zionist liberals and organisations like the "
                    + " left-wing Jewish Voice for Peace - to speak out against what they see as"
                    + " injustices, particularly through social media."
                    + " The support of that demographic has really opened the door for people like "
                    + " myself to be able to speak our truths without facing as much vitriol,says Leila. "
                    + " It feels a lot less scary. "
                    + " Accompanying the cresting wave of progressive energy, she says, is that "
                    + " Palestinians on the ground have phones and social media, and can"
                    + " take control of the narrative in order to more accurately portray their plight to the rest of the world. "
                    + " Much like with the Black Lives Matter movement, where it was a lot more  "
                    + " horrifying to witness George Floyd dying than to read about it, being able to. "
                    + " witness the atrocities means that it runs counter to the mainstream narratives"
                    + "that we're seeing on TV, she explains.");%>
                <p><b>Text:</b> <%= textProcessor.GetText()%></p>
                <p><b>Text:</b> <%= textProcessor.GetClearedText()%></p>
                <p><b>Number of words:</b> <%= textProcessor.GetWordsNumber()%></p>
                <p><b>Number of unique words:</b> <%= textProcessor.GetUniqueWordsNumber()%></p>
                <p><b>Most popular words (3):</b> <%= textProcessor.GetFirstNMostPopularWords(3)%></p>
                <p><b>Number of words that do not contain letter (u):</b>
                    <%= textProcessor.GetNumberOfWordsThatNotContain('u')%></p>
                <p><b>Number of words that contain 2 similar letters (2):</b>
                    <%= textProcessor.GetNumberOfWordsThatContainSimilarLetters(2)%></p>
                <p><b>Most popular sequences (3):</b>
                    <%= textProcessor.MostPopularSequences(3, 3)%></p>
            </div>
        </div>
    </body>
</html>