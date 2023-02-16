package tw.product.model;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
public class OrdersService {

	//在service寫存進資料庫的方法
	//controller裡面呼叫
	@Autowired
	private OrdersRepository oRepo;
	
	//新增訂單
	public Orders insert(Orders orders) {
		return oRepo.save(orders);
	}
	
	
	//update訂單
	public Orders update(Orders orders) {
		return oRepo.save(orders);
	}
	//刪除
	public void deleteById(Integer orderNo) {
		oRepo.deleteById(orderNo);
	}
	
	public Orders findByOrderNo(Integer orderNo) {
		Optional<Orders> os = oRepo.findById(orderNo);
		
		Orders o1 = null;
		if(os.isPresent()) {
			o1=os.get();
		}
		return o1;
	}
	
	public List<Orders> findMemberOrder(Integer memberPk){
		return oRepo.findByMemberPk(memberPk);
	}
	
	public List<Orders> getAllOrders(){
		return oRepo.findAll();
	}
}


