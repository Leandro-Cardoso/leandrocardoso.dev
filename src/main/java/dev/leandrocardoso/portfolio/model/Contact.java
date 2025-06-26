package dev.leandrocardoso.portfolio.model;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.util.UUID;

@Entity
@Table(name = "tb_contacts")
@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
public class Contact {

    @Id
    @GeneratedValue
    private UUID id;

    @Column(nullable = false)
    private String name;

    @Column(nullable = false)
    private String link;

    @Column(nullable = false, name = "image_url")
    private String imageUrl;

}
