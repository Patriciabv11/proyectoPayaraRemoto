package controlador;

import datos.Ciudad;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import datos.Conexion;
import datos.Lenguaje;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;
@WebServlet(name="ServletController", urlPatterns={"/ServletController"})
public class ServletController extends HttpServlet {
   

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
    //    processRequest(request, response);

            String nombre=request.getParameter("optradio");
   /*         String sqlSrt = "select * from city where ";
            for (int i=0;i<nombres.length;i++){
                sqlSrt+="name='"+nombres[i]+"'";
                if (i != nombres.length-1){
                    sqlSrt+=" OR ";  
                    }
            }*/

            String sqlStr="select country.name, countrylanguage.language, countrylanguage.isofficial "
                            + "from country, countrylanguage where countrylanguage.countrycode=country.code "
                            + "and countrylanguage.isofficial='T' and countrylanguage.language='"+nombre+"'";
            System.out.println(sqlStr);

            Connection conn = null;
            PreparedStatement stmt = null;
            ResultSet rs = null;
            List<Lenguaje> lenguaje=new ArrayList<>();
        try {
            conn = Conexion.getConnection();
            stmt = conn.prepareStatement(sqlStr);
            rs = stmt.executeQuery(sqlStr);
            while (rs.next()) {
                Lenguaje l=new Lenguaje();
                l.setName(rs.getString("name"));
                l.setLanguage(rs.getString("language"));
                lenguaje.add(l);
            }
            System.out.println("Lenguaje: " + lenguaje);

	    request.setAttribute("lenguaje",lenguaje);
	    request.getRequestDispatcher("vistafinal.jsp").forward(request, response);
                 
        } catch (SQLException ex) {
            ex.printStackTrace(System.out);
        } finally {
            Conexion.close(rs);
            Conexion.close(stmt);
            Conexion.close(conn);
        }
}

}
