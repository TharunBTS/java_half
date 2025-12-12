<!DOCTYPE html>
<html>
<head>
    <title>User Login</title>
</head>
<body>

<h2>User Login</h2>

<% if (request.getParameter("msg") != null && request.getParameter("msg").equals("invalid")) { %>
    <p style="color:red;">Invalid email or password</p>
<% } %>

<form action="userLogin" method="post">

    <label>Username:</label><br>
    <input type="text" name="username" required><br><br>

    <label>Password:</label><br>
    <input type="password" name="password" required><br><br>

    <button type="submit">Login</button>

</form>

<br>
<a href="register.jsp">New User? Register Here</a>

</body>
</html>