package fa.training.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import fa.training.entities.LoiKyThuat;
import fa.training.repository.LoiKyThuatRepository;

@Service
public class LoiKyThuatService {
	@Autowired
	private LoiKyThuatRepository repository;
	
	public List<LoiKyThuat> findAll() {
		return repository.findAll();
	}
	
	public boolean existsById(String id) {
		return repository.existsById(id);
	}

	public LoiKyThuat findById(String id) {
		return repository.findById(id).orElse(null);
	}
}
