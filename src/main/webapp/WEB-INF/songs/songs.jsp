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
		<nav>
			<h3><a href="/songs/new">Add New</a> | <a href="/songs/topTen">Top Ten</a></h3>
			<form action="/songs/search" class="float-right">
				<input type="text" name="artist"/>
				<button class="btn btn-primary">Search Artists</button>
			</form>
		</nav>
		<table class="table table-hover">
			<thead>
				<tr>
					<th>Title</th>
					<th>Artist</th>
					<th>Rating</th>
					<th>Action</th>
				</tr>
			</thead>
			<tbody>
			<c:forEach items="${ songs }" var="song">
				<tr>
					<td><a href="/songs/${ song.id }">${ song.name }</a></td>
					<td>${ song.artist }</td>
					<td>${ song.rating }</td>
					<td>
						<!-- <a class="btn btn-danger" href="/delete/${ song.id }">Delete</a> -->
						<form action="/songs/${ song.id }" method="post">
							<input type="hidden" name="_method" value="delete" />
							<input class="btn btn-danger" type="submit" value="Delete" />
						</form>
				
					</td>
				</tr>
			</c:forEach>
			</tbody>
		</table>
	</div>
    
    
</body>
</html>