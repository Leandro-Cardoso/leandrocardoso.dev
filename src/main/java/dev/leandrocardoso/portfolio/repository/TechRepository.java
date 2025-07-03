package dev.leandrocardoso.portfolio.repository;

import dev.leandrocardoso.portfolio.model.Tech;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.UUID;

@Repository
public interface TechRepository extends JpaRepository<Tech, UUID> {
}
