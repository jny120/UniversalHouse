package tw.product.model;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

public interface OrdersRepository extends JpaRepository<Orders, Integer> {

	public List<Orders> findByMemberPk(Integer memberPk);
	
	public Orders findByOrderNo(Integer orderNo);
	
}
