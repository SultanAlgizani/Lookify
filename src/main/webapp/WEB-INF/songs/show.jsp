<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

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
		<a class="float-right" href="/songs">Dashboard</a>
		<h3>Song Title</h3>
		<p>${ song.name }</p>
		<h3>Artist</h3>
		<p>${ song.artist }</p>
		<h3>Rating</h3>
		<p>${ song.rating }</p>
		<form action="/songs/${ song.id }" method="post">
			<input type="hidden" name="_method" value="delete" />
			<input class="btn btn-danger" type="submit" value="Delete" />
		</form>
	</div>
    
    
</body>
</html>