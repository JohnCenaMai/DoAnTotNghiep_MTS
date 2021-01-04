package sonmt.banmaytinh.pac.model.dienthoai;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import lombok.Data;

@Entity
@Table(name = "chatlieudienthoai")
@Data
public class Chatlieudienthoai {

	@Id
	@Column(name = "machatlieu",length = 25)
	private String machatlieu;
	
	@Column(name = "tenchatlieu",length = 30,nullable = true)
	private String tenchatlieu;
	
}
