package fa.training.entities;

import java.time.LocalDateTime;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;

import org.springframework.format.annotation.DateTimeFormat;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Setter
@Getter
@NoArgsConstructor
@Entity
public class SuCoMayBay {
	@Id
	private String maSuCo;
	private String soHieuMayBay;
	@DateTimeFormat(pattern = "yyyy-MM-dd'T'HH:mm")
	private LocalDateTime ngayGioSuCo;
	private String mucDo;
	@DateTimeFormat(pattern = "yyyy-MM-dd'T'HH:mm")
	private LocalDateTime ngayGioKhacPhuc;
	private String trangThai;
	@ManyToOne
	@JoinColumn(name = "maLoiKT", insertable = true, updatable = false)
	private LoiKyThuat loiKyThuat;
	@OneToMany(mappedBy = "suCoMayBay", cascade = CascadeType.ALL)
	private List<ChiTietSuCo> chiTietSuCos;

}
