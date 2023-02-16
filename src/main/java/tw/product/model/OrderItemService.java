package tw.product.model;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;


@Service
@Transactional
public class OrderItemService {

	@Autowired
	private OrderItemRepository iRepo;
	
	
	public List<OrderItem> getAllOrderItem(Integer orderNo){
		return iRepo.findByOrderNo(orderNo);
	}
	
	public OrderItem findById(Integer orderNo){
		Optional<OrderItem> findOrderItem = iRepo.findById(orderNo);
		return findOrderItem.get();
	}

}
