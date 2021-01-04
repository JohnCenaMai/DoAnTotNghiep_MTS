package sonmt.banmaytinh.pac.model.dienthoai;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import lombok.Data;

@Entity
@Table(name = "cameradienthoai")
@Data
public class Cameradienthoai {

	@Id
	@Column(name = "macamera",length = 25)
	private String macamera;
	
	@Column(name = "loaicamera",length = 25,nullable = true)
	private String loaicamera;
	
	@Column(name = "dophangiai",length = 10,nullable = true)
	private String dophangiai;
	
}
