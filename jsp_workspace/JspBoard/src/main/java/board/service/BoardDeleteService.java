package board.service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import board.dao.BoardDAO;
import board.dto.BoardDTO;

public class BoardDeleteService implements Service{
	
	BoardDAO dao = new BoardDAO();

	@Override
	public String service(HttpServletRequest request, HttpServletResponse response) {
		try {
			int board_id = Integer.parseInt(request.getParameter("board_id"));
			String board_password = request.getParameter("board_password");
			
			System.out.println("겨드랑이" + board_password);
			
			System.out.println("######### BoardDeleteService ###########");
			System.out.println("board_id" + board_id);
			System.out.println("board_password" + board_password);
			
			BoardDTO ori = dao.get(board_id);
			
			System.out.println(ori.getBoard_password());
			if(ori.getBoard_password().equals(board_password)) {
				if(dao.delete(board_id) < 1) {
					throw new Exception("삭제가 올바르게 진행되지 않았습니다!");					
				}
			} else {
				throw new Exception("지우려는 글에 비밀번호와 일치하지 않습니다");
			}
			System.out.println("살려줘");
			return "redirect::/list";
			
		} catch(Exception e) {
			e.printStackTrace();
			return "/WEB-INF/viwes/board/deleteFail.jsp";
		}
		
	}

}
