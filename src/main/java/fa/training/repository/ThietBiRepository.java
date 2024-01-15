package fa.training.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import fa.training.entities.ThietBi;

@Repository
public interface ThietBiRepository extends JpaRepository<ThietBi, String>{

}
