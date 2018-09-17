<%@ page import ="java.sql.*" %>
<%
    String nom = request.getParameter("nombre");    
    String ape = request.getParameter("apellidos");
    String esco = request.getParameter("esco");
    String esta = request.getParameter("estado");
    String corr = request.getParameter("email");
    String afi = request.getParameter("afiliacion");
    String ama = request.getParameter("amai");
    int ed = Integer.parseInt(request.getParameter("edad"));
    String coha = request.getParameter("cohabitacion");
    
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/amss",
            "root", "");
    Statement stmt = null;
    try {
        stmt = con.createStatement();
        stmt.executeUpdate(String.format("INSERT INTO pacientes (nombre, apellidos, escolaridad, estado, correo, afiliacion, amai, edad, cohabitacion) VALUES ('"+nom+"','"+ape+"','"+esco+"','"+esta+"','"+corr+"','"+afi+"','"+ama+"','"+ed+"','"+coha+"');"));

        stmt.close();
        con.close();
        
        response.sendRedirect("success.jsp");
        
    }catch(SQLException e) {
        out.println(e);
    };
%>
