<!DOCTYPE html>
<html>
<head>
    <title>Add Question</title>
</head>
<body>

<h2>Add Quiz Question</h2>

<form action="addQuestion" method="post">

    Question:<br>
    <textarea name="question" ></textarea><br><br>

    Option A:
    <input type="text" name="optionA" ><br><br>

    Option B:
    <input type="text" name="optionB" ><br><br>

    Option C:
    <input type="text" name="optionC" ><br><br>

    Option D:
    <input type="text" name="optionD" ><br><br>

    Correct Answer (A/B/C/D):
    <input type="text" name="correct" ><br><br>

    <button type="submit">Save Question</button>
    
    <a href="/QuizPortal/adminDashboard.jsp">
    <button type="button">Back</button>
	</a>


</form>

</body>
</html>