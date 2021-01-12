package sonmt.banmaytinh.pac.model.chatroom;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import lombok.Data;

@Entity
@Table(name = "chat")
@Data
public class Chat {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id")
	private int id;
	
	@Column(name = "room_id")
	private int room_id;
	
	@Column(name = "from_makh")
	private int from_makh;
	
	@Column(name = "noidung",length = 50)
	private String noidung;
	
	@Column(name = "ngaygui")
	private Date ngaygui;
	
}
