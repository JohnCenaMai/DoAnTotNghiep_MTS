package sonmt.banmaytinh.pac.model.chatroom;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import lombok.Data;

@Entity
@Table(name = "room")
@Data
public class Room {

	@Id
	@Column(name = "room_id")
	private int room_id;
	
	@Column(name = "ngaytao")
	private Date ngaytao;
	
}
