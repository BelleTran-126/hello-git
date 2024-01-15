package fa.training.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import fa.training.entities.ThietBi;
import fa.training.repository.ThietBiRepository;

@Service
public class ThietBiService {
	@Autowired
	private ThietBiRepository repository;
	
	public List<ThietBi> findAll() {
		return repository.findAll();
	}
}
