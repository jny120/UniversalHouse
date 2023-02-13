package tw.member.modifyMember.controller;

import java.io.IOException;
import java.sql.Blob;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;
import javax.sql.rowset.serial.SerialBlob;

import org.aspectj.weaver.ast.And;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.lang.Nullable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.multipart.MultipartFile;

import tw.member.model.Member;
import tw.member.model.MemberService;


@Controller
@SessionAttributes("LoginOK")
public class modifyMemberInfoServlet {
	
	@Autowired 
	private MemberService mService;

	@PostMapping("/modifyMemberInfo/modifyByMember.do/{memberId}")
	@ResponseBody
	private Member processRequest( @PathVariable("memberId") String memberId, @RequestParam("name") @Nullable String name,
			@RequestParam("email") String email,
			@RequestParam("birthday") @Nullable String birthday, @RequestParam("memberImage") @Nullable MultipartFile memberImage, 
			@RequestParam("location") @Nullable String location) {
		
		Member member =  mService.findByMemberId(memberId);
		
		try {
			if( !name.equals("") ) {
				member.setName(name);
			}
			if( !location.equals("") ) {
				member.setLocation(location);
			}
			if( !email.equals("") ) {
				member.setEmail(email);
			}
			if(  birthday!=null  && !"".equals(birthday) ) {
				SimpleDateFormat sdf=  new SimpleDateFormat("yyyy-MM-dd");
				Date date = sdf.parse(birthday);
				java.sql.Date date2 = new java.sql.Date( date.getTime() ); 
				member.setBirthday(date2);
			}
			if(  memberImage.getSize()>0  ) {
				byte[] imgByte = memberImage.getBytes();
				member.setMemberImage(new SerialBlob(imgByte));
			}
			mService.update(member);
		}catch (Exception e) {
		}
	
		return member;
	}
}
