package sonmt.banmaytinh.pac.repository.chatroom;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import sonmt.banmaytinh.pac.model.chatroom.Chat;

@Repository
public interface ChatRepository extends JpaRepository<Chat, Long> {

}
