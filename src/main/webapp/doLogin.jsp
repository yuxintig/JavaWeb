<%@ page import="java.sql.*" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
  <title>Title</title>
</head>
<body>
<%
    String username = request.getParameter("username");
    String password = request.getParameter("password");
    Class.forName("com.mysql.cj.jdbc.Driver");
    try (Connection conn = DriverManager.getConnection(
            "jdbc:mysql://localhost:3306/librtary?servierTimezone=UTC&characterEncoding=utf-8",
            "root","123456"
    )){
        String sql = "select * from borrow_card where username = ?";
        try(PreparedStatement prep = conn.prepareStatement(sql)){
            prep.setString(1, username);
            try(ResultSet resultSet = prep.executeQuery()){
                while (resultSet.next()){
                    if (password.equals((resultSet.getString("password")))) {
                        response.sendRedirect("./main.jsp");
                    }else{
%>
<jsp:forward page="index.jsp"></jsp:forward>
<%
                    }
                }
            }
        }
    }catch (SQLException e){
        e.printStackTrace();

    }
%>

</body>
</html>
