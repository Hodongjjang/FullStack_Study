package com.ezen.springboard.mapper;

import java.util.List;

import com.ezen.springboard.dto.BoardDTO;

public interface BoardMapper {
	
	List<BoardDTO> getAll();
	
	List<BoardDTO> getAllWithReplyCount();
	
	BoardDTO get(int board_id);
	
	int insert(BoardDTO dto);
	

}
