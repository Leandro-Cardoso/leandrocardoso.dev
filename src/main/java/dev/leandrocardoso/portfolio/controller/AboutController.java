package dev.leandrocardoso.portfolio.controller;

import dev.leandrocardoso.portfolio.model.*;
import dev.leandrocardoso.portfolio.service.*;
import jakarta.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.Collections;
import java.util.List;

@Controller
@RequestMapping("/about")
public class AboutController {

    private final TechService techService;
    private final AcademicQualificationService academicQualificationService;
    private final CertificationService certificationService;
    private final LanguageService languageService;
    private final WorkExperienceService workExperienceService;

    @Autowired
    public AboutController(TechService techService,
                           AcademicQualificationService academicQualificationService,
                           CertificationService certificationService,
                           LanguageService languageService,
                           WorkExperienceService workExperienceService) {

        this.techService = techService;
        this.academicQualificationService = academicQualificationService;
        this.certificationService = certificationService;
        this.languageService = languageService;
        this.workExperienceService = workExperienceService;

    }

    @GetMapping
    public String about(Model model, HttpServletRequest request) {

        List<Tech> techs = techService.getAllTechs();
        List<AcademicQualification> academicQualifications = academicQualificationService.getAllAcademicQualifications();
        List<Certification> certifications = certificationService.getAllCertifications();
        List<Language> languages = languageService.getAllLanguages();
        List<WorkExperience> workExperiences = workExperienceService.getAllWorkExperiences();

        Collections.reverse(techs);
        Collections.reverse(academicQualifications);
        Collections.reverse(certifications);
        Collections.reverse(languages);
        Collections.reverse(workExperiences);

        model.addAttribute("techs", techs);
        model.addAttribute("techsSize", techs.size());
        model.addAttribute("academicQualifications", academicQualifications);
        model.addAttribute("certifications", certifications);
        model.addAttribute("languages", languages);
        model.addAttribute("workExperiences", workExperiences);

        model.addAttribute("activePage", "about");
        model.addAttribute("request", request);

        return "about";

    }

}
