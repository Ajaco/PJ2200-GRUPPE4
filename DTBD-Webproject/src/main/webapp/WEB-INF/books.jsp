<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
<head>
<link type="text/css" rel="stylesheet" href="css/bootstrap.min.css">
</head>

<body>

	<div class="container"></div>
	<div class="page-header">
		<h1>Books</h1>
	</div>

	<!-- Søkeskjema -->
	<form class="form-search">
	<input type="text" name="q" class="input-medium search-query"
			value="<c:out value="${param.q}" />">
		<button type="submit" class="btn">Søk</button>
	</form>

	<!-- Resultater -->
	<table class="table">
		<thead>
			<tr>
				<th>Title</th>
				<th>Author</th>
			</tr>
		</thead>
		<c:forEach var="book" items="${books}">
			<tr>
				<td><c:out value="${book.title}" /></td>
				<td><c:out value="${book.author}" /></td>
			</tr>
		</c:forEach>
	</table>

</body>
</html>
