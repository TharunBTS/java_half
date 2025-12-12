<%@page import="com.example.QuizProject.model.User"%>


<%
    User user = (User) session.getAttribute("userObj");
    if (user == null) {
        response.sendRedirect("userLogin.jsp");
        return;
    }
%>

<!DOCTYPE html>
<html>
<head>
    <title>User Home</title>
</head>
<body>

<h2>Welcome, <%= user.getUsername() %>!</h2>

<p>You are successfully logged in.</p>

<a href="viewQuizzes">View Available Quizzes</a>

</body>
</html>