<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

            <!DOCTYPE html>
            <html>

            <head>
                <meta charset="UTF-8">
                <title>Lookify App</title>
                <link rel="stylesheet" href="/webjars/bootstrap/4.5.0/css/bootstrap.min.css" />
                <script src="/webjars/jquery/3.5.1/jquery.min.js"></script>
                <script src="/webjars/bootstrap/4.5.0/js/bootstrap.min.js"></script>
                <link rel="stylesheet" href="css/main.css" />
            </head>

            <body>


                <div class="container mt-5">
                    <h2>Add a new Song</h2>
                    <hr />
                    <form:form action="/songs" method="POST" modelAttribute="song">
                        <div class="form-group">
                            <form:label path="name">Song Title</form:label>
                            <form:errors path="name" />
                            <form:input class="form-control" path="name" />
                        </div>
                        <div class="form-group">
                            <form:label path="artist">Artist</form:label>
                            <form:errors path="artist" />
                            <form:input class="form-control" path="artist" />
                        </div>
                        <div class="form-group">
                            <form:label path="rating">Rating</form:label>
                            <form:errors path="rating" />
                            <form:input type="number" class="form-control" path="rating" />
                        </div>
                        <button>Add Song</button>
                    </form:form>
                </div>



            </body>

            </html>