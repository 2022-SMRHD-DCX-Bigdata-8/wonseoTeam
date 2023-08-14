package com.smhrd.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.smhrd.dao.sns_UserDAO;
import com.smhrd.entity.sns_userDTO;

public class sns_loginCon implements sns_Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");

		String id = request.getParameter("id");
		String pw = request.getParameter("pw");

		sns_userDTO user = new sns_userDTO();
		user.setUserId(id);
		user.setUserPw(pw);

		sns_UserDAO dao = new sns_UserDAO();
		sns_userDTO result = dao.login(user);

		if (result != null) {
			System.out.println("로그인 성공!");

			HttpSession session = request.getSession();
			session.setAttribute("user", session);
		} else {
			System.out.println("로그인 실패!");
		}

		return "redirect:/goMain.do";

	}

}
