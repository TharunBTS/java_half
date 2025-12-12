<%@ page
	import="java.util.*, com.example.QuizProject.dao.ResultDAO, com.example.QuizProject.model.Result"%>

<!DOCTYPE html>
<html>
<head>
<title>Quiz Results</title>
</head>
<body>

	<h2>All Student Results</h2>

	<table border="1">

		<tr>
			<th>ID</th>
			<th>Username</th>
			<th>Score</th>
		</tr>

		<%
		List<Result> list = ResultDAO.getAll();

		for (Result r : list) {
		%>

		<tr>
			<td><%=r.getId()%></td>
			<td><%=r.getUsername()%></td>
			<td><%=r.getScore()%></td>
		</tr>

		<%
		}
		%>

	</table>

	<br>

	<a href="adminDashboard.jsp">
		<button>Back</button>
	</a>

</body>
</html>