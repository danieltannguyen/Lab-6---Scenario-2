
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
            <h1><a class="brand" href="./"><img src="./images/logo.png" /> Shoes in Flash Sale!</a></h1>
            <p>Online Shoe Shopping Database.</p>
            <form action="./search.jsp" method="POST">
                <label for="searchInput">Search</label>
                <input class="u-full-width" type="text" placeholder="Fallout 4, The Sims 3 ..." name="searchInput" id="searchInput">
                <input class="button-primary" type="submit" value="Go!">
            </form>
            <hr />
            <h4>Random Shoes</h4>
            <div class="row">
                <%
                    Random random = new Random();
                    ArrayList<Integer> randomShoes = new ArrayList<Integer>();
                    for (int i = 0; i < 4; i++) {
                        while (true) {
                            int rand = random.nextInt(shoes.size());
                            if (randomShoes.contains(rand)) continue;
                            randomShoes.add(rand);
                            break;
                        }
                        Shoes shoe = shoes.get(randomShoes.get(i));
                        %>
                        <div class="three columns">
                            <img height="100px" src="./images/covers/<%= shoe.cover %>" />
                            <h6><%= shoe.name %></h6>
                            <a class="button" href="./shoe.jsp?shoe=<%= shoe.name %>&publisher=<%= shoe.publishingParty.name %>">View</a>
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
