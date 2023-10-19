package boot.controller;

import java.util.HashMap;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import boot.dto.PersonDto;

@Controller
public class FormController {
	
	@GetMapping("/sist/form1")
	public String form1()
	{
		return "form/form1";
	}
	
	@GetMapping("/sist/form2")
	public String form2()
	{
		return "form/form2";
	}
	
	@GetMapping("/sist/form3")
	public String form3()
	{
		return "form/form3";
	}
	@PostMapping("/sist/read1")
	public ModelAndView read1(@RequestParam String irum,
			@RequestParam int java,
			@RequestParam int spring)
	{
		ModelAndView model = new ModelAndView();
		
		int total=java+spring;
		double avg= (java+spring)/2;
		//저장
		model.addObject("irum", irum);
		model.addObject("java" ,java);
		model.addObject("spring", spring);
		model.addObject("total", total);
		model.addObject("avg", avg);
		
		
		model.setViewName("/result/result1");
		return model;
	}
	@PostMapping("/sist/write2")
	public ModelAndView result2(PersonDto dto)
	{
		ModelAndView model = new ModelAndView();
		
		model.addObject("dto", dto);
		
		model.setViewName("result/result2");
		
		return model;
		
	}
	@PostMapping("/sist/map3")
	public ModelAndView result3(@RequestParam Map<String, String> map) 
	{	
		ModelAndView model = new ModelAndView();
		
		String age=map.get("age");
		String name=map.get("name");
		String blood=map.get("blood");
		
//		model.addObject("blood",blood);
//		model.addObject("age",age);
//		model.addObject("name",name);
		
//      model.addobject("name" , map.get("name"));
//      model.addobject("age" , map.get("age"));
//      model.addobject("blood" , map.get("blood"));
		
		model.addObject("map",map);
		
		model.setViewName("result/result3");
		
		return model;
		
	}
}
