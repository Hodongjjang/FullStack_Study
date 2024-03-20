package com.ezen.springrest.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ezen.springrest.dto.EmployeeDTO;
import com.ezen.springrest.dto.FruitDTO;

import jdk.internal.org.jline.utils.Log;
import lombok.extern.log4j.Log4j;

@Log4j
@RequestMapping("/quiz")
@Controller
public class QuizController {
	
	@PostMapping("/fruit")
	public ResponseEntity<String> insertFruit(
			@RequestBody FruitDTO fruit){
		log.info("POST : " +fruit);
		
		
		return ResponseEntity.ok("OK!!");
	}
	
	@PutMapping("/fruit/{fruit_id}")
	public ResponseEntity<String> updateFruit(
			@PathVariable("fruit_id")Integer fruit_id,
			@RequestBody FruitDTO fruit_dto
			){
		log.info("PathVariable : " + fruit_id);
		log.info("FruitDTO : " + fruit_dto);

		return ResponseEntity.ok("OK!!");
	}
}
