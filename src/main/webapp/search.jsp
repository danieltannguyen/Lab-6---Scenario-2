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
            <h1><a class="brand" href="./"><img src="./images/logo.jpg" /> Shoe Sale!</a></h1>
            <h4>Search Results for <%= request.getParameter("searchInput") %></h4>
            <hr />
            <%
                String searchInput = request.getParameter("searchInput");
            
                for (ShoeSale shoe : shoes) {
                    if (shoe.publishingParty.name.toLowerCase().contains(searchInput.toLowerCase())
                            || shoe.name.toLowerCase().contains(searchInput.toLowerCase())
                    ) {
                        %>
                        
                        <div class="row">
                            <div class="three columns">
                                <img width="100%" src="./images/covers/<%= shoe.cover %>" />
                            </div>
                            <div class="nine columns">
                                <h5><%= shoe.name %> ~ <strong>$59.99</strong></h5>
                                <a class="button" href="./shoe.jsp?shoe=<%= shoe.name %>&publisher=<%= shoe.publishingParty.name %>">View</a>
                            </div>
                        </div>
                        
                        <hr />
                        <% 
                    }
                }
            %>
            <a class="button" href="./">Back</a>
            <p></p>
        </div>
    </body>
</html>
