package ni.edu.uam.ExamenPsicologicoUAM.modelo;

import lombok.Getter;
import lombok.Setter;
import org.hibernate.annotations.GenericGenerator;
import org.openxava.annotations.Hidden;
import org.openxava.annotations.TextArea;

import javax.persistence.*;
import org.openxava.annotations.Required;

@Entity
@Getter
@Setter
public class Cuestionario {

    @Id
    @Hidden
    @GeneratedValue(generator = "system-uuid")
    @GenericGenerator(name = "system-uuid", strategy = "uuid")
    @Column(length = 32)
    private String id;

    @Required
    @Column(length = 100, nullable = false)
    private String nombre;

    @Required
    @Enumerated(EnumType.STRING)
    private FormaCuestionario forma;

    @TextArea
    private String descripcion;

    @Required
    private Integer tiempoMinutos;

    private Boolean activo = true;
}