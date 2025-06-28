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

    @Column(nullable = false, name = "language_br")
    private String languageBR;

    @Column(nullable = false)
    private String reading;

    @Column(nullable = false, name = "reading_br")
    private String readingBR;

    @Column(nullable = false)
    private String writing;

    @Column(nullable = false, name = "writing_br")
    private String writingBR;

    @Column(nullable = false)
    private String speaking;

    @Column(nullable = false, name = "speaking_br")
    private String speakingBR;

    @Column(nullable = false)
    private String listening;

    @Column(nullable = false, name = "listening_br")
    private String listeningBR;

}
