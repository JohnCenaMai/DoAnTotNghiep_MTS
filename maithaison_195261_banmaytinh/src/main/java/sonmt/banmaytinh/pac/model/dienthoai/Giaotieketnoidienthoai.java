package sonmt.banmaytinh.pac.model.dienthoai;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import lombok.Data;

@Entity
@Table(name = "giaotieketnoidienthoai")
@Data
public class Giaotieketnoidienthoai {

	@Id
	@Column(name = "giaotieketnoidienthoai",length = 25)
	private String giaotieketnoidienthoai;
	
	@Column(name = "sokhesim",length = 1)
	private String sokhesim;
	
	@Column(name = "loaisim",length = 20,nullable = true)
	private String loaisim;
	
	@Column(name = "hotro4g",length = 5,nullable = true)
	private String hotro4g;
	
	@Column(name = "hotro5g",length = 5,nullable = true)
	private String hotro5g;
	
	@Column(name = "wifi",length = 15,nullable = true)
	private String wifi;
	
	@Column(name = "bluetooth",length = 15,nullable = true)
	private String bluetooth;
	
	@Column(name = "congsac",length = 15,nullable = true)
	private String congsac;
	
	@Column(name = "jack",length = 15,nullable = true)
	private String jack;
	
}
