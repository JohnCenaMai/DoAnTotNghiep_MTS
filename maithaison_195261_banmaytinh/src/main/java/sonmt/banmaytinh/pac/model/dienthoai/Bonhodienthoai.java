package sonmt.banmaytinh.pac.model.dienthoai;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import lombok.Data;

@Entity
@Table(name = "bonhodienthoai")
@Data
public class Bonhodienthoai {

	@Id
	@Column(name = "mabonho",length = 25)
	private String mabonho;
	
	@Column(name = "dungluongbonho",length = 5)
	private String dungluongbonho;
	
	@Column(name = "thenhongoai",length = 5,nullable = true)
	private String thenhongoai;
	
	@Column(name = "hotrothenhotoida",length = 5,nullable = true)
	private String hotrothenhotoida;
	
}
