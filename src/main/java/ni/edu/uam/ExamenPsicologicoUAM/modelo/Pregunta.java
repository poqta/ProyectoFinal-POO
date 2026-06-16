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
public class Pregunta {

    @Id
    @Hidden
    @GeneratedValue(generator = "system-uuid")
    @GenericGenerator(name = "system-uuid", strategy = "uuid")
    @Column(length = 32)
    private String id;

    @ManyToOne(fetch = FetchType.LAZY)
    @DescriptionsList
    private Cuestionario cuestionario;

    private Integer numero;

    @TextArea
    @Column(length = 2000, nullable = false)
    private String enunciado;

    @Enumerated(EnumType.STRING)
    private TipoPregunta tipoPregunta;

    private Integer orden;

    @OneToMany(mappedBy = "pregunta")
    private java.util.Collection<OpcionRespuesta> opciones;
}