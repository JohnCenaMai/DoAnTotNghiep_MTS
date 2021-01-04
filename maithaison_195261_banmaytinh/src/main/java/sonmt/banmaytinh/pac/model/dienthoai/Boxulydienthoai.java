package sonmt.banmaytinh.pac.model.dienthoai;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import lombok.Data;

@Entity
@Table(name = "boxulydienthoai")
@Data
public class Boxulydienthoai {

	@Id
	@Column(name = "macpu",length = 15)
	private String macpu;
	
	@Column(name = "chitietcpu",length = 60,nullable = true)
	private String chitietcpu;
	
	@Column(name = "loai",length = 15,nullable = true)
	private String loai;
	
	@Column(name = "sonhancpu",length = 5)
	private String sonhancpu;
	
	@Column(name = "tocdotoida",length = 5)
	private String tocdotoida;
	
	@Column(name = "phienban",length = 10,nullable = true)
	private String phienban;
	
}
