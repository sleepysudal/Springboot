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
	public String memberform(Model model)
	{
		List<MemberDto>list = service.getAllMembers();
		model.addAttribute("list", list);
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
	//delete ajax
	@GetMapping("/member/delete")
	@ResponseBody
	public void deleteMember(@RequestParam String num)
	{
		service.deleteData(num);
	}
	//delete
	@GetMapping("/member/deletemyinfo")
	   @ResponseBody
	   public void deletemyinfo(String num,
	         HttpSession session)
	   {
	      String path=session.getServletContext().getRealPath("/membersave");
	      String photo=service.getDataByNum(num).getPhoto();
	      File file=new File(path+"/"+photo);
	      file.delete();
	      
	      service.deleteData(num);
	      session.removeAttribute("loginok");
	      session.removeAttribute("myid");
	      session.removeAttribute("loginphoto");
	      session.removeAttribute("saveok");
	      
	   }
	//사진만 수정
	@PostMapping("/member/updatephoto")
	@ResponseBody
	public void uploadphoto(String num, MultipartFile photo, HttpSession session)
	{
		//업로드 경로
		String path = session.getServletContext().getRealPath("/membersave");
		
		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmss");
		String fileName = sdf.format(new Date())+photo.getOriginalFilename(); 
		
		//업로드
		try {
			photo.transferTo(new File(path+"/"+fileName));
			
			service.updatePhoto(num, fileName); //사진 수정
			session.setAttribute("loginphoto", fileName);
			
		} catch (IllegalStateException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	
	//myinfo 업데이트 map으로 넘기면 json이고 session으로 넘기면 서버에서 받아오는거고 service로 넘기면 그냥받기
	@PostMapping("/member/updateMember") 
	@ResponseBody
	public void updateMember(@ModelAttribute MemberDto dto)
	{
		
		service.updateMember(dto);
		
	
	}
	
}
