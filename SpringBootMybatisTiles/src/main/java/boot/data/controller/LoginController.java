package boot.data.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class LoginController {
	//xml에서 layout 2 와일드카드랑 데피니션 sub 준거ㅇ
	@GetMapping("/login/main")
	public String loginform()
	{
		return "/sub/login/loginform";
	}
}
