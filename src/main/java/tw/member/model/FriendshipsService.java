package tw.member.model;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
public class FriendshipsService {
	@Autowired
	FriendshipRepository fRepo;
	
	public Friendship findById( Integer id ) {
		Optional<Friendship> optionalFs = fRepo.findById(id);
		if (optionalFs.isPresent()) {
			return optionalFs.get();
		}
		return null;
	}

	public Friendship invite(Member user,Member friend ) {
		Friendship friendship = new Friendship(user,friend);
		List<Friendship> fsList= user.getFriendship();
		fsList.add(friendship);
		user.setFriendship(fsList);
		friendship.setMemberUser(user);
		return fRepo.save(friendship);
	}
	
	public Friendship confirm(Member user,Member friend ) {
		Friendship friendship = new Friendship(user,friend);
		List<Friendship> fsList = user.getFriendship();
		fsList.add(friendship);
		user.setFriendship(fsList);
		friendship.setMemberUser(user);
		return fRepo.save(friendship);
	}
	
	//拒絕好友邀請，friend為邀請者，user為拒絕者
	public void refuse(Member user,Member refusedfriend ) {
		//刪除邀請者與拒絕者的單向好友關係
		fRepo.deleteByMemberUserAndMemberFriend(refusedfriend,user);
	}
	
	//檢查是否互為好友
	public Friendship checkFriendship( Member friend1, Member friend2 ) {
		if ( fRepo.findByMemberUserAndMemberFriend(friend1,friend2).size()!=0 
				&& fRepo.findByMemberUserAndMemberFriend(friend2,friend1).size()!=0  ) {
			int size = fRepo.findByMemberUserAndMemberFriend(friend1,friend2).size();
			int size2 = fRepo.findByMemberUserAndMemberFriend(friend2,friend1).size();
			
			return fRepo.findByMemberUserAndMemberFriend(friend1,friend2).get(0);
		}
		return null;
	}
	
	//找尋單向關係，沒有回傳null
	public Friendship findFriendship( Member friend1, Member friend2 ) {
		List<Friendship> fsList;
		fsList=  fRepo.findByMemberUserAndMemberFriend(friend1,friend2) ; 
		return fsList.size()==0? null:fsList.get(0);
	}
	
	public List<Friendship> findByMemberFriend( Member friend ) {
		List<Friendship> fsList;
		fsList=  fRepo.findByMemberFriend(friend); 
		return fsList;
	}
	
//	public List<Friendship> findUncheckedFriendship( Member user ) {
//		//找到有邀請過user的Friendship List
//		List<Friendship> invitedFsList = fRepo.findByMemberFriend(user);
//		List<Friendship> uncheckedfsList= new ArrayList<Friendship>();
//		//還沒加過好友的才加到list
//		for( Friendship fs : invitedFsList) {
//			Member u = fs.getMemberUser();
//			Member f = fs.getMemberFriend();
//			System.out.println("user: "+u.getMemberId());
//			System.out.println("friend: "+f.getMemberId());
//			System.out.println("fsListSize: "+fRepo.findByMemberUserAndMemberFriend(fs.getMemberFriend(), fs.getMemberUser() ).size());
//			List<Friendship> ifFrined = fRepo.findByMemberUserAndMemberFriend( fs.getMemberFriend(), fs.getMemberUser() );
//			if( fRepo.findByMemberUserAndMemberFriend(fs.getMemberFriend(), fs.getMemberUser() ).size() == 0) {
//				uncheckedfsList.add(fs);
//			}
//		}	
//		return uncheckedfsList;
//	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
