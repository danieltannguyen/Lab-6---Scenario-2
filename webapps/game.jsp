<%-- 
    Document   : search
    Created on : Dec 1, 2015, 3:31:29 PM
    Author     : hen
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <%@include file="header.jspf" %>
    </head>
    <body>
        <div class="container">
            <br />
            <h1><a class="brand" href="./"><img src="./images/logo.png" /> GoodGame!</a></h1>
            <hr />
            <%
                String gameName = request.getParameter("game");
                String publisherName = request.getParameter("publisher");
            
                for (VideoGame game : games) {
                    if (game.publishingParty.name.equals(publisherName)
                            && game.name.equals(gameName)
                    ) {
                        %>
                        <div class="row">
                            <div class="four columns">
                                <img width="100%" src="./images/covers/<%= game.cover %>" />
                            </div>
                            <div class="eight columns">
                                <h4><%= game.name %> ~ <strong>$10</strong></h4>
                                <p><strong>Publisher: </strong><a href="./search.jsp?searchInput=<%= game.publishingParty.name %>"><%= game.publishingParty.name %></a></p>
                                <p>Cool game with stuff.</p>
                            </div>
                        </div>
                        <hr />
                        <% 
                        break;
                    }
                }
            %>
            <a class="button" href="./">&LeftTriangle; Search for More</a>
        </div>
    </body>
</html>
