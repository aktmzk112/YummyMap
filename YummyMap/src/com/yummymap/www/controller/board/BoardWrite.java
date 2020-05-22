package com.yummymap.www.controller.board;


import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.yummymap.www.DAO.BoardDAO;
import com.yummymap.www.controller.MmyController;
import com.yummymap.www.vo.BoardVO;

public class BoardWrite implements MmyController {

	@Override
	public String exec(HttpServletRequest req, HttpServletResponse resp) {
		String view = "/board/boardWrite.jsp";
		BoardDAO bDAO = new BoardDAO();
		ArrayList<BoardVO> list = bDAO.getAllList();
		
		req.setAttribute("LIST", list);
		return view;
	}

}
