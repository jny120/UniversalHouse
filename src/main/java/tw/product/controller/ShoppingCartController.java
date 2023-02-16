package tw.product.controller;

import java.io.IOException;
import java.io.InputStream;
import java.sql.Blob;
import java.sql.SQLException;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Optional;
import java.util.Set;
import java.util.UUID;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.io.IOUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import ecpay.payment.integration.AllInOne;
import ecpay.payment.integration.domain.AioCheckOutALL;
import tw.course.model.Course;
import tw.course.model.CourseService;
import tw.member.model.Member;
import tw.member.model.MemberRepository;
import tw.member.model.MemberService;
import tw.product.model.OrderItem;
import tw.product.model.Orders;
import tw.product.model.OrdersService;
import tw.product.model.ShoppingCart;

@Controller
@SessionAttributes(names = "cartMap")
public class ShoppingCartController {

	@Autowired
	private CourseService cService;
	

	@Autowired
	private OrdersService oService;
	
	@Autowired
	private MemberRepository memberRepository;
	
	AllInOne all = new AllInOne("");

	AioCheckOutALL obj = new AioCheckOutALL();

	

	// 顯示購物車頁面
	@GetMapping("/showCart")
	public String showCart(HttpSession session, Model m) {

		Map<Integer, ShoppingCart> cartMap = (Map<Integer, ShoppingCart>) session.getAttribute("cartMap");
		m.addAttribute("cartList", cartMap);
		if (cartMap == null || cartMap.size()==0) {
			return "/product/noProduct";
		}
		return "/product/cart";
	}


	// 加入購物車
	@RequestMapping("/addToCart")
	public String addToCart(@RequestParam("courseId") String courseId, HttpServletRequest request) {

		HttpSession session = request.getSession();

		Integer cId = Integer.parseInt(courseId);
		Course cBeam = cService.findById(cId);
		cBeam.getCourseName();
		cBeam.getPrice();
		System.out.println(cBeam);
		
		Map<Integer, ShoppingCart> cartMap = null;

		Object obj = session.getAttribute("cartMap");

		if (obj == null) {
			cartMap = new HashMap<Integer, ShoppingCart>();
			ShoppingCart cart = new ShoppingCart();
			cart.setCbeam(cBeam);
			cartMap.put(cId, cart);
		} else {
			cartMap = (HashMap<Integer, ShoppingCart>) obj;
			ShoppingCart cart = cartMap.get(courseId);

			if (cart != null) {
				cart.setCartNum(1);
			} else {
				cart = new ShoppingCart();
				cart.setCbeam(cBeam);
				cart.setCartNum(1);
				
			}
//			System.out.println(cart.getCbeam() + "============================");
			cartMap.put(cId, cart);
//			System.out.println(cartMap + "=========================================");
		}

		Set<Integer> keys = cartMap.keySet();
		session.setAttribute("keys", keys);
		session.setAttribute("cartMap", cartMap);
		return "redirect:/showCart";
	}

	// 刪除單筆商品
	@PostMapping("/deleteProduct")
	public String deleteProduct(@RequestParam("courseId") String courseId, HttpServletRequest request) {
		HttpSession session = request.getSession();
		Map<Integer, ShoppingCart> cartMap = (Map<Integer, ShoppingCart>) session.getAttribute("cartMap");
		int id = Integer.parseInt(courseId);
		System.out.println(id);
		if (cartMap.get(id) != null) {
			cartMap.remove(id);
		}
//	    session.setAttribute("cartMap", cartMap);
//	    return "redirect:/cart";
		return "/product/cart";
	}

	
	//訂單存商品List list也要存訂單
	@PostMapping("/insertOrder")
	@ResponseBody
	public String insertOrder2(@RequestParam("courseId") Integer courseId, @RequestParam("memberPk") Integer memberPk,
			@RequestParam("totalPrice") String totalPrice,Model model
			,HttpServletRequest request) {
		
		Optional<Member> findById = memberRepository.findById(memberPk);
		Member m = findById.get();

		String name=m.getName();
		String email=m.getEmail();
		
		Date date =new Date();
		
		HttpSession session = request.getSession();
		Map<Integer, ShoppingCart> cartMap = (Map<Integer, ShoppingCart>) session.getAttribute("cartMap");
		//拿所有ID
		Set<Integer> keySet = cartMap.keySet();
		List<OrderItem> items=new ArrayList<OrderItem>();
		Double sum=Double.valueOf(totalPrice);
		Orders orders = new Orders(null,memberPk, name, email, sum, date);
		//根據ID找所有物件
		for( Integer courseId2  : keySet ) {
			ShoppingCart cart=cartMap.get(courseId2);
			OrderItem orderItem = new OrderItem(null, courseId2, cart.getCbeam().getCourseName(),
					cart.getCbeam().getPrice(), 1, orders);
			items.add(orderItem);
		}
		
		orders.setItems(items);
		
		oService.insert(orders);

		model.addAttribute("orders", oService.findMemberOrder(memberPk));
		
		//綠界訂單
		UUID randomUUID = UUID.randomUUID();
		String subString=randomUUID.toString().substring(24);
		
		obj.setMerchantTradeNo(subString+courseId);
		
		DateFormat dateFormat=new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
		Date date1=new Date();
		String dateToStr=dateFormat.format(date1);
		obj.setMerchantTradeDate(dateToStr);
	
		
		obj.setTotalAmount(totalPrice);
		obj.setTradeDesc("test Description");
		obj.setItemName("UniversalHouse課程");
		obj.setReturnURL("http://localhost:8080/admin/showAllOrders");
		obj.setClientBackURL("http://localhost:8080");
		obj.setNeedExtraPaidInfo("N");

		//回傳form表單的資料
		String form = all.aioCheckOut(obj, null);

		return form;
		
	}
	
}
