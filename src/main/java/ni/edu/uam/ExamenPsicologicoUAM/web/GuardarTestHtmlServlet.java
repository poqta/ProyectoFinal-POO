package ni.edu.uam.ExamenPsicologicoUAM.web;

import ni.edu.uam.ExamenPsicologicoUAM.modelo.*;
import org.openxava.jpa.XPersistence;

import javax.persistence.EntityManager;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.util.List;

@WebServlet("/guardar-test-html")
public class GuardarTestHtmlServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {

        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();

        EntityManager em = XPersistence.getManager();

        try {
            String cedula = request.getParameter("cedula");
            String formaParam = request.getParameter("forma");

            FormaCuestionario forma = "B".equalsIgnoreCase(formaParam)
                    ? FormaCuestionario.FORMA_B
                    : FormaCuestionario.FORMA_A;

            Aplicante aplicante = em.createQuery(
                            "from Aplicante a where a.cedula = :cedula",
                            Aplicante.class)
                    .setParameter("cedula", cedula)
                    .getResultList()
                    .stream()
                    .findFirst()
                    .orElse(null);

            Cuestionario cuestionario = em.createQuery(
                            "from Cuestionario c where c.forma = :forma",
                            Cuestionario.class)
                    .setParameter("forma", forma)
                    .getResultList()
                    .stream()
                    .findFirst()
                    .orElse(null);

            if (aplicante == null || cuestionario == null) {
                mostrarError(out,
                        "No se encontró el aplicante o el cuestionario.",
                        "Verificá que la cédula esté registrada en OpenXava y que exista el cuestionario Forma " + formaParam + ".");
                return;
            }

            AplicacionPrueba aplicacion = new AplicacionPrueba();
            aplicacion.setAplicante(aplicante);
            aplicacion.setCuestionario(cuestionario);
            aplicacion.setFechaInicio(LocalDateTime.now());
            aplicacion.setFechaFin(LocalDateTime.now());
            aplicacion.setEstado(EstadoAplicacion.CALIFICADO);
            aplicacion.setPuntajeTotal(0);

            em.persist(aplicacion);

            List<Pregunta> preguntas = em.createQuery(
                            "from Pregunta p where p.cuestionario = :cuestionario order by p.orden",
                            Pregunta.class)
                    .setParameter("cuestionario", cuestionario)
                    .getResultList();

            int correctas = 0;
            int incorrectas = 0;
            int sinResponder = 0;

            for (Pregunta pregunta : preguntas) {
                String respuestaLetra = request.getParameter("p" + pregunta.getNumero());

                RespuestaSujeto respuesta = new RespuestaSujeto();
                respuesta.setAplicacionPrueba(aplicacion);
                respuesta.setPregunta(pregunta);

                if (respuestaLetra == null || respuestaLetra.isBlank()) {
                    respuesta.setCorrecta(false);
                    sinResponder++;
                } else {
                    OpcionRespuesta opcion = em.createQuery(
                                    "from OpcionRespuesta o where o.pregunta = :pregunta and o.letra = :letra",
                                    OpcionRespuesta.class)
                            .setParameter("pregunta", pregunta)
                            .setParameter("letra", respuestaLetra)
                            .getResultList()
                            .stream()
                            .findFirst()
                            .orElse(null);

                    if (opcion == null) {
                        respuesta.setCorrecta(false);
                        sinResponder++;
                    } else {
                        respuesta.setOpcionSeleccionada(opcion);
                        respuesta.setCorrecta(opcion.getEsCorrecta());

                        if (Boolean.TRUE.equals(opcion.getEsCorrecta())) {
                            correctas++;
                        } else {
                            incorrectas++;
                        }
                    }
                }

                em.persist(respuesta);
            }

            int total = preguntas.size();
            int puntaje = total > 0 ? Math.round((correctas * 100f) / total) : 0;

            ResultadoPrueba resultado = new ResultadoPrueba();
            resultado.setAplicacionPrueba(aplicacion);
            resultado.setTotalPreguntas(total);
            resultado.setRespuestasCorrectas(correctas);
            resultado.setRespuestasIncorrectas(incorrectas);
            resultado.setPreguntasSinResponder(sinResponder);
            resultado.setPuntaje(puntaje);
            resultado.setObservacion("Resultado generado automáticamente desde HTML Forma " + formaParam + ".");

            em.persist(resultado);

            aplicacion.setPuntajeTotal(puntaje);

            XPersistence.commit();

            mostrarResultado(out, aplicante, cuestionario, correctas, incorrectas, sinResponder, puntaje);

        } catch (Exception e) {
            XPersistence.rollback();
            mostrarError(out, "Error al guardar el resultado", e.getMessage());
        }
    }

    private void mostrarResultado(PrintWriter out, Aplicante aplicante, Cuestionario cuestionario,
                                  int correctas, int incorrectas, int sinResponder, int puntaje) {

        out.println("""
        <!DOCTYPE html>
        <html lang="es">
        <head>
            <meta charset="UTF-8">
            <title>Resultado de la prueba</title>
            out.println("<link rel='stylesheet' href='css/resultado.css'>");
            <style>
                body {
                    font-family: Arial, sans-serif;
                    background: #f4f0e6;
                    margin: 0;
                    color: #222;
                }

                .card {
                    max-width: 680px;
                    margin: 70px auto;
                    background: white;
                    padding: 35px;
                    border-radius: 16px;
                    box-shadow: 0 4px 18px rgba(0,0,0,.15);
                    text-align: center;
                }

                h1 {
                    color: #004254;
                }

                p {
                    font-size: 19px;
                }

                .nota {
                    font-size: 38px;
                    color: #004254;
                    font-weight: bold;
                    margin: 25px 0;
                }

                a {
                    display: inline-block;
                    margin-top: 20px;
                    background: #004254;
                    color: white;
                    padding: 13px 22px;
                    border-radius: 8px;
                    text-decoration: none;
                    font-weight: bold;
                }

                a:hover {
                    background: #00657a;
                }
            </style>
        </head>
        <body>
            <div class="card">
        """);

        out.println("<h1>Prueba finalizada</h1>");
        out.println("<p><b>Aplicante:</b> " + aplicante.getNombres() + " " + aplicante.getApellidos() + "</p>");
        out.println("<p><b>Cuestionario:</b> " + cuestionario.getNombre() + "</p>");
        out.println("<p><b>Correctas:</b> " + correctas + "</p>");
        out.println("<p><b>Incorrectas:</b> " + incorrectas + "</p>");
        out.println("<p><b>Sin responder:</b> " + sinResponder + "</p>");
        out.println("<div class='nota'>" + puntaje + "/100</div>");
        out.println("<a href='testFormaA.html'>Volver a Forma A</a>");

        out.println("""
            </div>
        </body>
        </html>
        """);
    }

    private void mostrarError(PrintWriter out, String titulo, String mensaje) {
        out.println("""
        <!DOCTYPE html>
        <html lang="es">
                ...
                ""\");
        <head>
            <meta charset="UTF-8">
            <title>Error</title>
            <style>
                body {
                    font-family: Arial, sans-serif;
                    background: #f4f0e6;
                    margin: 0;
                }

                .card {
                    max-width: 650px;
                    margin: 70px auto;
                    background: white;
                    padding: 35px;
                    border-radius: 16px;
                    box-shadow: 0 4px 18px rgba(0,0,0,.15);
                    text-align: center;
                }

                h1 {
                    color: #b00020;
                }

                p {
                    font-size: 18px;
                }

                a {
                    display: inline-block;
                    margin-top: 20px;
                    background: #004254;
                    color: white;
                    padding: 13px 22px;
                    border-radius: 8px;
                    text-decoration: none;
                    font-weight: bold;
                }
            </style>
        </head>
        <body>
            <div class="card">
        """);

        out.println("<h1>" + titulo + "</h1>");
        out.println("<p>" + mensaje + "</p>");
        out.println("<a href='testFormaA.html'>Volver al test</a>");

        out.println("""
            </div>
        </body>
        </html>
        """);
    }
}
