package sonmt.banmaytinh.pac.model.dienthoai;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import lombok.Data;

@Entity
@Table(name = "pindienthoai")
@Data
public class Pindienthoai {

	@Id
	@Column(name = "mapin",length = 25)
	private String mapin;
	
	@Column(name = "dungluongpin")
	private int dungluongpin;
	
	@Column(name = "loaipin",length = 20,nullable = true)
	private String loaipin;
	
	@Column(name = "congnghepin",length = 40,nullable = true)
	private String congnghepin;
	
}
