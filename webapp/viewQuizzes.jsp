 <%-- <%@page import="com.example.QuizProject.model.Quiz"  pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>

<%
    if (session.getAttribute("userObj") == null) {
        response.sendRedirect("userLogin.jsp");
        return;
    }

    List<Quiz> quizList = (List<Quiz>) request.getAttribute("quizList");
    System.out.println(quizList);
%>

<!DOCTYPE html>
<html>
<head>
    <title>Available Quizzes</title>
</head>
<body>

<h2>Available Quizzes</h2>

<% if (quizList == null || quizList.isEmpty()) { %>
    <p>No quizzes available.</p>
<% } else { %>
    <ul>
        <% for (Quiz q : quizList) { %>
            <li>
                <%= q.getQuizName() %> — 
                <a href="attemptQuiz?id=<%= q.getId() %>">Start Quiz</a>
            </li>
        <% } %>
    </ul>
<% } %>



<c:forEach var="q" items="${quizList}">


    <tr>
        <td>${q.quizName}</td>
        <td>
        
            <a href="takeQuiz?qid=${q.id}">Take Quiz</a>
        </td>
    </tr>
</c:forEach>



</body>
</html>

 
  --%>
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 <%@page import="java.util.List"%>
<%@page import="com.example.QuizProject.model.Quiz"  pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%
    if (session.getAttribute("userObj") == null) {
        response.sendRedirect("userLogin.jsp");
        return;
    }


	List<Quiz> quizList = (List<Quiz>) request.getAttribute("quizList");
	System.out.println(quizList);

%>

<!DOCTYPE html>
<html>
<head>
    <title>Available Quizzes</title>
</head>
<body>

<h2>Available Quizzes</h2>

<c:choose>
    <c:when test="${empty quizList}">
        <p>No quizzes available.</p>
    </c:when>
    <c:otherwise>
        <table border="1">
            <tr>
                <th>Quiz Name</th>
                <th>Action</th>
            </tr>
            <c:forEach var="q" items="${quizList}">
                <tr>
                    <td>${q.quizName}</td>
                    <td>
                        <a href="takeQuiz?qid=${q.id}">Take Quiz</a>
                    </td>
                </tr>
            </c:forEach>
        </table>
    </c:otherwise>
</c:choose>

</body>
</html>
