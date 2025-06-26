package dev.leandrocardoso.portfolio.service;

import dev.leandrocardoso.portfolio.model.AcademicQualification;
import dev.leandrocardoso.portfolio.repository.AcademicQualificationRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class AcademicQualificationService {

    private final AcademicQualificationRepository academicQualificationRepository;

    @Autowired
    public AcademicQualificationService(AcademicQualificationRepository academicQualificationRepository) {
        this.academicQualificationRepository = academicQualificationRepository;
    }

    public List<AcademicQualification> getAllAcademicQualifications() {
        return this.academicQualificationRepository.findAll();
    }

}
