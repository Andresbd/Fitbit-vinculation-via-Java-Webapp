<%@ page import ="java.sql.*" %>
<%
    String uname = request.getParameter("uname");    
    String pwd = request.getParameter("pwd");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/amss","root", "");
    Statement st = con.createStatement();
    ResultSet rs;
    rs = st.executeQuery("select pass, nivel from users where uname='" + uname + "'");
    if (rs.next()) {
        if(pwd.equals(rs.getString("pass"))) {
            int lvl = rs.getInt("nivel");
            session.setAttribute("uname", uname);
            session.setAttribute("nivel", lvl);
            out.println("welcome " + uname);
        //out.println("<a href='logout.jsp'>Log out</a>");
        switch(rs.getInt("nivel")) {
            case 0:
                    response.sendRedirect("homeD.jsp");
                    break;
            case 1:
                    response.sendRedirect("homeS.jsp");
                    break;
            case 2:
                    response.sendRedirect("homeF.jsp");
                    break;
        }
        } else {
            out.println("Contraseña incorrecta <a href='index.html'>Regresar</a>");
        }
        
    } else {
        out.println("Usuario incorrecto <a href='index.html'>Regresar</a>");
    }
%>