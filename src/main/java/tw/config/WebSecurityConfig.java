package tw.config;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.builders.WebSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.web.authentication.AuthenticationSuccessHandler;
import tw.member.model.AuthUserDetialService;
import tw.member.model.Member;
//import tw.utils.LoginFilter;
import tw.member.model.MemberService;

@EnableWebSecurity
public class WebSecurityConfig extends WebSecurityConfigurerAdapter {

	@Autowired
	private AuthUserDetialService authService;

	@Autowired
	private MemberService mService;

	@Override
	protected void configure(AuthenticationManagerBuilder auth) throws Exception {
		auth.userDetailsService(authService).passwordEncoder(new BCryptPasswordEncoder());

	}

	@Override
	public void configure(WebSecurity web) throws Exception {
	}

	//  配置 URL 访问权限
	@Override
	protected void configure(HttpSecurity http ) throws Exception {
		http.formLogin().loginPage("/login").successHandler(new AuthenticationSuccessHandler() {
			@Override
			public void onAuthenticationSuccess(HttpServletRequest request, HttpServletResponse response,
					org.springframework.security.core.Authentication authentication)
					throws IOException, ServletException {
				
				// 如果!=anonymous 代表有登入成功
				if (authentication!= null) {
					//登入後更新最新的登入時間
					mService.updateLastLogin(authentication.getName());
				}
					response.sendRedirect("/");
				}
			}).failureUrl("/login?error=true").and().authorizeRequests().antMatchers("/login", "/register", "/").permitAll()
				.antMatchers("/admin/**").hasRole("ADMIN").antMatchers("/users/**").hasAnyRole("ADMIN", "USER")
				.anyRequest().permitAll().and().rememberMe().tokenValiditySeconds(86400).key("rm").and().csrf()
				.disable();
	}

	@Bean
	@Override
	public AuthenticationManager authenticationManagerBean() throws Exception {
		return super.authenticationManagerBean();
	}

	@Bean
	@Override
	protected UserDetailsService userDetailsService() {
		return super.userDetailsService();
	}

//	@Bean
//    public FilterRegistrationBean<LoginFilter> myFilterBean() {
//        FilterRegistrationBean<LoginFilter> bean = new FilterRegistrationBean<>();
//        bean.setFilter(myFilter);
//        bean.addUrlPatterns("/login");
//        return bean;
//    }
//
//	@Bean
//	public LoginFilter myFilter() {
//		return new LoginFilter();
//	}

}
