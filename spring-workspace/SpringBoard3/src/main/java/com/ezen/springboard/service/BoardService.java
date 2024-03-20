package com.ezen.springboard.service;

import org.springframework.ui.Model;

import com.ezen.springboard.dto.BoardDTO;

public interface BoardService {

	void list(Model model);
	
	boolean detail(int board_id, Model model);
	
	int write(BoardDTO dto);
}


