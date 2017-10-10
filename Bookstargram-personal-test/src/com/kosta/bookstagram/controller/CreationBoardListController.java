package com.kosta.bookstagram.controller;

import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kosta.bookstagram.controller.listener.Controller;
import com.kosta.bookstagram.model.CreateBoardDAO;
import com.kosta.bookstagram.model.CreateBoardVO;

public class CreationBoardListController implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws ServletException {
		int boardType=3;	
		ArrayList<CreateBoardVO> list=new ArrayList<CreateBoardVO>();
		try {
			for(int i=0; i<CreateBoardDAO.getInstance().boardList(boardType).size();i++) {
				list.add((CreateBoardVO)CreateBoardDAO.getInstance().boardList(1).get(i));
			}	
			request.setAttribute("clist", list);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return"layout/body/creation_list.jsp";
	}

}
