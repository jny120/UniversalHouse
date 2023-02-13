package tw.member.controller;

import java.util.ArrayList;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import tw.member.model.Friendship;
import tw.member.model.FriendshipsService;
import tw.member.model.Member;
import tw.member.model.MemberService;

@Controller
//@RequestMapping("/users")
public class FriendshipController {
	@Autowired
	private FriendshipsService fsService;
	
	@Autowired
	private MemberService mService;
	
	@PostMapping("/inviteFriendship/{memberId}/{friendId}")
	@ResponseBody
	private String inviteFriendship( @PathVariable("memberId") String  memberId, @PathVariable("friendId") String friendId ) {
		Member user = mService.findByMemberId(memberId);
		Member friend = mService.findByMemberId(friendId);
		//檢查是否已成為好友或已經發送邀請
		Friendship fs = fsService.checkFriendship(user, friend);
		Friendship invitedFs = fsService.findFriendship(user, friend);
//		HashMap map  = new HashMap<String, String>();
		//若非好友且未送出邀請，發送邀請
		if(  fs!=null  ) {
			
			return "對方已是您的好友";
		}else if(invitedFs!=null){
			return "已經發送過好友邀請";
		}else {
			fsService.invite(user, friend);
			return "發送好友邀請";
		}
		
	}
	
	@PostMapping("/confirmFriendship/{memberId}/{friendId}")
	@ResponseBody
	private Friendship confirmFriendship(@PathVariable("memberId") String  memberId, @PathVariable("friendId") String friendId ) {
		Member user = mService.findByMemberId(memberId);
		Member friend = mService.findByMemberId(friendId);
		return fsService.confirm(user, friend);
	}
	
	@PostMapping("/findFriendship/{userId}")
	@ResponseBody
	private List<Member> findFriendship(@PathVariable("userId") String userId ) {
		//先拿到userid的user物件
		Member user = mService.findByMemberId(userId);
		//找到user的所有好友陣列
		List<Friendship> fsList = user.getFriendship();
		//陣列的Friendship裡只有FriendshipId，需要找到FriendshipId對應的member物件寫進
		//好友陣列才能回傳
		List<Member> friendList = new ArrayList<Member>();
		for( Friendship fs  : fsList ) {
			//拿到完整的Friendship並加到陣列
			Friendship fs2 = fsService.findById(  fs.getFriendshipid()); 
			friendList.add( fs2.getMemberFriend()  );
		}
		
		return friendList;
	}
	
	@PostMapping("/refuseFriendship/{userId}/{refusedFriendId}")
	@ResponseBody
	private void refuseFriendship(@PathVariable("userId") String userId, @PathVariable("refusedFriendId") String refusedFriendId ) {
		Member user = mService.findByMemberId(userId);
		Member refusedFriend = mService.findByMemberId(refusedFriendId);
		fsService.refuse(user, refusedFriend);
	}
	
	@PostMapping("/findUncheckedFriendship/{userId}")
	@ResponseBody
	private List<Member> findUncheckedFriendship(@PathVariable("userId") String userId ) {
		Member user = mService.findByMemberId(userId);
		//找到user邀請或確認過的好友關係
		List<Friendship> friendship1 = user.getFriendship();
		//找到所有 邀請或確認過 user的好友關係
		List<Friendship> friendship2 = fsService.findByMemberFriend(user);
		List<Member> uncheckedMemberList = new ArrayList<Member>();
		//如果friendship2的user不存在friendship1的friend，代表未確認加到uncheckedFriendships裡面
		for(Friendship fs2 : friendship2 ) {
			Boolean exist= false;
			for( Friendship fs1 :friendship1) {
				//找遍user邀請或確認過的好友關係，如果都不存在MemberFriend把exist變成false
				if( fs1.getMemberFriend()==fs2.getMemberUser() ) {
					exist= true;
				}
			}
			if(exist== false) {
				uncheckedMemberList.add(fs2.getMemberUser());
			}
		}
		return uncheckedMemberList;
	}
	
	
	
	
	
	

}
