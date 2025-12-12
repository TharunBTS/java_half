<%@ page import="java.util.*, com.example.QuizProject.dao.QuestionDAO, com.example.QuizProject.model.Question" %>

<!DOCTYPE html>
<html>
<head>
<title>Create Quiz</title>
</head>
<body>

<h2>Create Quiz</h2>

<form action="createQuiz" method="post">

Quiz Name:
<input type="text" name="quizName" required>

<hr>

<h3>Select Questions</h3>

<%
    List<Question> list = QuestionDAO.getAllQuestions();

    for(Question q : list){
%>

<input type="checkbox"
       name="questionIds"
       value="<%= q.getId() %>">

<%= q.getQuestion() %>
<br>

<% } %>

<br>
<button type="submit">Save Quiz</button>

</form>

<br>

<a href="adminDashboard.jsp">
    <button>Back</button>
</a>

</body>
</html>