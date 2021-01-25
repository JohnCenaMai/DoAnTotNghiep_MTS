package sonmt.banmaytinh.pac.controller;

import static java.lang.String.format;

import java.util.Date;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.messaging.handler.annotation.DestinationVariable;
import org.springframework.messaging.handler.annotation.MessageMapping;
import org.springframework.messaging.handler.annotation.Payload;
import org.springframework.messaging.simp.SimpMessageHeaderAccessor;
import org.springframework.messaging.simp.SimpMessageSendingOperations;
import org.springframework.stereotype.Controller;

import sonmt.banmaytinh.pac.event.WebSocketEventListener;
import sonmt.banmaytinh.pac.model.chatroom.ChatMessage;
import sonmt.banmaytinh.pac.model.chatroom.ChatMessage.MessageType;
import sonmt.banmaytinh.pac.repository.KhachHang_VaiTroRepository;
import sonmt.banmaytinh.pac.repository.chatroom.ChatRepository;

@Controller
public class ChatController {

	private static final Logger logger = LoggerFactory.getLogger(WebSocketEventListener.class);

	@Autowired
	private SimpMessageSendingOperations messagingTemplate;
	
	@Autowired 
	private ChatRepository chatRepository;

	@Autowired
	private KhachHang_VaiTroRepository khachHang_VaiTroRepository;
	
	@MessageMapping("/chat/{roomId}/sendMessage")
	public void sendMessage(@DestinationVariable String roomId, @Payload ChatMessage chatMessage) {
		
		Date date = new Date();
		
		//kiem tra vai tro
		int mavt = khachHang_VaiTroRepository.getMaVaiTro(Integer.parseInt(chatMessage.getSender()));
		//neu la quan tri vien
		if(mavt == 2)
		{
			chatRepository.UpdateRead(Integer.parseInt(roomId));
			chatRepository.setChat(Integer.parseInt(roomId), Integer.parseInt(chatMessage.getSender()), chatMessage.getContent(), date, true);
		}
		else {
			chatRepository.setChat(Integer.parseInt(roomId), Integer.parseInt(chatMessage.getSender()), chatMessage.getContent(), date, false);
		}
		
		messagingTemplate.convertAndSend(format("/room/%s", roomId), chatMessage);
	}

	@MessageMapping("/chat/{roomId}/addUser")
	public void addUser(@DestinationVariable String roomId, @Payload ChatMessage chatMessage,
	    SimpMessageHeaderAccessor headerAccessor) {
		  
	    String currentRoomId = (String) headerAccessor.getSessionAttributes().put("room_id", roomId);
	    //System.out.println(currentRoomId);
	    
	    if (currentRoomId != null) {
	    	ChatMessage leaveMessage = new ChatMessage();
	    	leaveMessage.setType(MessageType.LEAVE);
	    	leaveMessage.setSender(chatMessage.getSender());
	    	messagingTemplate.convertAndSend(format("/room/%s", currentRoomId), leaveMessage);
	    }
	    
	    headerAccessor.getSessionAttributes().put("username", chatMessage.getSender());
	    messagingTemplate.convertAndSend(format("/room/%s", roomId), chatMessage);
	    
	}	
	
}
