package dev.leandrocardoso.portfolio.controller;

import dev.leandrocardoso.portfolio.model.Project;
import dev.leandrocardoso.portfolio.model.Tech;
import dev.leandrocardoso.portfolio.service.ProjectService;
import dev.leandrocardoso.portfolio.service.TechService;
import jakarta.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.Collections;
import java.util.List;

@Controller
@RequestMapping("/projects")
public class ProjectController {

    private final TechService techService;
    private final ProjectService projectService;

    @Autowired
    public ProjectController(TechService techService,
                             ProjectService projectService) {

        this.techService = techService;
        this.projectService = projectService;

    }

    @GetMapping
    public String projects(Model model, HttpServletRequest request) {

        List<Tech> techs = techService.getAllTechs();
        List<Project> projects = projectService.getAllProjects();

        Collections.reverse(techs);
        Collections.reverse(projects);

        model.addAttribute("techs", techs);
        model.addAttribute("projects", projects);

        model.addAttribute("activePage", "projects");
        model.addAttribute("request", request);

        return "projects";

    }

}
