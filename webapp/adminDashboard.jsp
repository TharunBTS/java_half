<!DOCTYPE html>
<%@page import="com.example.QuizProject.dao.QuestionDAO"%>
<%@page import="java.util.List"%>
<%@page import="com.example.QuizProject.model.Question"%>
<html>
<head>
    <title>Admin Dashboard</title>
</head>
<body>

<h2>Admin Dashboard</h2>


<%-- 
<%
    String user = request.getParameter("user");
%>

<p>Welcome, <%= user %></p>
 --%>

<hr>

<!-- Simple navigation buttons -->

<a href="addQuestions.jsp">
    <button>Add Question</button>
</a>

<br><br>

<a href="adminLogin.jsp">
    <button>Logout</button>
</a>

<a href="viewResults.jsp">
    <button>View Quiz Results</button>
</a>

<a href="createQuiz.jsp">
    <button>Create Quiz</button>
</a>






<hr>

<h3>All Questions</h3>

<table border="1">

<tr>
    <th>ID</th>
    <th>Question</th>
    <th>Option A</th>
    <th>Option B</th>
    <th>Option C</th>
    <th>Option D</th>
    <th>Correct</th>
    <th>Edit</th>
    <th>Delete</th>
</tr>

<%
    List<Question> list = QuestionDAO.getAllQuestions();

    for (Question q : list) {
%>

<tr>
    <td><%= q.getId() %></td>
    <td><%= q.getQuestion() %></td>
    <td><%= q.getOptionA() %>
    <td><%= q.getOptionB() %>
    <td><%= q.getOptionC() %>
    <td><%= q.getOptionD() %>
    <td><%= q.getCorrectAnswer() %></td>

    <td>
        <a href="editQuestion.jsp?id=<%= q.getId() %>">
            Edit
        </a>
    </td>

    <td>
        <a href="deleteQuestion?id=<%= q.getId() %>">
            Delete
        </a>
    </td>
</tr>

<% } %>

</table>


</body>
</html>