//package tw.listener;
//
//import java.util.Calendar;
//import java.util.Date;
//import javax.servlet.annotation.WebListener;
//import javax.servlet.http.HttpSessionEvent;
//import javax.servlet.http.HttpSessionListener;
//
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.stereotype.Component;
//
//import tw.member.model.OnlineUserCounts;
//import tw.member.model.OnlineUserCountsService;
//
//@WebListener
//@Component
//public class SessionListener implements HttpSessionListener {
//
//	@Autowired
//	OnlineUserCountsService onlineUserCountsService;
//
//	@Override
//	public void sessionCreated(HttpSessionEvent event) {
////		event.getSession().setMaxInactiveInterval(5);
//		System.out.println("SessionListener111111111");
//		
//		// 取得現在時間，並把分秒毫秒設為0
//		Calendar calendar = Calendar.getInstance();
//		calendar.set(Calendar.MINUTE, 0);
//		calendar.set(Calendar.SECOND, 0);
//		calendar.set(Calendar.MILLISECOND, 0);
//		int hour = calendar.get(Calendar.HOUR_OF_DAY);
//		Date date = calendar.getTime();
//
//		// 從資料庫抓之前使否有這段時間資料，用stream的filter方法過濾
//		OnlineUserCounts ouc = onlineUserCountsService.getAllUserCounts().stream()
//				.filter(count -> count.getUseDate().getTime() == date.getTime() && count.getHour() == hour).findFirst()
//				.orElse(null);
//
//		// 如果資料庫內還沒有這個時段，新增新的
//		if (ouc == null) {
//			ouc = new OnlineUserCounts();
//			ouc.setHour(hour);
//			ouc.setUseDate(date);
//			ouc.setUserCount(1);
//			ouc.setMaxUserCount(1);
//		} else {
//			// 如果資料庫內已經有了，count+1
//			if (ouc.getMaxUserCount() <= ouc.getUserCount() + 1) {
//				ouc.setMaxUserCount(ouc.getUserCount() + 1);
//			}
//			ouc.setUserCount(ouc.getUserCount() + 1);
//		}
//		onlineUserCountsService.createUserCount(ouc);
//	}
//	
//	
//	@Override
//	public void sessionDestroyed(HttpSessionEvent event) {
//	   System.out.println("11111111111");
//	   System.out.println("11111111111");
//	   System.out.println("11111111111");
//	   System.out.println("11111111111");
//	}
//}
