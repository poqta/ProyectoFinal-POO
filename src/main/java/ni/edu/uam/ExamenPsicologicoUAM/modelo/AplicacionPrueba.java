package ni.edu.uam.ExamenPsicologicoUAM.modelo;

import lombok.Getter;
import lombok.Setter;
import org.hibernate.annotations.GenericGenerator;
import org.openxava.annotations.DescriptionsList;
import org.openxava.annotations.Hidden;

import javax.persistence.*;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.util.Date;
@Entity
@Getter
@Setter
public class AplicacionPrueba {

    @Id
    @Hidden
    @GeneratedValue(generator = "system-uuid")
    @GenericGenerator(name = "system-uuid", strategy = "uuid")
    @Column(length = 32)
    private String id;

    @ManyToOne(fetch = FetchType.LAZY)
    @DescriptionsList(descriptionProperties = "nombres, apellidos")
    private Aplicante aplicante;

    @ManyToOne(fetch = FetchType.LAZY)
    @DescriptionsList(descriptionProperties = "nombre, forma")
    private Cuestionario cuestionario;
    @Hidden
    private LocalDate fechaInicio;
    @Hidden
    private LocalDate fechaFin;

    @Enumerated(EnumType.STRING)
    private EstadoAplicacion estado = EstadoAplicacion.ASIGNADO;


    private Integer puntajeTotal = 0;
}