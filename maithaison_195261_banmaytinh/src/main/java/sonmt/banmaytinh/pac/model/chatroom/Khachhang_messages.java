package sonmt.banmaytinh.pac.model.chatroom;

import java.util.Date;

import lombok.Data;

@Data
public class Khachhang_messages {

	private int makh;
	private String tenkh;
	private String noidung;
	private Date ngaygui;
	
	public Khachhang_messages(int makh, String tenkh, String noidung, Date ngaygui) {
		super();
		this.makh = makh;
		this.tenkh = tenkh;
		this.noidung = noidung;
		this.ngaygui = ngaygui;
	}
	
}
