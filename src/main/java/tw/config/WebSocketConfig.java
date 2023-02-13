package tw.config;

import java.util.concurrent.ConcurrentHashMap;

import org.springframework.context.annotation.Configuration;
import org.springframework.messaging.simp.config.MessageBrokerRegistry;
import org.springframework.web.socket.WebSocketSession;
import org.springframework.web.socket.config.annotation.EnableWebSocketMessageBroker;
import org.springframework.web.socket.config.annotation.StompEndpointRegistry;
import org.springframework.web.socket.config.annotation.WebSocketMessageBrokerConfigurer;

@Configuration
@EnableWebSocketMessageBroker
public class WebSocketConfig implements WebSocketMessageBrokerConfigurer {
  @Override
  public void registerStompEndpoints(StompEndpointRegistry registry) {
    registry.addEndpoint("/ws").withSockJS();
  }
  @Override
  public void configureMessageBroker(MessageBrokerRegistry registry) {
	  //表明在topic、queue、users这三个域上可以向客户端发消息。
      registry.enableSimpleBroker("/topic","/queue","/users");
      //客户端向服务端发起请求时，需要以/app为前缀。
      registry.setApplicationDestinationPrefixes("/app");
      //给指定用户发送一对一的消息前缀是/users/。
      registry.setUserDestinationPrefix("/users/");
  }
}

