package tw.member.sendMail;

import java.io.IOException;
import java.util.Date;
import java.util.Properties;
import java.util.UUID;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Multipart;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeBodyPart;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMultipart;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import tw.member.model.Member;
import tw.member.model.MemberService;
import tw.member.model.VerificationService;

@Controller
public class EmailController {
	@Autowired
	MemberService mService;
	
	@Autowired
	VerificationService vService;
	
	//sendMail controller 
	@PostMapping(value = "/sendMail.do/{memberId}")
	@ResponseBody
	public Boolean sendEmail(@PathVariable("memberId") String memberId)
			throws AddressException, MessagingException, IOException {
		Member member = mService.findByMemberId(memberId);
		if( member!=null ) {
			String code;
			if(vService.findByMemberId(memberId)==null) {
				vService.save(memberId,  code = UUID.randomUUID().toString());
			}else {
				vService.updateSetVerificationForMemberId(code =UUID.randomUUID().toString(), memberId);
			}
			sendmail(member,code);
			return true;
		}else {
			return false;
		}
		
	}

	// 送信function
	private void sendmail( Member member, String  code ) throws AddressException, MessagingException, IOException {
		Properties props = new Properties();
		props.put("mail.smtp.auth", "true");
		props.put("mail.smtp.starttls.enable", "true");
		props.put("mail.smtp.host", "smtp.gmail.com");
		props.put("mail.smtp.port", "587");

		Session session = Session.getInstance(props, new javax.mail.Authenticator() {
			protected PasswordAuthentication getPasswordAuthentication() {
				return new PasswordAuthentication("nw755162@gmail.com", "taaywykdwiynfabo");
			}
		});
		Message msg = new MimeMessage(session);
		msg.setFrom(new InternetAddress("nw755162@gmail.com", false));

		msg.setRecipients(Message.RecipientType.TO, InternetAddress.parse(member.getEmail()));
		msg.setSubject("UniversalHouse Verification email");
		msg.setContent("UniversalHouse Verification email1", "text/html");
		msg.setSentDate(new Date());

		MimeBodyPart messageBodyPart = new MimeBodyPart();
		messageBodyPart.setContent("Please click the button below to verify your account", "text/html");
		messageBodyPart.setContent("Please click the button below to verify your account"
				+ "<a href='http://localhost:8080/verify/" + member.getMemberId() + "/" + code + "'>"
				+"<div style=\"background-color:black;border-radius:40px; width:150px;font-weight:600;font-size:20px;color:#fff;font-family:'Helvetica';margin:50px 200px\" "
				+ "align='center'>verify</div></a>", "text/html");

		Multipart multipart = new MimeMultipart();
		multipart.addBodyPart(messageBodyPart);

//	   MimeBodyPart attachPart = new MimeBodyPart();
//	   attachPart.attachFile("/var/tmp/image19.png");
//	   multipart.addBodyPart(attachPart);

		msg.setContent(multipart);
		Transport.send(msg);
	}
	
	//驗證用戶驗證碼是否正確
	@GetMapping(value = "/verify/{memberId}/{verifyCode}")
	public String verify(@PathVariable("memberId") String memberId, @PathVariable("verifyCode") String verifyCode) {
	    Member member = mService.findByMemberId(memberId);
	    if (member != null && vService.findByMemberId(memberId).getVerifyCode().equals(verifyCode)) {
	    	member.setVerification(1);
	        mService.save(member);
	        return "/member/regist/verificationSuccess";
	    }
	    return "/member/regist/verificationSuccess";
	}


//	@PostMapping(value = "/test")
//	@ResponseBody
	public String test() {
		vService.updateSetVerificationForMemberId(UUID.randomUUID().toString(), "aaa");
		return "";
	}

}
