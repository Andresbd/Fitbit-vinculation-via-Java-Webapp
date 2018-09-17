import components.PacienteInfo;
import components.pQuery;
import java.io.IOException;
import java.io.PrintWriter;
import static java.lang.System.out;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns = {"/pNutri"})
public class pNutri extends HttpServlet {
Connection con;
    Statement st;
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            String ex = request.getParameter("expediente");
            String sql = "select * from pacientes INNER JOIN evfuncional ON pacientes.expediente = evfuncional.paciente INNER JOIN evnutri ON pacientes.expediente = evnutri.paciente AND pacientes.expediente = '"+ex+"';";
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/amss","root", "");
            st = con.prepareStatement(sql);
            ResultSet rs = st.executeQuery(sql);
            
            if (rs.next()) {
                PacienteInfo p = new PacienteInfo();
                p.setExpediente(Integer.parseInt(rs.getString("pacientes.expediente")));
                p.setNombre(rs.getString("pacientes.nombre"));
                p.setApellidos(rs.getString("pacientes.apellidos"));
                p.setAfiliacion(rs.getString("pacientes.afiliacion"));
                p.setAmai(rs.getString("pacientes.amai"));
                p.setAutoreporte(rs.getString("pacientes.autoreporte"));
                p.setBarthel(Integer.parseInt(rs.getString("evfuncional.barthel")));
                p.setKatz(Integer.parseInt(rs.getString("evfuncional.katz")));
                p.setLawton(Integer.parseInt(rs.getString("evfuncional.lawton")));
                p.setEdad(Integer.parseInt(rs.getString("pacientes.edad")));
                request.setAttribute("elBean", p);
                RequestDispatcher dispatcher = request.getRequestDispatcher("paciente.jsp");
                dispatcher.forward(request, response);
            } else {
                out.println("Error");
            }
            
        } catch (ClassNotFoundException | SQLException ex1) {
            Logger.getLogger(pQuery.class.getName()).log(Level.SEVERE, null, ex1);
        }
        }
    
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    RequestDispatcher dispatcher = request.getRequestDispatcher("paciente.jsp");
                dispatcher.forward(request, response);
}
}