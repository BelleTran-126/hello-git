package fa.training.entities;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.OneToMany;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@NoArgsConstructor
@Entity
public class ThietBi {
	@Id
	private String maThietBi;
	@Column(name = "tenThietBi", columnDefinition = "NVARCHAR(255)")
	private String tenThietBi;
	@Column(name = "trangThai", columnDefinition = "NVARCHAR(255)")
	private String trangThai;
	@OneToMany(mappedBy = "thietBi", cascade = CascadeType.ALL)
	private List<ChiTietSuCo> chiTietSuCos;
}
