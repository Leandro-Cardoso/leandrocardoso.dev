package dev.leandrocardoso.portfolio.service;

import dev.leandrocardoso.portfolio.model.Language;
import dev.leandrocardoso.portfolio.repository.LanguageRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class LanguageService {

    private final LanguageRepository languageRepository;

    @Autowired
    public LanguageService(LanguageRepository languageRepository) {
        this.languageRepository = languageRepository;
    }

    public List<Language> getAllLanguages() {
        return this.languageRepository.findAll();
    }

}
