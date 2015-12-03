
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
            <hr />
            <%
                String shoeName = request.getParameter("shoe");
                String publisherName = request.getParameter("publisher");
            
                for (Shoes shoe : shoes) {
                    if (shoe.publishingParty.name.equals(publisherName)
                            && shoe.name.equals(shoeName)
                    ) {
                        %>
                        <div class="row">
                            
                            <div class="eight columns">
                                <h4><%= shoe.name %> ~ <strong>$10</strong></h4>
                                <p><strong>Publisher: </strong><a href="./search.jsp?searchInput=<%= shoe.publishingParty.name %>"><%= shoe.publishingParty.name %></a></p>
                                <p>Cool shoe with stuff.</p>
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
