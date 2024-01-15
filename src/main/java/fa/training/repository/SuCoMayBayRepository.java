package fa.training.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import fa.training.dto.SuCoDto;
import fa.training.entities.SuCoMayBay;

public interface SuCoMayBayRepository extends JpaRepository<SuCoMayBay, String> {
	/*
	 * @Query List<SuCoDto> getAllSuCoDto();
	 */
}
