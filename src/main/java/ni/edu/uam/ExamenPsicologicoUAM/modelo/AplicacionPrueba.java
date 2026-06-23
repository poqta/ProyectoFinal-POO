package ni.edu.uam.ExamenPsicologicoUAM.modelo;

import lombok.Getter;
import lombok.Setter;
import org.hibernate.annotations.GenericGenerator;
import org.openxava.annotations.DescriptionsList;
import org.openxava.annotations.Hidden;

import javax.persistence.*;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;

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
    @DescriptionsList
    private Cuestionario cuestionario;

    private LocalDateTime fechaInicio;

    private LocalDateTime fechaFin;

    @Enumerated(EnumType.STRING)
    private EstadoAplicacion estado = EstadoAplicacion.EN_PROCESO;

    private Integer puntajeTotal = 0;

    @OneToMany(
            mappedBy = "aplicacionPrueba",
            cascade = CascadeType.REMOVE,
            orphanRemoval = true
    )
    private List<RespuestaSujeto> respuestas = new ArrayList<>();

    @OneToOne(
            mappedBy = "aplicacionPrueba",
            cascade = CascadeType.REMOVE,
            orphanRemoval = true
    )
    private ResultadoPrueba resultadoPrueba;
}