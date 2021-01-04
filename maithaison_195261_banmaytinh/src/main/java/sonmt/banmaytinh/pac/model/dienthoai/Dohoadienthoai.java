package sonmt.banmaytinh.pac.model.dienthoai;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import lombok.Data;

@Entity
@Table(name = "dohoadienthoai")
@Data
public class Dohoadienthoai {

	@Id
	@Column(name = "madohoa",length = 15)
	private String madohoa;
	
	@Column(name = "tengpu",length = 15,nullable = true)
	private String tengpu;
	
	@Column(name = "sonhangpu",length = 2)
	private String sonhangpu;
	
}
