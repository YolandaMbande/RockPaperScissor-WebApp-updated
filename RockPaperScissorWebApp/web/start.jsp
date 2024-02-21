<%-- 
    Document   : start
    Created on : 20 Feb 2024, 9:26:10 AM
    Author     : Student
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Start Game Page</title>
    </head>
    <body>
        <h1>Start game</h1>
        <%
            String player_name = pageContext.getServletContext().getInitParameter("player_name");
            String computer_name = pageContext.getServletContext().getInitParameter("computer_name");
        %>
        <p>
            Hi <b><%=player_name%></b>. My name is <b><%=computer_name%></b>. Let's play the game.
        </p>
        <form action="RockPaperScissorServlet.do" method="POST">
            <table>
                <tr>
                    <td>Make your choice:</td>
                    <td>
                        <select name="choice" required="">
                            <option value="R">Rock</option>
                            <option value="P">Paper</option>
                            <option value="S">Scissor</option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td><input type="submit" value="PLAY" /></td>
                </tr>
            </table>
        </form>
    </body>
</html>
