package com.kosta.bookstagram.controller;

import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kosta.bookstagram.controller.listener.Controller;
import com.kosta.bookstagram.model.CreateBoardDAO;
import com.kosta.bookstagram.model.CreateBoardVO;

public class CreationPostUpdateController implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws ServletException {
		int boardNo=Integer.parseInt(request.getParameter("board_no"));
		String create_title=request.getParameter("title");
		String create_content=request.getParameter("content");
		int category=Integer.parseInt(request.getParameter("tend_code"));
		CreateBoardVO createVO = new CreateBoardVO(boardNo,3, "kjhsc101218@naver.com", 1,1, create_title, create_content, category);
		try {									  
			CreateBoardDAO.getInstance().updateBoard(createVO);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return "redirect:ex-creation.jsp";
	}

}