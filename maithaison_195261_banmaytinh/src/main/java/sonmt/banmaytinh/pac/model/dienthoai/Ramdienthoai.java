package sonmt.banmaytinh.pac.model.dienthoai;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import lombok.Data;

@Entity
@Table(name = "ramdienthoai")
@Data
public class Ramdienthoai {

	@Id
	@Column(name = "maram",length = 15)
	private String maram;
	
	@Column(name = "dungluongram")
	private byte dungluongram;
	
	@Column(name = "loairam",length = 15,nullable = true)
	private String loairam;
	
}
