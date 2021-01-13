package sonmt.banmaytinh.pac.repository.chatroom;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import sonmt.banmaytinh.pac.model.chatroom.Room;

@Repository
public interface RoomRepository extends JpaRepository<Room, Long> {

}
