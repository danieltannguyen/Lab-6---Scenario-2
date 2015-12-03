<%-- 
    Document   : test
    Created on : Nov 30, 2015, 3:55:08 PM
    Author     : hen
--%>

<%@page import="java.util.Random"%>
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
            <p>Online Game Shopping Database.</p>
            <form action="./search.jsp" method="POST">
                <label for="searchInput">Search</label>
                <input class="u-full-width" type="text" placeholder="Fallout 4, The Sims 3 ..." name="searchInput" id="searchInput">
                <input class="button-primary" type="submit" value="Go!">
            </form>
            <hr />
            <h4>Random Games</h4>
            <div class="row">
                <%
                    Random random = new Random();
                    ArrayList<Integer> randomGames = new ArrayList<Integer>();
                    for (int i = 0; i < 4; i++) {
                        while (true) {
                            int rand = random.nextInt(games.size());
                            if (randomGames.contains(rand)) continue;
                            randomGames.add(rand);
                            break;
                        }
                        VideoGame game = games.get(randomGames.get(i));
                        %>
                        <div class="three columns">
                            <img height="100px" src="./images/covers/<%= game.cover %>" />
                            <h6><%= game.name %></h6>
                            <a class="button" href="./game.jsp?game=<%= game.name %>&publisher=<%= game.publishingParty.name %>">View</a>
                        </div>
                        <%
                    }
                %>
            </div>
            <p></p>
            <p>Carefully crafted by Daniel Nguyen, Henry Tran, Johnny Nguyen, Matt Nowzari </p>
            <p></p>
        </div>
    </body>
</html>
