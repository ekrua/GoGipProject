package com.GoZip;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MainController {
	
	@Autowired
	HttpServletRequest request;
	
	@RequestMapping("/")
	public String main() {
		return "message";
	}
	@RequestMapping("message_box.do")
	public String message_box() {
		return "message_box";
	}
}
