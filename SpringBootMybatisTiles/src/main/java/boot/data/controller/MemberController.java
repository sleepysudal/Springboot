package boot.data.controller;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import boot.data.dto.MemberDto;
import boot.data.service.MemberService;

@Controller
public class MemberController {
	
	@Autowired
	MemberService service;
	
	@GetMapping("/member/myinfo")
	public String memberform()
	{
		return "/member/myinfo";
	}
	
	
	@GetMapping("/member/list")
	public ModelAndView memberlist()
	{
		ModelAndView model = new ModelAndView();
		
		List<MemberDto>list = service.getAllMembers();
		
		model.addObject("list", list);
		model.addObject("totalcount",list.size());
		
		
		model.setViewName("/member/memberlist");
		return model;
	}
	@GetMapping("/member/add")
	public String add()
	{
		return "/member/addform";
	}
	//아이디체크
	@GetMapping("/member/idcheck")
	@ResponseBody //json으로
	public Map<String, Integer> idCheck(@RequestParam String id)
	{
		Map<String, Integer>map = new HashMap<>();
		
		int n = service.getSerchId(id);
		
		map.put("count", n); //0 or 1
		
		return map;
	}
	//insert (list로 가는데 admin이 아니면 gaipsuccess로 이동)
	@PostMapping("/member/insert")
	public String insert(@ModelAttribute MemberDto dto,
			MultipartFile myphoto,
			HttpSession session,
			Model model)
	{
		String path = session.getServletContext().getRealPath("/upload");
		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmss");
		String photo= sdf.format(new Date())+myphoto.getOriginalFilename();
		dto.setPhoto(photo);
		
		try {
			myphoto.transferTo(new File(path+"/"+photo));
		} catch (IllegalStateException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		model.addAttribute("dto", dto);
		 
		service.insertMember(dto);
		return "/member/gaipsuccess";
	}
	
}
