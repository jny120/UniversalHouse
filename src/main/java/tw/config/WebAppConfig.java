package tw.config;

import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.EnableAspectJAutoProxy;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.ViewControllerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

@Configuration
@EnableAspectJAutoProxy
public class WebAppConfig implements WebMvcConfigurer {

	@Override
	public void addViewControllers(ViewControllerRegistry registry) {
		registry.addViewController("/login").setViewName("/member/login/login");
		registry.addViewController("/").setViewName("/index");
		registry.addViewController("/regist").setViewName("/member/regist/regist");
		registry.addViewController("/admin/showAllMember").setViewName("/member/showMember/showAll");
		registry.addViewController("/users/showMemberInfo").setViewName("/member/showMember/showMemberInfo");
		registry.addViewController("/admin/chart").setViewName("/member/chart/memberChart");
		registry.addViewController("/users/chatBox").setViewName("/member/chatBox/chatBox");
		registry.addViewController("/users/memberCenter").setViewName("/member/memberCenter");
		registry.addViewController("/testshow").setViewName("/member/showMember/pageShowAll");

//		registry.addViewController("/login/welcome").setViewName("welcome");
//		registry.addViewController("/logout").setViewName("logoutResult");
//		registry.addViewController("/logout/page").setViewName("logout");
	}

	@Override
	public void addResourceHandlers(ResourceHandlerRegistry registry) {
//		registry.addResourceHandler("/css/**").addResourceLocations("/WEB-INF/resources/css/");
	}
	
}
