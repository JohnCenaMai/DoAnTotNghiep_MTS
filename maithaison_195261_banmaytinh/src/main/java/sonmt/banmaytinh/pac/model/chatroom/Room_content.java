package sonmt.banmaytinh.pac.model.chatroom;

import java.util.Date;

import lombok.Data;

@Data
public class Room_content {

	private int room_id;
	private String noidung;
	private Date ngaygui;
	private int vaitro;
	
	public Room_content(int room_id, String noidung, Date ngaygui, int vaitro) {
		super();
		this.room_id = room_id;
		this.noidung = noidung;
		this.vaitro = vaitro;
		this.ngaygui = ngaygui;
	}
	
}
