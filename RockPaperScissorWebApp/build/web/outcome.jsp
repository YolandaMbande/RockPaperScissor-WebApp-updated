<%-- 
    Document   : outcome
    Created on : 20 Feb 2024, 9:40:00 AM
    Author     : Student
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Outcome Page</title>
    </head>
    <body>
        <h1>Rock Paper Scissor Results: Siri vs User</h1>
               <%
                    String result = (String)request.getAttribute("result");

                    if ("win".equals(result)) {
                %>
                        <p>Congrats, you won the round!</p>
                <%
                    } else if ("lose".equals(result)) {
                %>
                        <p>Sorry, you lost.</p>
                <%
                    } else {
                %>
                        <p>It's a draw!!</p>
                <%
                    }
                %>

        <p>
            Please click <a href="index.html">here</a> to go back to the main page.
        </p>
    </body>
</html>
