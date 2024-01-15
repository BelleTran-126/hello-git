package fa.training.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import fa.training.entities.ChiTietSuCo;
import fa.training.repository.ChiTietSuCoRepository;

@Service
public class ChiTietSuCoService {
	@Autowired
	private ChiTietSuCoRepository repository;
	
	public List<ChiTietSuCo> findAll() {
		return repository.findAll();
	}
}
