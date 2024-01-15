package fa.training.entities;

import java.io.Serializable;

import javax.persistence.Embeddable;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@Embeddable
public class ChiTietSuCoId implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String maSuCo;
	private String maThietBi;
}
