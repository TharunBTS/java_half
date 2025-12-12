<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<h2>Quiz Questions</h2>
<form action="submitQuiz" method="post">
    <input type="hidden" name="quizId" value="${quizId}">

    <c:forEach var="q" items="${questions}">
        <p><b>${q.question}</b></p>

        <input type="radio" name="ans_${q.id}" value="A">${q.optionA}<br>
        <input type="radio" name="ans_${q.id}" value="B">${q.optionB}<br>
        <input type="radio" name="ans_${q.id}" value="C">${q.optionC}<br>
        <input type="radio" name="ans_${q.id}" value="D">${q.optionD}<br>

        <hr>
    </c:forEach>

    <button type="submit">Submit Quiz</button>
</form>




</body>
</html>