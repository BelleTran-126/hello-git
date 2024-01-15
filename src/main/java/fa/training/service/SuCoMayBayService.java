package fa.training.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import fa.training.dto.SuCoDto;
import fa.training.entities.ChiTietSuCo;
import fa.training.entities.ChiTietSuCoId;
import fa.training.entities.SuCoMayBay;
import fa.training.repository.ChiTietSuCoRepository;
import fa.training.repository.SuCoMayBayRepository;

/**
 * @author TranKhanhLy
 *
 */
@Service
public class SuCoMayBayService {
	@Autowired
	private SuCoMayBayRepository repository;
	@Autowired
	private LoiKyThuatService kyThuatService;
	@Autowired
	private ChiTietSuCoRepository chiTietSuCoRepository ;
	
	public boolean existsById(String id) {
		return repository.existsById(id);
	}
	
	@Transactional
	public void handleAdd(SuCoDto dto) {
		SuCoMayBay suCo = new SuCoMayBay();
		suCo.setMaSuCo(dto.getMaSuCo());
		suCo.setSoHieuMayBay(dto.getSoHieuMayBay());
		suCo.setNgayGioSuCo(dto.getNgayGioSuCo());
		suCo.setLoiKyThuat(kyThuatService.findById(dto.getMaLoiKT()));
		suCo.setMucDo(dto.getMucDo());
		suCo.setNgayGioKhacPhuc(dto.getNgayGioKhacPhuc());
		suCo.setTrangThai(dto.getTrangThai());
		repository.save(suCo);
		if (dto.getMaThietBi() != null && !dto.getMaThietBi().isEmpty()) {
			ChiTietSuCoId id = new ChiTietSuCoId();
			id.setMaSuCo(dto.getMaSuCo());
			id.setMaThietBi(dto.getMaThietBi());
			
			ChiTietSuCo chiTiet = new ChiTietSuCo();
			chiTiet.setId(id);
			chiTiet.setSoLuong(dto.getSoLuong());
			chiTietSuCoRepository.save(chiTiet);
		}
	}
	
	
}
