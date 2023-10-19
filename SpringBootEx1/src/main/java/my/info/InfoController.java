package my.info;

import java.util.HashMap;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;


@Controller

public class InfoController {
	@ResponseBody
	@GetMapping("/my/info")
	public HashMap<String, String>info()
	{
		HashMap<String, String>data = new HashMap<>();
		
		data.put("name", "장순영");
		data.put("age", "23");
		data.put("addr", "서울시 강남구");
		
		return data;
	}
}
