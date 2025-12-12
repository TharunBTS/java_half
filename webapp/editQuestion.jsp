<%@page import="com.example.QuizProject.model.Question"%>
<%@page import="com.example.QuizProject.dao.QuestionDAO"%>
<%@ page import="com.example.QuizProject.model.*, com.example.QuizProject.dao.*" %>

<%
    int id = Integer.parseInt(request.getParameter("id"));
    Question q = QuestionDAO.getById(id);
%>

<form action="updateQuestion" method="post">

<input type="hidden" name="id" value="<%= q.getId() %>">

Question:
<textarea name="question"><%= q.getQuestion() %></textarea>

Option A:<input name="optionA" value="<%= q.getOptionA()%>"/>
Option B:<input name="optionB" value="<%= q.getOptionB()%>"/>

Option C:<input name="optionC" value="<%= q.getOptionC()%>"/>
Option D:<input name="optionD" value="<%= q.getOptionD()%>"/>

Correct:
<input name="correct" value="<%= q.getCorrectAnswer()%>">

<button>Update</button>

</form>