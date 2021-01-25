package sonmt.banmaytinh.pac.repository.chatroom;

import java.util.Date;
import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import sonmt.banmaytinh.pac.model.chatroom.Chat;

@Repository
public interface ChatRepository extends JpaRepository<Chat, Long> {

	@Query(value = "select * from chat where room_id = ?1 order by ngaygui asc",nativeQuery = true)
	List<Chat> getAllNoidung(int makh);
	
	@Modifying
	@Transactional
	@Query(value = "insert into chat(room_id,from_makh,noidung,ngaygui,read_or_not_read) values(?1,?2,?3,?4,?5)",nativeQuery = true)
	void setChat(int room_id,int from_makh,String noidung,Date ngaygui,boolean readOrNotRead);
	
	@Query(value = "SELECT * from chat WHERE read_or_not_read = 0 GROUP BY from_makh",nativeQuery = true)
	List<Chat> getChatsNotRead();
	
	@Modifying
	@Transactional
	@Query(value = "UPDATE chat\r\n" + 
			"SET read_or_not_read = 1\r\n" + 
			"WHERE room_id = ?1",nativeQuery = true)
	void UpdateRead(int room_id);
	
	
}
