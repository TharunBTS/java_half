package com.example.QuizProject.dao;



import java.sql.*;
import java.util.*;
import com.example.QuizProject.model.Result;
import com.example.QuizProject.util.DBConnection;

public class ResultDAO {

    public static List<Result> getAll() {

        List<Result> list = new ArrayList<>();

        try {

            Connection con = DBConnection.getConnection();

            PreparedStatement ps =
                 con.prepareStatement("SELECT * FROM results");

            ResultSet rs = ps.executeQuery();

            while(rs.next()) {

                Result r = new Result();

                r.setId(rs.getInt("id"));
                r.setUsername(rs.getString("username"));
                r.setScore(rs.getInt("score"));

                list.add(r);
            }

            con.close();

        } catch(Exception e) {
            e.printStackTrace();
        }

        return list;
    }
}