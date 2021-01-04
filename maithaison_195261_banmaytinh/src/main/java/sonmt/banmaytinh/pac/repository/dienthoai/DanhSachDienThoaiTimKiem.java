package sonmt.banmaytinh.pac.repository.dienthoai;

public class DanhSachDienThoaiTimKiem {
	private String masanpham;
	private String tensanpham;
	private int gia;
	private String kichthuocmanhinh;
	private int dungluongpin;
	private String hinhanh;
	
	public DanhSachDienThoaiTimKiem(String masanpham, String tensanpham, int gia, String kichthuocmanhinh,
			int dungluongpin,String hinhanh) {
		super();
		this.masanpham = masanpham;
		this.tensanpham = tensanpham;
		this.gia = gia;
		this.kichthuocmanhinh = kichthuocmanhinh;
		this.dungluongpin = dungluongpin;
		this.hinhanh = hinhanh;
	}
	
	

	public String getHinhanh() {
		return hinhanh;
	}



	public void setHinhanh(String hinhanh) {
		this.hinhanh = hinhanh;
	}



	public String getMasanpham() {
		return masanpham;
	}

	public void setMasanpham(String masanpham) {
		this.masanpham = masanpham;
	}

	public String getTensanpham() {
		return tensanpham;
	}

	public void setTensanpham(String tensanpham) {
		this.tensanpham = tensanpham;
	}

	public int getGia() {
		return gia;
	}

	public void setGia(int gia) {
		this.gia = gia;
	}

	public String getKichthuocmanhinh() {
		return kichthuocmanhinh;
	}

	public void setKichthuocmanhinh(String kichthuocmanhinh) {
		this.kichthuocmanhinh = kichthuocmanhinh;
	}

	public int getDungluongpin() {
		return dungluongpin;
	}

	public void setDungluongpin(int dungluongpin) {
		this.dungluongpin = dungluongpin;
	}
	
}
