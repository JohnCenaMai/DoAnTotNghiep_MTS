package sonmt.banmaytinh.pac.repository.chatroom;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import sonmt.banmaytinh.pac.model.chatroom.Room;

@Repository
public interface RoomRepository extends JpaRepository<Room, Long> {

	@Query(value = "select room_id from room where room_id = ?1",nativeQuery = true)
	int getIdRoom(int makh);
	
}
