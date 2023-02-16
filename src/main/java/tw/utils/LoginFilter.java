//package tw.utils;
//
//import javax.servlet.FilterChain;
//import javax.servlet.ServletException;
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;
//
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.security.core.Authentication;
//import org.springframework.security.core.context.SecurityContext;
//import org.springframework.security.core.context.SecurityContextHolder;
//import org.springframework.stereotype.Component;
//import org.springframework.web.filter.OncePerRequestFilter;
//
//import tw.member.model.Member;
//import tw.member.model.MemberService;
//
//import java.io.IOException;
//import java.sql.Timestamp;
//import java.util.Date;
//
//@Component
//public class LoginFilter extends OncePerRequestFilter {
//	
//	@Autowired
//	MemberService mService;
//
//	@Override
//	protected void doFilterInternal(HttpServletRequest request, HttpServletResponse response, FilterChain filterChain)
//			throws ServletException, IOException {
//		SecurityContext securityContext = SecurityContextHolder.getContext();
//		Authentication authentication = securityContext.getAuthentication();
//		// 如果!=anonymous 代表有登入成功
////		System.out.println("登入頁面");
//		if (authentication!= null) {
//			Member user = mService.findByMemberId(authentication.getName());
//			Date date = new Date();
//			user.setLastLogin(new Timestamp(date.getTime()));
//			mService.save(user);
//		}
//		filterChain.doFilter(request, response);
//	}
//
//}
