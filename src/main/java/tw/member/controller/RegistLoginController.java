package tw.member.controller;

import java.sql.Timestamp;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContext;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import tw.member.model.Member;
import tw.member.model.MemberService;

@Controller
@SessionAttributes(names = { "memberId", "memberPk", "rm", "password", "LoginOK" })
public class RegistLoginController {
	@Autowired
	private MemberService service;

//	@PostMapping("/login.do")
//	private void login() {
//		System.out.println("loginOK");
//	}

	@GetMapping("/getCurrentUser.do")
	@ResponseBody
	private Member getCurrentUser() {
		SecurityContext securityContext = SecurityContextHolder.getContext();
		Authentication authentication = securityContext.getAuthentication();
		String userName = null;
		if (authentication.getName() != "anonymousUser") {
			UserDetails userDetails = (UserDetails) authentication.getPrincipal();
			userName = userDetails.getUsername();
			return service.findByMemberId(userName);
		}
		return null;
	}

	@RequestMapping(path = "/checklogin.do", method = RequestMethod.POST)
	private String login(@RequestParam("memberId") String memberId, @RequestParam("password") String password,
			@RequestParam(name = "rememberMe", required = false) Boolean rm, Model m) {

		// 將errorMsgMap放入request物件內，識別字串為 "ErrorMsgKey"
		Map<String, String> errorMsgMap = new HashMap<String, String>();
		m.addAttribute("ErrorMsgKey", errorMsgMap);

		// 如果 userId 欄位為空白，放一個錯誤訊息到 errorMsgMap 之內
		if (memberId == null || memberId.trim().length() == 0) {
			errorMsgMap.put("memberIdEmptyError", "帳號欄必須輸入");
		}
		// 如果 password 欄位為空白，放一個錯誤訊息到 errorMsgMap 之內
		if (password == null || password.trim().length() == 0) {
			errorMsgMap.put("PasswordEmptyError", "密碼欄必須輸入");
		}

		// 如果 errorMsgMap 不是空的，表示有錯誤，交棒給login.jsp
		if (!errorMsgMap.isEmpty()) {
			return "/member/login/login";
		}

		// 將密碼加密兩次，以便與存放在表格內的密碼比對
		Member mb = null;
		try {
			// 呼叫 loginService物件的 checkIDPassword()，傳入userid與password兩個參數
//			String encodePassword = GlobalService.encryptString(password);
			mb = service.findByMemberIdAndPassword(memberId, password);
			if (mb != null) {
				// OK, 登入成功, 將mb物件放入Session範圍內，識別字串為"LoginOK"
				m.addAttribute("LoginOK", mb);
				// 建立登出所需的LogoutBean物件
				Timestamp time = new Timestamp(new Date().getTime());
				mb.setLastLogin(time);
				service.update(mb);
				m.addAttribute("memberId", memberId);
				m.addAttribute("password", password);
				if (rm != null) {
					m.addAttribute("rm", rm);
				}
				m.addAttribute("memberPk", mb.getMemberPk());
			} else {
				// NG, 登入失敗, userid與密碼的組合錯誤，放相關的錯誤訊息到 errorMsgMap 之內

				errorMsgMap.put("LoginError", "該帳號不存在或密碼錯誤");
			}
		} catch (RuntimeException ex) {
			errorMsgMap.put("LoginError", ex.getMessage());
			ex.getStackTrace();
		}

		// 5.依照 Business Logic 運算結果來挑選適當的畫面
		// 如果 errorMsgMap 是空的，表示沒有任何錯誤，交棒給下一棒
		if (errorMsgMap.isEmpty()) {
			Timestamp time = new Timestamp(new Date().getTime());
			mb.setLastLogin(time);
			service.update(mb);
			return "index";
		} else {
			// 如果errorMsgMap不是空的，表示有錯誤，交棒給login.jsp
			return "/member/login/login";
		}
	}

	@RequestMapping(path = "/regist.do", method = RequestMethod.POST)
	private String regist(Model m, @RequestParam("memberId") String memberId, @RequestParam("name") String name,
			@RequestParam("password") String password, @RequestParam("email") String email,
			@RequestParam("gender") String gender) {

		Member member = new Member();

		if (!service.existsById(memberId)) {
			if (!memberId.equals("")) {
				member.setMemberId(memberId);
			}

			member.setName(name);
			String encodePwd = new BCryptPasswordEncoder().encode(password);
			member.setPassword(encodePwd);
			member.setEmail(email);
			member.setRegisterTime();
			member.setMemberId(memberId);
			member.setGender(gender);
			member.setVerification(0);
			member.setPermission(0);
			service.save(member);
			m.addAttribute("member", member);

			return "member/regist/registSuccess";

		} else {
			m.addAttribute("IdExist", "Regist Fail, This ID already exist");

			return "member/regist/regist";
		}
	}

}
