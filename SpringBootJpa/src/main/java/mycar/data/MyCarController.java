package mycar.data;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
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
	public String add(@ModelAttribute MyCarDto dto,
			MultipartFile carupload,
			HttpSession session)
	{
		//업로드할 save 위치 구하기
		String path = session.getServletContext().getRealPath("/save");
		System.out.println(path);
		
		//업로드한 파일 dto에 넣기
		dto.setCarphoto(carupload.getOriginalFilename());
		
		//실제 업로드
		try {
			carupload.transferTo(new File(path+"/"+carupload.getOriginalFilename()));
		} catch (IllegalStateException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
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
	@GetMapping("detail")
	public String detail(long num, Model model)
	{
	MyCarDto dto = dao.getData(num);
	model.addAttribute("dto", dto);
	return "detail";
	}

}
