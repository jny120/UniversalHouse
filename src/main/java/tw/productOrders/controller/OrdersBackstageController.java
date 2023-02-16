package tw.productOrders.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import tw.course.model.Course;
import tw.product.model.Orders;
import tw.product.model.OrdersService;

@Controller
public class OrdersBackstageController {

	@Autowired
	private OrdersService oService;

//	顯示所有訂單
	@RequestMapping("/admin/showAllOrders")
	public String showAllOrders(Model model) {
		List<Orders> allOrders = oService.getAllOrders();
		model.addAttribute("orders", allOrders);
		return "/courseBackstage/orderMaintain";
	}

	// 刪除
	@PostMapping("/admin/deleteOrder")
	@ResponseBody
	public void deleteOrder(@RequestParam("orderNo") Integer orderNo) {
		oService.deleteById(orderNo);
	}
}
