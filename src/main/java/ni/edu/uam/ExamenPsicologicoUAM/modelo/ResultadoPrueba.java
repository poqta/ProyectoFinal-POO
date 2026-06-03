package ni.edu.uam.ExamenPsicologicoUAM.modelo;

import lombok.Getter;
import lombok.Setter;
import org.hibernate.annotations.GenericGenerator;
import org.openxava.annotations.DescriptionsList;
import org.openxava.annotations.Hidden;
import org.openxava.annotations.TextArea;

import javax.persistence.*;

@Entity
@Getter
@Setter
public class ResultadoPrueba {

    @Id
    @Hidden
    @GeneratedValue(generator = "system-uuid")
    @GenericGenerator(name = "system-uuid", strategy = "uuid")
    @Column(length = 32)
    private String id;

    @OneToOne(fetch = FetchType.LAZY)
    @DescriptionsList(descriptionProperties = "aplicante.nombres, aplicante.apellidos, cuestionario.nombre")
    private AplicacionPrueba aplicacionPrueba;

    private Integer totalPreguntas = 0;

    private Integer respuestasCorrectas = 0;

    private Integer respuestasIncorrectas = 0;

    private Integer preguntasSinResponder = 0;

    private Integer puntaje = 0;

    @TextArea
    private String observacion;
}