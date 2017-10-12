package com.kosta.bookstagram.controller;

import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kosta.bookstagram.controller.listener.Controller;
import com.kosta.bookstagram.model.CreateBoardDAO;
import com.kosta.bookstagram.model.CreateBoardVO;

public class CreationPostUpdateViewController implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws ServletException {
		int boardNo=Integer.parseInt(request.getParameter("board_no"));
		CreateBoardVO cbvo;
		try {
			cbvo = (CreateBoardVO) CreateBoardDAO.getInstance().selectBoard(boardNo);
			request.setAttribute("cbdvo", cbvo);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "ex-creation_updateview.jsp";
	}

}
