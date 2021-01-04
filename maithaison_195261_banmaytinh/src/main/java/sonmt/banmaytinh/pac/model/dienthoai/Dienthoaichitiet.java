package sonmt.banmaytinh.pac.model.dienthoai;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import lombok.Data;

@Entity
@Table(name = "dienthoaichitiet")
@Data
public class Dienthoaichitiet {

	@Id
	@Column(name = "madienthoai",length = 25)
	private String madienthoai;
	
	@Column(name = "machatlieu",length = 25,nullable = false)
	private String machatlieu;
	
	@Column(name = "macpu",length = 15,nullable = false)
	private String macpu;
	
	@Column(name = "mamanhinh",length = 15,nullable = false)
	private String mamanhinh;
	
	@Column(name = "madohoa",length = 15,nullable = false)
	private String madohoa;
	
	@Column(name = "maram",length = 15,nullable = false)
	private String maram;
	
	@Column(name = "mabonho",length = 25,nullable = false)
	private String mabonho;
	
	@Column(name = "macamera",length = 25,nullable = false)
	private String macamera;
	
	@Column(name = "magiaotiep",length = 25,nullable = false)
	private String magiaotiep;
	
	@Column(name = "mapin",length = 25)
	private String mapin;
	
	@Column(name = "phienbanhedieuhanh",nullable = false)
	private String phienbanhedieuhanh;
	
}
