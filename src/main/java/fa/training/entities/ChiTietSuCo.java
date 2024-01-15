package fa.training.entities;

import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@NoArgsConstructor
@Entity
public class ChiTietSuCo {
	@EmbeddedId
	private ChiTietSuCoId id;
	@ManyToOne
	@JoinColumn(name = "maSuCo", insertable = false, updatable = false)
	private SuCoMayBay suCoMayBay;
	@ManyToOne
	@JoinColumn(name = "maThietBi", insertable = false, updatable = false)
	private ThietBi thietBi;
	private int soLuong;
}
