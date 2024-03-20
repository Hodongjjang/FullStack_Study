package com.ezen.board.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;


@RequestMapping("/board")
@Controller
public class BoardController {
	
	@GetMapping("/")
	public String index() {
		return "/board/index";
	}
}
