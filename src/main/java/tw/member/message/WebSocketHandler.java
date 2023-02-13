package tw.member.message;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import org.springframework.stereotype.Component;
import org.springframework.web.socket.TextMessage;
import org.springframework.web.socket.WebSocketSession;
import org.springframework.web.socket.handler.TextWebSocketHandler;

@Component
public class WebSocketHandler extends TextWebSocketHandler {

    private Map<String, WebSocketSession> sessions = new HashMap<>();

    @Override
    public void afterConnectionEstablished(WebSocketSession session) throws Exception {
        String userId = (String) session.getAttributes().get("userId");
        sessions.put(userId, session);
    }

    public void sendMessageToUser(String userId, TextMessage message) {
        WebSocketSession session = sessions.get(userId);
        if (session != null && session.isOpen()) {
            try {
                session.sendMessage(message);
                System.out.println("in sendMessageToUser");
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
    }

    @Override
    protected void handleTextMessage(WebSocketSession session, TextMessage message) throws Exception {
        String senderId = (String) session.getAttributes().get("userId");
        String receiverId = message.getPayload().split(":")[0];
        String msg = senderId + ": " + message.getPayload().split(":")[1];
        sendMessageToUser(receiverId, new TextMessage(msg));
    }
}