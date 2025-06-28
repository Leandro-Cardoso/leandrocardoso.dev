package dev.leandrocardoso.portfolio.service;

import dev.leandrocardoso.portfolio.model.Certification;
import dev.leandrocardoso.portfolio.repository.CertificationRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CertificationService {

    private final CertificationRepository certificationRepository;

    @Autowired
    public CertificationService(CertificationRepository certificationRepository) {
        this.certificationRepository = certificationRepository;
    }

    public List<Certification> getAllCertifications() {
        return this.certificationRepository.findAll();
    }

}
