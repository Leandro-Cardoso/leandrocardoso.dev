package dev.leandrocardoso.portfolio.repository;

import dev.leandrocardoso.portfolio.model.Certification;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.UUID;

@Repository
public interface CertificationRepository extends JpaRepository<Certification, UUID> {
}
