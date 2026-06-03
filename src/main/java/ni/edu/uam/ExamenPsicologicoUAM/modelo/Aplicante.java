package ni.edu.uam.ExamenPsicologicoUAM.modelo;

import lombok.Getter;
import lombok.Setter;
import org.hibernate.annotations.GenericGenerator;
import org.openxava.annotations.Hidden;

import javax.persistence.*;
import java.time.LocalDate;

@Entity
@Getter
@Setter
public class Aplicante {

    @Id
    @Hidden
    @GeneratedValue(generator = "system-uuid")
    @GenericGenerator(name = "system-uuid", strategy = "uuid")
    @Column(length = 32)
    private String id;

    @Column(length = 80, nullable = false)
    private String nombres;

    @Column(length = 80, nullable = false)
    private String apellidos;

    @Column(length = 20)
    private String cedula;

    private LocalDate fechaNacimiento;

    private Integer edad;

    @Column(length = 20)
    private String sexo;

    @Column(length = 100)
    private String correo;

    @Column(length = 20)
    private String telefono;
}