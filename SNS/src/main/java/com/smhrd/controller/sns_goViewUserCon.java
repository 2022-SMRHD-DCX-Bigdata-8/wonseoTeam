package com.smhrd.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.dao.sns_UserDAO;
import com.smhrd.entity.sns_userDTO;

public class sns_goViewUserCon implements sns_Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String idx = request.getParameter("idx");
		
		// BoardDAO 접근
		sns_UserDAO dao = new sns_UserDAO();
		sns_userDTO user = dao.viewUser(idx);
		// 게시판 세부 내역 가져오기
		// 이동할 페이지에 전달
		request.setAttribute("user", user);
		
		return "sns_viewUser";
	}

}
