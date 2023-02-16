package tw.space.model;

import java.util.Date;
import java.util.List;
import java.util.Optional;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import tw.member.model.MemberGroupByRegistMon;


public interface SpaceOrderReposity extends JpaRepository<SpaceOrder, Integer> {
	
	@Query(value = "from SpaceOrder")
	public List<SpaceOrder> findAll();
	
	public SpaceOrder findBySpaceNoAndOrderDate(int spaceNo, Date orderDate);
	
	String hql = "UPDATE SpaceOrder SET status =?1 WHERE orderId =?2" ;
	@Query(value = hql, nativeQuery = true)
	public SpaceOrder updateOrderStatus(String status, Integer orderId);

	public List<SpaceOrder> findByMemberId(String memberId);
	
	String ohql = "SELECT spaceNo, COUNT(*) ammount"
				+ " FROM SpaceOrder"
				+ " GROUP BY spaceNo";
	@Query(value = ohql, nativeQuery = true)
	public List<OrderGroupBySpaceNo> findGroupBySpaceNo();
	
	
	
	

}
