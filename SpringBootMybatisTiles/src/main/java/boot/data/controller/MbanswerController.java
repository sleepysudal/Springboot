package boot.data.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;


import boot.data.dto.MbanswerDto;
import boot.data.mapper.MbanswerMapperInter;
import boot.data.service.MemberService;

@RestController //ajax 쓸때 쓰는 어노테이션
@RequestMapping("/mbanswer")
public class MbanswerController {
	
	@Autowired
	MbanswerMapperInter mapper;
	
	@Autowired
	MemberService mservice;
	
	@PostMapping("/ainsert")
	public void insert(@ModelAttribute MbanswerDto dto, HttpSession session)
	{
		//세션에 로그인한 id
		String myid= (String)session.getAttribute("myid");
		//아이디에 대한 작성자
		String name =mservice.getName(myid);
		
		//dto에 담기
		dto.setMyid(myid);
		dto.setName(name);
		//System.out.println(dto.getNum());
		
		//insert
		mapper.insertMbanswer(dto);
	}
	@GetMapping("/alist")
	public List<MbanswerDto> alist(@RequestParam String num)
	{
		
		return mapper.getAllAnswers(num);

	}
}
