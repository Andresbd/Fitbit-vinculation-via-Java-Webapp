<%@ page import ="java.sql.*" %>
<%
    int ka = Integer.parseInt(request.getParameter("katz"));
    int ba = Integer.parseInt(request.getParameter("barthel"));
    int la = Integer.parseInt(request.getParameter("lawton"));
    int ex = Integer.parseInt(request.getParameter("expediente"));
    
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/amss",
            "root", "");
    Statement stmt = null;
    try {
        stmt = con.createStatement();
        stmt.executeUpdate(String.format("INSERT INTO evfuncional (paciente, katz, barthel, lawton) VALUES ('"+ex+"','"+ka+"','"+ba+"','"+la+"');"));

        stmt.close();
        con.close();
        
        response.sendRedirect("success.jsp");
        
    }catch(SQLException e) {
        out.println(e);
    };
%>
