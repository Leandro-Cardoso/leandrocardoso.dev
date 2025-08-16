package dev.leandrocardoso.portfolio.model;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.util.UUID;

@Entity
@Table(name = "tb_languages")
@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
public class Language {

    @Id
    @GeneratedValue
    private UUID id;

    @Column(nullable = false)
    private String language;

    @Column(nullable = false)
    private String language_br;

    @Column(nullable = false)
    private String reading;

    @Column(nullable = false)
    private String reading_br;

    @Column(nullable = false)
    private String writing;

    @Column(nullable = false)
    private String writing_br;

    @Column(nullable = false)
    private String speaking;

    @Column(nullable = false)
    private String speaking_br;

    @Column(nullable = false)
    private String listening;

    @Column(nullable = false)
    private String listening_br;

}
