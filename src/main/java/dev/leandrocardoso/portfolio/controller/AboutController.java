package dev.leandrocardoso.portfolio.controller;

import dev.leandrocardoso.portfolio.model.AcademicQualification;
import dev.leandrocardoso.portfolio.service.AcademicQualificationService;
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

    private final AcademicQualificationService academicQualificationService;

    @Autowired
    public AboutController(AcademicQualificationService academicQualificationService) {
        this.academicQualificationService = academicQualificationService;
    }

    @GetMapping
    public String home(Model model, HttpServletRequest request) {

        List<AcademicQualification> academicQualifications = academicQualificationService.getAllAcademicQualifications();
        Collections.reverse(academicQualifications);

        model.addAttribute("academicQualifications", academicQualifications);
        model.addAttribute("activePage", "about");
        model.addAttribute("request", request);

        return "about";

    }

}
