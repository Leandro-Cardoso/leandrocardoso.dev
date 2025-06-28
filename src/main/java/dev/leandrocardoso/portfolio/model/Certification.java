package dev.leandrocardoso.portfolio.model;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.util.UUID;

@Entity
@Table(name = "tb_certifications")
@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
public class Certification {

    @Id
    @GeneratedValue
    private UUID id;

    @Column(nullable = false)
    private String institution;

    @Column(nullable = false)
    private String certificate;

    @Column(nullable = false, name = "certificate_br")
    private String certificateBR;

    @Column(nullable = false)
    private int year;

}
