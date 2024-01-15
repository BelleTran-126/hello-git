package fa.training.dto;

import java.time.LocalDateTime;

import org.springframework.format.annotation.DateTimeFormat;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@NoArgsConstructor
public class SuCoDto {
	private String maSuCo;
	private String soHieuMayBay;
	@DateTimeFormat(pattern = "yyyy-MM-dd'T'HH:mm")
	private LocalDateTime ngayGioSuCo;
	private String mucDo;
	@DateTimeFormat(pattern = "yyyy-MM-dd'T'HH:mm")
	private LocalDateTime ngayGioKhacPhuc;
	private String trangThai;
	private String maLoiKT;
	private String tenLoiKT;
	private String maThietBi;
	private String tenThietBi;
	private int soLuong;
}
