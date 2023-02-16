package tw.space.model;

import java.io.FileWriter;
import java.io.IOException;
import java.util.Date;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Slice;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;


@Service
@Transactional
public class SpaceOrderService {
	
	@Autowired
	private SpaceOrderReposity soRepo;
	
	// read By spaceNo & Date
	public boolean checkOrder(int spaceNo, Date orderDate) {
		SpaceOrder order = soRepo.findBySpaceNoAndOrderDate(spaceNo, orderDate);
		return order == null ? false : true;
	}
	
	//insert
	public SpaceOrder insert(SpaceOrder SpaceOrder) {
		return soRepo.save(SpaceOrder);
	}
	
	//update
	public SpaceOrder update(SpaceOrder SpaceOrder) {
		return soRepo.save(SpaceOrder);
	}
	
	//update order/status
	public SpaceOrder updateOderStatus(String status, Integer orderId) {
		SpaceOrder nStatus = soRepo.updateOrderStatus(status, orderId);
		return nStatus;
	}
	
	//read ByOrderId
	public SpaceOrder readByOrderId(Integer orderId) {
		Optional<SpaceOrder> optional = soRepo.findById(orderId);
		return optional.isPresent() ? optional.get() : null;
	}
	
	//read ByMemberId
	public List<SpaceOrder> readByMemberId(String memberId) {
		return soRepo.findByMemberId(memberId);
	}
	
	//read All
	public List<SpaceOrder> readAll(){
		return soRepo.findAll();
	}
	
	
	//delete X
		
	//pages
	public Page<SpaceOrder> findAllByPage(Pageable pageable){
		return soRepo.findAll(pageable);
	};
	
	//Order Chart.
	public List<OrderGroupBySpaceNo> findGroupBySpaceNo(){
		return soRepo.findGroupBySpaceNo();
	}


}
