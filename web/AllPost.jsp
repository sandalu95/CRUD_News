<%-- 
    Document   : AllPost
    Created on : Jul 15, 2018, 3:15:01 PM
    Author     : Sandalu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>All Posts</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css" integrity="sha384-9gVQ4dYFwwWSjIDZnLEWnxCjeSWFphJiwGPXr1jddIhOegiu1FwO5qRGvFXOdJZ4" crossorigin="anonymous">
    </head>
    <body style="background-image: url(news.jpg);">
        
<!--        View of all the news items in brief-->
        <div class="container" style="margin-top: 80px;">
            <h1 style="color: #fff;">News Items List</h1>
            <div class="jumbotron" style="padding-left: 40px; margin-bottom: 30px; opacity: 0.95;">
                 <div style="width: 1200px; margin-left: auto; margin-right: auto;">
                <table cellpadding="15" style="border:2px solid black;">
                    <tr style="border:1px solid black;">
                        <th style="border:2px solid black;">Id</th>
                        <th style="border:2px solid black;">Title</th>
                        <th style="border:2px solid black;">Description</th>
                        <th style="border:2px solid black;">Detail</th>
                        <th style="border:2px solid black;">Category</th>
                        <th style="border:2px solid black;">Date</th>
                        <th style="border:2px solid black;">Image</th>

                    </tr>
                    <c:forEach items="${AllPost}" var="p">
                        <tr style="border:1px solid black;">
                            <td style="border:2px solid black;">${p.id}</td>
                            <td style="border:2px solid black;">${p.title.substring(0,20)}...</td>
                            <td style="border:2px solid black;">${p.description.substring(0,20)}...</td>
                            <td style="border:2px solid black;">${p.detail.substring(0,20)}...</td>
                            <td style="border:2px solid black;">${p.category}</td>
                            <td style="border:2px solid black;">${p.date.substring(0,10)}...</td>
                            <td style="border:2px solid black;">${p.image.substring(0,20)}...</td>
                        </tr>
                    </c:forEach>
                        

                </table>
        </div>
            </div>
               
        </div>
        
    </body>
</html>

