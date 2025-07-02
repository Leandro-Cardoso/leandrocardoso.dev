package dev.leandrocardoso.portfolio.model;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.util.UUID;

@Entity
@Table(name = "tb_work_experiences")
@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
public class WorkExperience {

    @Id
    @GeneratedValue
    private UUID id;

    @Column(nullable = false, name = "job_title")
    private String jobTitle;

    @Column(nullable = false, name = "job_title_br")
    private String jobTitleBR;

    @Column()
    private String company;

    @Column(nullable = false, name = "start_year")
    private int startYear;

    @Column(name = "end_year")
    private Integer endYear;

    @Column(nullable = false)
    private String responsibilities;

    @Column(nullable = false, name = "responsibilities_br")
    private String responsibilitiesBR;

}
