package sonmt.banmaytinh.pac.model.dienthoai;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import lombok.Data;

@Entity
@Table(name = "dienthoaihinhanh")
@Data
public class Dienthoaihinhanh {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "stt")
	private int stt;
	
	@Column(name = "madienthoai",length = 25,nullable = false)
	private String madienthoai;
	
	@Column(name = "hinhanh",length = 255,nullable = true)
	private String hinhanh;
	
}
