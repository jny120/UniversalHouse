package tw.productOrders.controller;

import java.security.Principal;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import tw.member.model.Member;
import tw.member.model.MemberService;
import tw.product.model.Orders;
import tw.product.model.OrdersService;

@Controller
public class OrdersController {

	@Autowired
	private OrdersService oService;

	@Autowired
	private MemberService mService;

	// 顯示所有訂單
	@GetMapping("/showOrders")
	public String showAllOrders(Model m, Principal p) {
		// 從security拿member資料
		String userId = p.getName();
		Member user = mService.findByMemberId(userId);
		List<Orders> memberOrders = oService.findMemberOrder(user.getMemberPk());
		m.addAttribute("orders", memberOrders);
		return "/product/order";
	}
	
	// 顯示所有訂單
	@PostMapping("/showOrders")
	@ResponseBody
	public List<Orders> showAllOrders(Principal p) {
		// 從security拿member資料
		String userId = p.getName();
		Member user = mService.findByMemberId(userId);
		List<Orders> memberOrders = oService.findMemberOrder(user.getMemberPk());
		return memberOrders;
		}

	// 刪除
	@PostMapping("/deleteOrder")
	// @ResponseBody
	public String deleteOrder(@RequestParam("orderNo") Integer orderNo
	
	) {
		oService.deleteById(orderNo);
		return "redirect:/showOrders";

	}

}