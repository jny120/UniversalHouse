package tw.member.model;

import java.util.Collection;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.AuthorityUtils;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

@Service
public class AuthUserDetialService implements UserDetailsService {
	
	@Autowired
	private MemberService mService;
	
	private static final List<GrantedAuthority> ADMIN_ROLES = 
			AuthorityUtils.createAuthorityList("ROLE_ADMIN", "ROLE_USER");
	
	private static final List<GrantedAuthority> USER_ROLES = 
			AuthorityUtils.createAuthorityList("ROLE_USER");

	@Override
	public UserDetails loadUserByUsername(String memberId) throws UsernameNotFoundException {
		Member member = mService.findByMemberId(memberId);
		 Collection<? extends GrantedAuthority> authorities= getRole(member);
		return new User(memberId, member.getPassword(), authorities);
	}
	
	
	public Collection<? extends GrantedAuthority> getRole( Member member ) {
		if(member!=null && member.getPermission()==1) {
			return ADMIN_ROLES;
		}
		return USER_ROLES;
	}

}
