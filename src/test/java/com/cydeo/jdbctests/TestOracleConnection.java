package com.cydeo.jdbctests;

import java.sql.*;

public class TestOracleConnection  {
    public static void main(String[] args) throws SQLException {
        String dbUrl = "jdbc:oracle:thin:@44.211.223.224:1521:XE";
        String dbUS = "hr";
        String dbPass = "hr";

        Connection conn = DriverManager.getConnection(dbUrl, dbUS, dbPass);

        Statement statement = conn.createStatement();
        ResultSet rs = statement.executeQuery("select * from EMPLOYEES");


    }
}
