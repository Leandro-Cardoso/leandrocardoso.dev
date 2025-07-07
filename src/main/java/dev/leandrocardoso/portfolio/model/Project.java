package dev.leandrocardoso.portfolio.model;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.util.List;
import java.util.UUID;

@Entity
@Table(name = "tb_projects")
@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
public class Project {

    @Id
    @GeneratedValue
    private UUID id;

    @Column(nullable = false)
    private String name;

    @Column(name = "name_br")
    private String nameBR;

    @Column(nullable = false)
    private String description;

    @Column(nullable = false, name = "description_br")
    private String descriptionBR;

    @Column(unique = true)
    private String github;

    @Column(unique = true)
    private String link;

    @ManyToMany
    @JoinTable(
            name = "tb_projects_techs",
            joinColumns = @JoinColumn(name = "project_id"),
            inverseJoinColumns = @JoinColumn(name = "tech_id")
    )
    private List<Tech> techs;

    @Column(nullable = false, name = "image_url")
    private String imageUrl;

}
