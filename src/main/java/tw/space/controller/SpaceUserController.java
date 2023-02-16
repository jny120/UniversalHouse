package tw.space.controller;

import java.io.IOException;
import java.io.InputStream;
import java.security.Principal;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;


import org.apache.commons.io.IOUtils;
import org.apache.logging.log4j.core.util.ArrayUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.lang.Nullable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.bind.annotation.SessionAttributes;

import ecpay.payment.integration.AllInOne;
import ecpay.payment.integration.domain.AioCheckOutALL;
import tw.member.model.Member;
import tw.member.model.MemberRepository;
import tw.space.model.OrderDetails;
import tw.space.model.Space;
import tw.space.model.SpaceOrder;
import tw.space.model.SpaceOrderService;
import tw.space.model.SpaceService;

@Controller
@SessionAttributes(names={"book","stringDate","dateDate","spaceOrder"})
public class SpaceUserController  {
	
	
	
	@Autowired
	private SpaceService sService;
	
	@Autowired
	private SpaceOrderService soService;
	
	@Autowired
	private MemberRepository mRepo;
	
//	綠界科技
	private AllInOne allInOne = new AllInOne("");
	private AioCheckOutALL obj = new AioCheckOutALL();
	
//	readAll
	@GetMapping("/space.controller")
	public String processReadAll(Model m){
		List<Space> list = sService.readAll();
		m.addAttribute("spaces", list);
		return "space/user/space"; 
	}
	
//	readAll Member's orders
	@ResponseBody
	@GetMapping("/memberorders.controller")
	public List<OrderDetails> processShowMbOrders(Principal p, Model m){
		List<OrderDetails> odList = new ArrayList<>();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		SimpleDateFormat sdf2 = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
		List<SpaceOrder> list = soService.readByMemberId(p.getName());
		for(SpaceOrder order : list) {
			Space space = sService.readBySpaceNo(order.getSpaceNo());
			int orderId = order.getOrderId();
			String orderDate = sdf.format(order.getOrderDate());
			String status = order.getStatus();
			String spaceName = space.getSpaceName();
			String bookTime = sdf2.format(order.getBookTime());
			String cPerson = order.getcPerson();
			String contact = order.getContact();
			int spacePrice = space.getPrice();
			String payment = order.getPayment();
			String remark = order.getRemarks();
			OrderDetails oDetails = new OrderDetails(orderId, orderDate, status, spaceName,
										bookTime, cPerson, contact, spacePrice, payment, remark);
			odList.add(oDetails);
		}
		return odList;
	}
	
//	read By SpaceType
	@PostMapping("/readbytype.controller")
	public String processReadByType(@RequestParam("spaceType") String spacetype, Model m){
		List<Space> list = sService.readBySpaceType(spacetype);
		list.forEach(s -> System.out.println(s.getSpaceName()));
		m.addAttribute("spaces", list);
		return "space/user/space";
	}
// read By SpaceType and city
	@GetMapping("/readbytypeandcity.controller")
	public List<Space> processReadByType(@RequestParam("spaceType") String spacetype,
										 @RequestParam("city") String city){
		List<Space> list = sService.readBySpaceTypeAndCity(spacetype, city);
		return list;
	}

//	show Image
	@ResponseBody
	@GetMapping("/spaceShowImg.controller/{spaceNo}")
	public byte[] processShowImg(@PathVariable("spaceNo") int spaceNo) {
		try {
			Space sp = sService.readBySpaceNo(spaceNo);
			InputStream is = sp.getPic().getBinaryStream();
			return IOUtils.toByteArray(is);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		 catch (IOException e) {
			e.printStackTrace();
		}
		return null;
	}	
	
//	strings數組中所有空字符串將被刪除
	public static void removeEmptyStrings(String[] arr) {
	    int index = 0;
	    for (int i = 0; i < arr.length; i++) {
	        if (!arr[i].equals("")) {
	            arr[index] = arr[i];
	            index++;
	        }
	    }
	    while (index < arr.length) {
	        arr[index] = null;
	        index++;
	    }
	}


//	booking readBySpaceNo	
	@GetMapping("/spacedetail.controller/{spaceNo}")
	public String processBooking(@PathVariable("spaceNo") int spaceNo, Model m) {
		Space space = sService.readBySpaceNo(spaceNo);
		
		String[] fac = space.getFacility_1().trim().split(" ");
		removeEmptyStrings(fac);
		
		m.addAttribute("book",space);
		m.addAttribute("facility",fac);
		return "space/user/spacedetail";
	}
	
//	check order
	@PostMapping("/users/spacecheckorder.controller")
	public String processCheckOrder(@RequestParam("orderDate") String odate, Model m) {
		//odate String to Date
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd"); //進SQL的格式
		Date odDate = null;
		try {
			odDate = sdf.parse(odate);
		} catch (ParseException e) { e.printStackTrace(); }
		//date Date to String
		String showdate = sdf.format(odDate);

		//取得spaceNo 和 oderDate驗證是否重複訂單
		Map<String, String> errors = new HashMap<String, String>();
		Space space = (Space) m.getAttribute("book");
		boolean unavailable = soService.checkOrder(space.getSpaceNo(), odDate);
		
		if (unavailable) {
			errors.put("check", "很抱歉，該日期已被預訂!");
			m.addAttribute("errors",errors);
			return "space/user/spacedetail";
		}
		m.addAttribute("stringDate",showdate);
		m.addAttribute("dateDate",odDate);
		
		return "space/user/orderCheck";
	}
	
//	insert Order
	@PostMapping("/spaceorderinsert.controller")
	public String processOrderInsert(@RequestParam("cPerson") String cPerson,
									@RequestParam("contact") String contact,
									@RequestParam("remarks")@Nullable String remarks,
									@RequestParam("payment")@Nullable String payment, Model m,
									Principal p) {
		//取得會員NAME->再取得會員ID
//		String name = p.getName();
//		Member member = mRepo.findByName(name);
//		System.out.println(name + "--------principal.getName()---------");
//		System.out.println(member.getMemberId() + "--------member.getMemberId---------");
		//取得Session
		SpaceOrder spaceOrder = new SpaceOrder();
		Space space = (Space) m.getAttribute("book");
		Date odDate = (Date) m.getAttribute("dateDate");
		m.getAttribute("stringDate");
		//MAP<驗證發生錯誤,顯示錯誤訊息>
		Map<String, String> errors = new HashMap<String, String>();
		m.addAttribute("errors",errors);
		
		spaceOrder.setMemberId(p.getName());
		spaceOrder.setSpaceNo(space.getSpaceNo());
		spaceOrder.setOrderDate(odDate);
		spaceOrder.setBookTime(new Date());
		spaceOrder.setRemarks(remarks);
		
		if (payment==null || payment.length()==0) {
			errors.put("payment", "請選擇付款方式");
		} else {
			spaceOrder.setPayment(payment);
			
			if (payment.equals("現金")) {
				spaceOrder.setStatus("預訂中");
			}
			if (payment.equals("信用卡")) {
				spaceOrder.setStatus("已支付");
			}
			
			if (cPerson==null || cPerson.length()==0) {
				errors.put("cPerson", "required");
			}
			spaceOrder.setcPerson(cPerson);
			
			if (contact==null || contact.length()==0) {
				errors.put("contact", "required");
			}
			spaceOrder.setContact(contact);
		}
		if (!errors.isEmpty()) {
			return "space/user/orderCheck";
		}
		//insert
		soService.insert(spaceOrder);
		m.addAttribute("spaceOrder",spaceOrder);

		//分流
		if (spaceOrder.getStatus().equals("已支付")) {
			return "forward:goecpay.controller";
			
		} else {
			return "space/user/orderSuccess";

		}
		
		
	}
	
//	ECPay
	@ResponseBody
	@PostMapping("/goecpay.controller")
	public String goECPay(Model m) {

		//TradeNo
		UUID uStr = UUID.randomUUID();
		String uuid = uStr.toString().substring(1, 8);
		System.out.println("-----------uuid--------"+uuid);
		//TradeDate
		SpaceOrder thisOrder = (SpaceOrder) m.getAttribute("spaceOrder");
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
		//ItemName 由場地NO取得場地NAME
		Space sp = sService.readBySpaceNo(thisOrder.getSpaceNo());
		//TotalAmount Integer to String
		String price = Integer.toString(sp.getPrice());
		
		obj.setMerchantID("2000132");
		obj.setMerchantTradeNo(uuid+thisOrder.getOrderId());
		obj.setMerchantTradeDate(sdf.format(new Date()));
		obj.setTotalAmount(price);
		obj.setTradeDesc("場地租借 綠界科技測試系統");
		obj.setItemName(sp.getSpaceName());
		obj.setReturnURL("http://211.23.128.214:5000");
		obj.setClientBackURL("http://localhost:8080/space.controller");
		obj.setNeedExtraPaidInfo("N");
		
		System.out.println("-------obj---------------->"+obj);
		String form = allInOne.aioCheckOut(obj, null);
		return form;
	}
	
	
	

	
	
}
