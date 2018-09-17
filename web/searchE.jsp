<%@ page import ="java.sql.*" %>
<%
    int ex = Integer.parseInt(request.getParameter("expediente"));
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/amss",
            "root", "");
    Statement st = con.createStatement();
    ResultSet rs;
    rs = st.executeQuery("select nombre, apellidos, katz from pacientes where expediente='" + ex + "'");
    if (rs.next()) {
     } else {
        out.println("Usuario incorrecto <a href='index.html'>Regresar</a>");
    }
    %>
