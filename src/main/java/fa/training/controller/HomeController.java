package fa.training.controller;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import fa.training.dto.SuCoDto;
import fa.training.entities.LoiKyThuat;
import fa.training.entities.ThietBi;
import fa.training.service.ChiTietSuCoService;
import fa.training.service.LoiKyThuatService;
import fa.training.service.SuCoMayBayService;
import fa.training.service.ThietBiService;

@Controller
@RequestMapping()
public class HomeController {
	@Autowired
	private LoiKyThuatService kyThuatService;
	@Autowired
	private ThietBiService thietBiService;
	@Autowired
	private SuCoMayBayService mayBayService;
	@Autowired
	private ChiTietSuCoService chiTietSuCoService;
	
	
	@ModelAttribute("loiKTList")
	private List<LoiKyThuat> getLoiKT() {
		return kyThuatService.findAll();
	}
	
	@ModelAttribute("thietBiList")
	private List<ThietBi> getThietBi() {
		return thietBiService.findAll();
	}
	
	@GetMapping(value = {"/","/home"})
	public String home() {
		return "home";
	}
	
	@GetMapping("/new")
	public String resolveSuCoView(Model model) {
		model.addAttribute("suCoDto", new SuCoDto());
		return "new";
	}
	
	@PostMapping("/add")
	public String addSuCo(@ModelAttribute("suCoDto")@Valid SuCoDto dto,
			BindingResult bindingResult,
			RedirectAttributes attributes) {
		if (mayBayService.existsById(dto.getMaSuCo())) {
			bindingResult.rejectValue("maSuCo", "existId.maSuCo", "Mã sự cố đã tồn tại!");
		}
		if (!kyThuatService.existsById(dto.getMaLoiKT())) {
			bindingResult.rejectValue("maLoiKT", "nonexist.maLoiKT", "Lỗi kỹ thuật máy bay không tồn tại trong hệ thống!");
		}
		if (bindingResult.hasErrors()) {
			return "new";
		}
		mayBayService.handleAdd(dto);
		return "redirect:/list";
	}
	
	@GetMapping("/list")
	public String showList(Model model) {
		model.addAttribute("detailList", chiTietSuCoService.findAll());
		return "list";
	}
}
