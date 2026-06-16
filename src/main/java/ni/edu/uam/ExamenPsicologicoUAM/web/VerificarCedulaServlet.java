package ni.edu.uam.ExamenPsicologicoUAM.web;

import ni.edu.uam.ExamenPsicologicoUAM.modelo.Aplicante;
import org.openxava.jpa.XPersistence;

import javax.persistence.EntityManager;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
import java.io.PrintWriter;

//@WebServlet("/verificar-cedula")
public class VerificarCedulaServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {

        response.setContentType("application/json;charset=UTF-8");
        PrintWriter out = response.getWriter();

        String cedula = request.getParameter("cedula");

        if (cedula == null || cedula.trim().isEmpty()) {
            out.print("{\"existe\":false}");
            return;
        }

        EntityManager em = XPersistence.getManager();

        Long total = em.createQuery(
                "select count(a) from Aplicante a where a.cedula = :cedula",
                Long.class
        ).setParameter("cedula", cedula.trim()).getSingleResult();

        if (total > 0) {
            out.print("{\"existe\":true}");
        } else {
            out.print("{\"existe\":false}");
        }
    }
}
