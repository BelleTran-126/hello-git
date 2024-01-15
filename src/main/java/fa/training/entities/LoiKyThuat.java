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

@Setter
@Getter
@NoArgsConstructor
@Entity
public class LoiKyThuat {
	@Id
	private String maLoiKT;
	@Column(name = "tenLoiKT", columnDefinition = "NVARCHAR(255)")
	private String tenLoiKT;
	@Column(name = "moTa", columnDefinition = "NVARCHAR(255)")
	private String moTa;
	@OneToMany(mappedBy = "loiKyThuat", cascade = CascadeType.ALL)
	private List<SuCoMayBay> suCoMayBays;
}
