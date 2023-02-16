package tw.utils;

import java.util.HashMap;
import java.util.Map;

import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.annotation.After;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Pointcut;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.socket.WebSocketSession;

import tw.member.model.ChatHistoryService;
import tw.member.model.MemberService;

@Aspect
@Component
public class ReadChatRecordAspect {
	@Autowired
	private MemberService mService;
    
	//切面設定MemberService.updateLastLogin()時攔截
   @Pointcut("execution(* tw.member.model.MemberService.updateLastLogin(..))")
	private void defaultSuccessUrlPointcut() {}
	

	@After("defaultSuccessUrlPointcut()")
	public void afterDefaultSuccessUrl(JoinPoint joinPoint) {
	    // 在 defaultSuccessUrl 方法调用之后，执行自定义的操作
	    System.out.println(joinPoint.getSignature().getName());
	    System.out.println("1111111111111111111111111111111111111111111");
	    System.out.println("1111111111111111111111111111111111111111111");
	    System.out.println("1111111111111111111111111111111111111111111");
	    System.out.println("1111111111111111111111111111111111111111111");
	    // 通过 WebSocket 向其他用户传递登录后的在线状态
	   
	}
   
   
}
