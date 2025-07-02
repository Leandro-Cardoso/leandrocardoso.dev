package dev.leandrocardoso.portfolio.service;

import dev.leandrocardoso.portfolio.model.WorkExperience;
import dev.leandrocardoso.portfolio.repository.WorkExperienceRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class WorkExperienceService {

    private final WorkExperienceRepository workExperienceRepository;

    @Autowired
    public WorkExperienceService(WorkExperienceRepository workExperienceRepository) {
        this.workExperienceRepository = workExperienceRepository;
    }

    public List<WorkExperience> getAllWorkExperiences() {
        return this.workExperienceRepository.findAll();
    }

}
