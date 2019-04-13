package spring.web.controller;

import javax.annotation.Resource;
import javax.servlet.ServletContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import spring.web.service.UserService;
import spring.web.vo.UserVO;

@Controller
public class UserController {

	@Resource(name = "userService")
	private UserService us;

	@Autowired
	private ServletContext sc;

	public UserController() {
	}

	@RequestMapping(value = "/join.do")
	public String join(@ModelAttribute UserVO uv) {
		int result = us.join(uv);
		String ts = (String) sc.getInitParameter("testParam");
		return ts;
	}

	@RequestMapping(value = "/popup.do")
	public String popUp() {
		return "popup";
	}

}
