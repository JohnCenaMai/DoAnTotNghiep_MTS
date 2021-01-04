package sonmt.banmaytinh.pac.model.dienthoai;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import lombok.Data;

@Entity
@Table(name = "dienthoai")
@Data
public class Dienthoai {

	@Id
	@Column(name = "madienthoai",length = 25)
	private String madienthoai;
	
	@Column(name = "tensanpham",length = 60,nullable = false)
	private String tensanpham;
	
	@Column(name = "xuatxu",length = 20,nullable = false)
	private String xuatxu;
	
	@Column(name = "thoigianbaohanh")
	private int thoigianbaohanh;
	
	@Column(name = "chieurong")
	private float chieurong;
	
	@Column(name = "chieucao")
	private float chieucao;
	
	@Column(name = "chieusau")
	private float chieusau;
	
	@Column(name = "namramat")
	private String namramat;
	
	@Column(name = "trongluong")
	private float trongluong;
	
	@Column(name = "soluong")
	private int soluong;
	
	@Column(name = "gia")
	private int gia;
	
	@Column(name = "hinhanh",length = 255,nullable = true)
	private String hinhanh;
	
}
