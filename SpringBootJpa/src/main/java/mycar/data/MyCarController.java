package mycar.data;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/car")
public class MyCarController {
	
	@Autowired
	MyCarDao dao;
	
	@GetMapping("/carlist") //시작
	public ModelAndView list()
	{
		ModelAndView model = new ModelAndView();
		
		List<MyCarDto>list = dao.getAllDatas();
		
		model.addObject("list", list);
		model.addObject("totalcount", list.size());
		
		model.setViewName("carlist");
		return model;
	}
	@GetMapping("/carform")//카폼
	public String form()
	{
		
		return "addform";
	}
	
	//insert 
	@PostMapping("/insert")
	public String add(@ModelAttribute MyCarDto dto)
	{
		dao.insertMycar(dto);
		return "redirect:carlist";
	}
	//updateform 이동
	@GetMapping("/updateform")
	public ModelAndView uform(@RequestParam Long num)
	{
		ModelAndView model = new ModelAndView();
		MyCarDto dto = dao.getData(num); //num에 해당하는 데이터 받아오고
		
		model.addObject("dto", dto);
		
		model.setViewName("uform");
		
		
		return model;
	}
	//update
	@PostMapping("/update")
	public String update(@ModelAttribute MyCarDto dto)
	{
		dao.updateMyCar(dto);
		return "redirect:carlist";
	}
	//delete
	@GetMapping("/delete")
	public String delete(@RequestParam Long num)
	{
		
		dao.deleteMyCar(num);
		
		return "redirect:carlist";
	}
	
	
	
}
