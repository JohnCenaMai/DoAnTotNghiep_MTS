package sonmt.banmaytinh.pac.model;

import java.math.BigInteger;

import lombok.Data;

@Data
public class DemBinhLuanPhanHoi {

	private String masanpham;
	private BigInteger sobinhluan;
	private BigInteger sophanhoi;
	
	public DemBinhLuanPhanHoi(String masanpham, BigInteger sobinhluan, BigInteger sophanhoi) {
		super();
		this.masanpham = masanpham;
		this.sobinhluan = sobinhluan;
		this.sophanhoi = sophanhoi;
	}
	
}
