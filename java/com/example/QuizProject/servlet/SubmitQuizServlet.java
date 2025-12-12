package com.example.QuizProject.servlet;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.example.QuizProject.dao.QuizDAO;
import com.example.QuizProject.model.Question;
import com.example.QuizProject.util.DBConnection;

@WebServlet("/submitQuiz")
public class SubmitQuizServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        int quizId = Integer.parseInt(request.getParameter("quizId"));

		try {
			QuizDAO quizDAO = new QuizDAO(DBConnection.getConnection());
			List<Question> questions;
			questions = quizDAO.getQuestionsByQuizId(quizId);
			System.out.println(questions);
			int score = 0;
			int total = questions.size();
			
			for (Question q : questions) {
				String userAnswer = request.getParameter("ans_" + q.getId());
				
				if (userAnswer != null && userAnswer.equals(q.getCorrectAnswer())) {
					score++;
				}
			}
			
			request.setAttribute("score", score);
			request.setAttribute("total", total);
			
			RequestDispatcher rd = request.getRequestDispatcher("quizResult.jsp");
			rd.forward(request, response);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

    }
}