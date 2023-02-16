package tw.productOrders.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import tw.product.model.OrderItem;
import tw.product.model.OrderItemRepository;
import tw.product.model.OrderItemService;

@Controller
public class OrderItemController {

	@Autowired
	private OrderItemService iService;
	

	
	//查詢購買的商品項
	@GetMapping("/showOrderItem/{orderNo}")
	public String showOrderItem(@PathVariable("orderNo")Integer orderNo,Model model) {
		List<OrderItem> oItem = iService.getAllOrderItem(orderNo);
		model.addAttribute("orderItem", oItem);
		return "/product/orderItem";
	}

}
