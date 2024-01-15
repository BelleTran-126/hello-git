package fa.training.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import fa.training.entities.ChiTietSuCo;
import fa.training.entities.ChiTietSuCoId;

public interface ChiTietSuCoRepository  extends JpaRepository<ChiTietSuCo, ChiTietSuCoId>{

}
