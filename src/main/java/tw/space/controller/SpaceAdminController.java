package tw.space.controller;

import java.io.IOException;
import java.io.InputStream;
import java.sql.Blob;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.sql.rowset.serial.SerialBlob;

import org.apache.commons.io.IOUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.lang.Nullable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import tw.space.model.Space;
import tw.space.model.SpaceService;

@RequestMapping("/admin")
@Controller
public class SpaceAdminController {

	@Autowired
	private SpaceService sService;
	
	
//	test
	@GetMapping("/datatable.controller")
	public String processTest(){
		return "space/admin/datatableTest"; 
	}
	
//	readAll
	@GetMapping("/spacereadall.controller")
	public String processReadAll(Model m){
		List<Space> list = sService.readAll();
		m.addAttribute("spaces", list);
		return "space/admin/adminSystem"; 
	}
	
	
//	insert
	@PostMapping("/spaceinsert.controller")
	public String processInsert(@RequestParam("spaceName") String spaceName,@RequestParam("city")@Nullable String city,
								@RequestParam("address")@Nullable String address,	@RequestParam("spaceType")@Nullable String spaceType,
								@RequestParam("phone")@Nullable String phone, 		@RequestParam("email")@Nullable String email,
								@RequestParam("facility1")@Nullable String facility1, @RequestParam("facility2")@Nullable String facility2,
								@RequestParam("facility3")@Nullable String facility3, @RequestParam("facility4")@Nullable String facility4,
								@RequestParam("facility5")@Nullable String facility5, @RequestParam("facility6")@Nullable String facility6,
								@RequestParam("facility7")@Nullable String facility7, @RequestParam("facility8")@Nullable String facility8,
								@RequestParam("facility9")@Nullable String facility9, @RequestParam("facility10")@Nullable String facility10,
								@RequestParam("intro")@Nullable String intro,		
								@RequestParam(name="price")@Nullable int price,
								@RequestParam(name="accommodate")@Nullable int accommodate,
								@RequestParam("pic")@Nullable MultipartFile pic,
								Model m) {
		Map<String, String> errors = new HashMap<String, String>();
		m.addAttribute("errors",errors);
		
		Space space = new Space();
		
		if (spaceName==null || spaceName.length()==0) {
			errors.put("spaceName", "required");
		}
		space.setSpaceName(spaceName);
		
		if (city==null || city.length()==0) {
			errors.put("city", "required");
		}
		space.setCity(city);
		
		if (address==null || address.length()==0) {
			errors.put("address", "required");
		}
		space.setAddress(address);
		
		if (accommodate==0) {
			errors.put("accommodate", "required");
		}else if (accommodate<0) {
			errors.put("Accommodate", "unreasonable");
		}
		space.setAccommodate(accommodate);
		
		if (spaceType==null || spaceType.length()==0) {
			errors.put("spaceType", "required");
		}
		space.setSpaceType(spaceType);
		
		if (price==0) {
			errors.put("price", "required");
		}else if (price<0) {
			errors.put("Price", "unreasonable");
		}
		space.setPrice(price);
		
		if (phone==null || phone.length()==0) {
			errors.put("phone", "required");
		}
		space.setPhone(phone);
		
		if (email==null || email.length()==0) {
			errors.put("email", "required");
		}
		space.setEmail(email);
		
		if (intro==null || intro.length()==0) {
			errors.put("intro", "required");
		}
		space.setIntro(intro);
		
		if (facility1==null) {facility1 = "";}
		if (facility2==null) {facility2 = "";}
		if (facility3==null) {facility3 = "";}
		if (facility4==null) {facility4 = "";}
		if (facility5==null) {facility5 = "";}
		if (facility6==null) {facility6 = "";}
		if (facility7==null) {facility7 = "";}
		if (facility8==null) {facility8 = "";}
		if (facility9==null) {facility9 = "";}
		if (facility10==null) {facility10 = "";}
		String fac = String.format("%s %s %s %s %s %s %s %s %s %s",facility1,facility2,facility3,facility4,facility5,facility6,facility7,facility8,facility9,facility10);
		space.setFacility_1(fac);
		
		try {
			byte[] bytes = pic.getBytes();
			try {
				Blob blob = new SerialBlob(bytes);
				space.setPic(blob);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		
		if (errors!=null && !errors.isEmpty()) {
			errors.put("msg", "Please try again!");
			return "space/admin/insertSpace";
		}
		
		sService.insert(space);
			return "redirect:spacereadall.controller";
	}
	
//	show Image
	@ResponseBody
	@GetMapping("/spaceShowImg.controller")
	public byte[] processShowImg(@RequestParam("spaceNo") int spaceNo) {
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
	
//	update readBySpaceNo
	@PostMapping("/spacepreupdate.controller")
	public String processPreUpdate(@RequestParam("spaceNo") int spaceNo,Model m) {
		Space space = sService.readBySpaceNo(spaceNo);
		
		String[] facilitis = space.getFacility_1().split(" ");
		for (int i = 0; i < facilitis.length; i++) {
			String key = "f"+i;
			int f;
			if (facilitis[i].length()==0) {
				f=0;
				m.addAttribute(key, f);
			}else {
				f=1;
				m.addAttribute(key, f);
			}
		}
		m.addAttribute("update", space);
		return "space/admin/updateSpace";
	}
	
//	update 
	@PostMapping("/spaceupdate.controller")
	public String processUpdate(@RequestParam("confirm") int spaceNo,
								@RequestParam("spaceName") String spaceName,		@RequestParam("city")@Nullable String city,
								@RequestParam("address")@Nullable String address,	@RequestParam("spaceType")@Nullable String spaceType,
								@RequestParam("phone")@Nullable String phone, 		@RequestParam("email")@Nullable String email,
								@RequestParam("facility1")@Nullable String facility1, @RequestParam("facility2")@Nullable String facility2,
								@RequestParam("facility3")@Nullable String facility3, @RequestParam("facility4")@Nullable String facility4,
								@RequestParam("facility5")@Nullable String facility5, @RequestParam("facility6")@Nullable String facility6,
								@RequestParam("facility7")@Nullable String facility7, @RequestParam("facility8")@Nullable String facility8,
								@RequestParam("facility9")@Nullable String facility9, @RequestParam("facility10")@Nullable String facility10,
								@RequestParam("intro")@Nullable String intro, 		@RequestParam(name="price")@Nullable int price,
								@RequestParam(name="accommodate")@Nullable int accommodate, @RequestParam("pic")@Nullable MultipartFile pic,
								Model m) {
		Space space = sService.readBySpaceNo(spaceNo);

		Map<String, String> errors = new HashMap<String, String>();
		m.addAttribute("errors",errors);
		
		if (spaceName==null || spaceName.length()==0) {
			errors.put("spaceName", "required");
		}
		space.setSpaceName(spaceName);
		
		if (city==null || city.length()==0) {
			errors.put("city", "required");
		}
		space.setCity(city);
		
		if (address==null || address.length()==0) {
			errors.put("address", "required");
		}
		space.setAddress(address);
		
		if (accommodate==0) {
			errors.put("accommodate", "required");
		}else if (accommodate<0) {
			errors.put("Accommodate", "unreasonable");
		}
		space.setAccommodate(accommodate);
		
		if (spaceType==null || spaceType.length()==0) {
			errors.put("spaceType", "required");
		}
		space.setSpaceType(spaceType);
		
		if (price==0) {
			errors.put("price", "required");
		}else if (price<0) {
			errors.put("Price", "unreasonable");
		}
		space.setPrice(price);
		
		if (phone==null || phone.length()==0) {
			errors.put("phone", "required");
		}
		space.setPhone(phone);
		
		if (email==null || email.length()==0) {
			errors.put("email", "required");
		}
		space.setEmail(email);
		
		if (intro==null || intro.length()==0) {
			errors.put("intro", "required");
		}
		space.setIntro(intro);
		
		if (facility1==null) {facility1 = "";}
		if (facility2==null) {facility2 = "";}
		if (facility3==null) {facility3 = "";}
		if (facility4==null) {facility4 = "";}
		if (facility5==null) {facility5 = "";}
		if (facility6==null) {facility6 = "";}
		if (facility7==null) {facility7 = "";}
		if (facility8==null) {facility8 = "";}
		if (facility9==null) {facility9 = "";}
		if (facility10==null) {facility10 = "";}
		String fac = String.format("%s %s %s %s %s %s %s %s %s %s",facility1,facility2,facility3,facility4,facility5,facility6,facility7,facility8,facility9,facility10);
		space.setFacility_1(fac);
//		圖片開始
		if(pic.getSize() !=  0) {
			try {
				byte[] bytes = pic.getBytes();
				try {
					Blob blob = new SerialBlob(bytes);
					space.setPic(blob);
				} catch (SQLException e) {
					e.printStackTrace();
				}
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		
//		圖片結束
		if (errors!=null && !errors.isEmpty()) {
			return "/space/admin/updateSpace";
		}
		
		 sService.update(space);
		 return "redirect:spacereadall.controller";
		 
	}
	
//	delete 
	@PostMapping("/spacedelete.controller")
	public String processDelete(@RequestParam("spaceNo")int spaceNo,Model m) {
		boolean result = sService.deleteBySpaceNo(spaceNo);
		m.addAttribute("spaces", result);
		if (result) {
			System.out.println("Delete success");
		}else {
			System.out.println("Delete faild");
		}
		return "redirect:/spacereadall.controller";
	}
	
//	readByCity
	@GetMapping("/spacequery.controller")
	public String processReadByCity(@RequestParam("city") String city, Model m) {
		List<Space> list = sService.readByLikeCity(city);
		m.addAttribute("Qresult", list);
		return "/space/admin/querySpace";
	}
	
	
}
