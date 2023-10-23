package data.model.controller;

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

import data.model.dto.MarketDto;
import data.model.mapper.MarketMapperInter;

@Controller
@RequestMapping("/market")
public class MarketController {
	
	@Autowired
	MarketMapperInter mapper;
	
	//초기리스트 출력
	@GetMapping("/list")
	public ModelAndView list()
	{
		ModelAndView model = new ModelAndView();
		
		List<MarketDto>list = mapper.getAllSangpums();
		
		//db로 부터 총개수 얻기
		int totalCount = mapper.getTotalCount();
		
		
		//저장
		model.addObject("totalCount", totalCount);
		model.addObject("list", list);
		
	
		model.setViewName("market/marketlist");
		return model;
	}
	//글쓰기 폼으로 이동
	@GetMapping("/writeform")
	public String addform()
	{
		return "market/addform";
	}
	//글쓰기
	@PostMapping("/add")
	public String add(@ModelAttribute MarketDto dto,
		MultipartFile upload,
		HttpSession session)		
	{
		// 업로드할 save 위치 구하기
		String path = session.getServletContext().getRealPath("/save");
		System.out.println(path);

		// 업로드한 파일 dto에 넣기
		dto.setPhotoname(upload.getOriginalFilename());

		// 실제 업로드
		try {
			upload.transferTo(new File(path + "/" + upload.getOriginalFilename()));
		} catch (IllegalStateException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		mapper.insertMarket(dto);
		return "redirect:list";
	}
	//수정-1 
	//여기 모델엔뷰가 있을 경우밑에 모델앤뷰 , string 쓸 경우엔 인자값에 model 쓴다
	@GetMapping("/updateform")
	public ModelAndView updateform(@RequestParam String num)
	{
		ModelAndView model = new ModelAndView();
		
		//num 에 맞는 값을 받아온다
		MarketDto dto=mapper.getData(num);
		
		model.addObject("dto", dto);
		
		model.setViewName("market/updateform");
		
		return model;
	}
	//수정2
	@PostMapping("/update")
	public String update(MarketDto dto,
			MultipartFile upload,
			HttpSession session)
	{
		// 업로드할 save 위치 구하기
				String path = session.getServletContext().getRealPath("/save");
				System.out.println(path);

				// 업로드한 파일 dto에 넣기
				dto.setPhotoname(upload.getOriginalFilename());

				// 실제 업로드
				try {
					upload.transferTo(new File(path + "/" + upload.getOriginalFilename()));
				} catch (IllegalStateException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				} catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				
		mapper.updateMarket(dto);
		return "redirect:list";
	}
	//삭제
	@GetMapping("/delete")
	public String delete(String num)
	{
		mapper.deleteMarket(num);
		return "redirect:list";
	}
}
