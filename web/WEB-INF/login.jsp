<%@page import="java.sql.ResultSet"%> <!--  -->
<%@page import="java.sql.PreparedStatement" %>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection" %>
<%@page import="java.io.*" %>
<%@page import="java.util.*" %>
<%@page import="jakarta.*" %>
<%@page language="java" contentType="text/html; charset=UTF-8"
        pageEncoding="UTF-8" %>

<html>
<head>
    <meta charset="UTF-8">
    <title>로그인 화면</title>
</head>
<body>
    <h1>로그인 입력창</h1>
    <%
        try{
            Class.forName("com.mysql.jdbc.Driver");
            String dbAddress = "jdbc:mysql://localhost:3306/test";
            String dbUsername = "root";
            String dbPw = "1234";
            Connection conn = DriverManager.getConnection(dbAddress,dbUsername,dbPw);

            request.setCharacterEncoding("utf-8");

            String memberInsert = "SELET * FROM test.members order by memberidx desc";

        }catch (Exception e){
            %>
         <%= "오류발생. 오류메세지:"+e.getMessage() %>
        <%
    }
    %>


    <form action="login.do" method="get">

    </form>
</body>
</html>
