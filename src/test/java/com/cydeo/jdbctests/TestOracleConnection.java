package com.cydeo.jdbctests;

import java.sql.*;

public class TestOracleConnection  {
    public static void main(String[] args) throws SQLException {
        String dbUrl = "jdbc:oracle:thin:@44.211.223.224:1521:XE";
        String dbUS = "hr";
        String dbPass = "hr";

        Connection conn = DriverManager.getConnection(dbUrl, dbUS, dbPass);

        Statement statement = conn.createStatement();
        ResultSet rs = statement.executeQuery("select * from REGIONS");


        System.out.println("------ FIRST ROW -------");


        rs.next();

        // pointer shows the first row

        // how to get data

        // rs.getInt(index)  --> it returns integer. Index start from 1 into SQL.It refers column position

        // it returns int
        System.out.println(rs.getInt(1));  // 1
        // it returns String
        System.out.println(rs.getString(1));  // 1
        System.out.println("alpi");
        // rs.getInt(columLabel)
//        System.out.println(rs.getInt("REGION_ID"));
//        System.out.println(rs.getString("REGION_ID"));

        // get me Europe
        System.out.println(rs.getString(2)); // Europe
        System.out.println(rs.getString("REGION_NAME")); // Europe

        System.out.println("------ SECOND ROW -------");

        rs.next();
        // 2 SECOND ROW    2 - Americas

        System.out.println(rs.getString(1)+" - "+rs.getString(2));
        System.out.println(rs.getString("REGION_ID")+" - "+rs.getString("REGION_NAME"));





        rs.close();
        statement.close();
        conn.close();
    }
}
