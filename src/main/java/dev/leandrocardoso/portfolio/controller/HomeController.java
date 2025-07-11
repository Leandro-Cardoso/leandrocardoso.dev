package dev.leandrocardoso.portfolio.controller;

import jakarta.servlet.http.HttpServletRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/")
public class HomeController {

    @GetMapping
    public String home(Model model, HttpServletRequest request) {
        model.addAttribute("activePage", "home");
        model.addAttribute("request", request);
        return "index";
    }

}
