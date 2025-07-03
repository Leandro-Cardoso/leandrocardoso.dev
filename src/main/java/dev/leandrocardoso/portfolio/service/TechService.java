package dev.leandrocardoso.portfolio.service;

import dev.leandrocardoso.portfolio.model.Tech;
import dev.leandrocardoso.portfolio.repository.TechRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class TechService {

    private final TechRepository techRepository;

    @Autowired
    public TechService(TechRepository techRepository) {
        this.techRepository = techRepository;
    }

    public List<Tech> getAllTechs() {
        return this.techRepository.findAll();
    }

}
