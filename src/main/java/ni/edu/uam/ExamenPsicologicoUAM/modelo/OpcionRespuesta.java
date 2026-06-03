package ni.edu.uam.ExamenPsicologicoUAM.modelo;

import lombok.Getter;
import lombok.Setter;
import org.hibernate.annotations.GenericGenerator;
import org.openxava.annotations.DescriptionsList;
import org.openxava.annotations.Hidden;

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

    @ManyToOne(fetch = FetchType.LAZY)
    @DescriptionsList(descriptionProperties = "numero, enunciado")
    private Pregunta pregunta;

    @Column(length = 1, nullable = false)
    private String letra;

    @Column(length = 150, nullable = false)
    private String texto;

    private Boolean esCorrecta = false;
}