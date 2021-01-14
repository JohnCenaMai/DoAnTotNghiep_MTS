package sonmt.banmaytinh.pac.repository.chatroom;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import sonmt.banmaytinh.pac.model.chatroom.Chat;

@Repository
public interface ChatRepository extends JpaRepository<Chat, Long> {

	@Query(value = "select * from chat where from_makh = ?1 order by ngaygui asc",nativeQuery = true)
	List<Chat> getAllNoidung(int makh);
	
}
