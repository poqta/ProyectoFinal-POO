package ni.edu.uam.ExamenPsicologicoUAM.modelo;

import lombok.Getter;
import lombok.Setter;
import org.hibernate.annotations.GenericGenerator;
import org.openxava.annotations.DescriptionsList;
import org.openxava.annotations.Hidden;
import org.openxava.annotations.Required;

import javax.persistence.*;

@Entity
@Getter
@Setter
public class OpcionRespuesta {

    @Id
    @Hidden
    @GeneratedValue(generator = "system-uuid")
    @GenericGenerator(name = "system-uuid", strategy = "uuid")
    @Column(length = 32)
    private String id;
    @Required
    @ManyToOne(fetch = FetchType.LAZY)
    @DescriptionsList(descriptionProperties = "numero, enunciado")
    private Pregunta pregunta;
    @Required
    @Column(length = 1, nullable = false)
    private String letra;
    @Required
    @Column(length = 150, nullable = false)
    private String texto;

    private Boolean esCorrecta = false;
}