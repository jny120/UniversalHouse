package tw.member.showMember.controller;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.sql.Blob;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import tw.member.model.Member;
import tw.member.model.MemberService;

@MultipartConfig
@Controller
public class ShowMemberImgServlet {
	@Autowired
	private MemberService service;
       
	@GetMapping("/ShowMemberImgServlet.do/{memberId}")
	private void showImg(@PathVariable("memberId") String memberId, HttpServletResponse response) throws IOException, ServletException {
		
		Member member =  service.findByMemberId(memberId);
		Blob blob =  member.getMemberImage();
		
		try (
				InputStream is =  blob.getBinaryStream();
				OutputStream os = response.getOutputStream();
				)
		{
				byte[] bytes = new byte[8126];
				int len = 0;
				
				while ((len = is.read(bytes)) != -1) {
					os.write(bytes, 0, len);
					os.flush();
				}

		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
}
