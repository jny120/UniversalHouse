package tw.member.modifyMember.controller;

import java.io.IOException;
import java.sql.Blob;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.Part;
import javax.sql.rowset.serial.SerialBlob;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.lang.Nullable;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RequestPart;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import tw.member.model.Member;
import tw.member.model.MemberService;



@Controller
@RequestMapping("/admin")
public class ModifyByAdminController  {
	@Autowired
	private MemberService mService;
	
	@PostMapping("/upgradeToAdmin.do/{memberId}")
	@ResponseBody
	private Member updateToAdmin( @PathVariable("memberId")String memberId) {
		Member member = mService.findByMemberId(memberId);
		member.setPermission(1);
		mService.update(member);
		return member;
	}
	
	@PostMapping("/degradeToUser.do/{memberId}")
	@ResponseBody
	private Member updateToUser( @PathVariable("memberId")String memberId) {
		Member member = mService.findByMemberId(memberId);
		member.setPermission(0);
		mService.update(member);
		return member;
	}

	@PostMapping("/modifyByAdmin.do")
	@ResponseBody
	private Member modifyByAd( @RequestParam("memberId")String memberId,
			@RequestParam("name") @Nullable String name,  @RequestParam("password") @Nullable String password,
			@RequestParam("location") @Nullable String location, @RequestParam("email") @Nullable String email,
			@RequestParam("birthday") @Nullable String birthday,
			@RequestParam("memberImage") @Nullable MultipartFile memberImage
			) {
		Member member =  mService.findByMemberId(memberId);
		////錯了
		try {
			if( !"".equals(name) ) {
				member.setName(name);
			}
			if( !"".equals(password) ) {
				String encodePwd = new BCryptPasswordEncoder().encode(password);
				member.setPassword(encodePwd);
			}
			if( !"".equals(location) ) {
				member.setLocation(location);
			}
			if( !"".equals(email) ) {
				member.setEmail(email);
			}
			if( !"".equals(birthday) ) {
				String StrBD = birthday ;
				SimpleDateFormat sdf=  new SimpleDateFormat("yyyy-MM-dd");
				Date date = sdf.parse(StrBD);
				java.sql.Date date2 = new java.sql.Date( date.getTime() ); 
				member.setBirthday(date2);
			}
			
			if(  memberImage.getSize()>0  ) {
				byte[] imgByte;
				
				imgByte = memberImage.getBytes();
				Blob imgBlob = new SerialBlob(imgByte);
				member.setMemberImage(imgBlob);
				} 
			
		}catch ( ParseException | IOException | SQLException e) {
			e.printStackTrace();
		}
		
		return mService.update(member);
	}
}
	
	
   


