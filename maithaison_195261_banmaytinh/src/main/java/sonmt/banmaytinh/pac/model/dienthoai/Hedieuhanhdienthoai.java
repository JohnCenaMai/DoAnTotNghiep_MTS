package sonmt.banmaytinh.pac.model.dienthoai;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import lombok.Data;

@Entity
@Table(name = "hedieuhanhdienthoai")
@Data
public class Hedieuhanhdienthoai {

	@Id
	@Column(name = "phienbanhedieuhanh",length = 15)
	private String phienbanhedieuhanh;
	
	@Column(name = "kieu",length = 2,nullable = false)
	private String kieu;
	
}
