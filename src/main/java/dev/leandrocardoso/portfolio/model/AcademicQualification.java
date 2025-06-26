package dev.leandrocardoso.portfolio.model;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.util.UUID;

@Entity
@Table(name = "tb_academic_qualifications")
@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
public class AcademicQualification {

    @Id
    @GeneratedValue
    private UUID id;

    @Column(nullable = false)
    private String university;

    @Column(nullable = false)
    private String course;

    @Column(nullable = false, name = "start_year")
    private int startYear;

    @Column(nullable = false, name = "graduation_year")
    private int graduationYear;

    @Column(nullable = false)
    private String status;

}
