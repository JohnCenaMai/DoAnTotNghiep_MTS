package sonmt.banmaytinh.pac.model.dienthoai;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import lombok.Data;

@Entity
@Table(name = "manhinhdienthoai")
@Data
public class Manhinhdienthoai {

	@Id
	@Column(name = "mamanhinh",length = 15)
	private String mamanhinh;
	
	@Column(name = "congnghemanhinh",length = 20,nullable = true)
	private String congnghemanhinh;
	
	@Column(name = "kichthuoc",length = 5,nullable = true)
	private String kichthuoc;
	
	@Column(name = "chuanmanhinh",length = 20,nullable = true)
	private String chuanmanhinh;
	
	@Column(name = "dophangiai",length = 15,nullable = true)
	private String dophangiai;
	
	@Column(name = "maumanhinh",length = 15,nullable = true)
	private String maumanhinh;
	
	@Column(name = "chatlieumatkinh",length = 20,nullable = true)
	private String chatlieumatkinh;
	
}
