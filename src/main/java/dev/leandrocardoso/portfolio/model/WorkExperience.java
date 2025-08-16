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

    @Column(nullable = false)
    private String job_title;

    @Column(nullable = false)
    private String job_title_br;

    @Column()
    private String company;

    @Column(nullable = false)
    private int start_year;

    @Column()
    private Integer end_year;

    @Column(nullable = false)
    private String responsibilities;

    @Column(nullable = false)
    private String responsibilities_br;

}
