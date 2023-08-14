package com.smhrd.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.dao.sns_UserDAO;
import com.smhrd.entity.sns_userDTO;

public class sns_idCheckCon implements sns_Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String id = request.getParameter("id");
		// DB 연결 해당 내용이 사용 가능한지?
		sns_UserDAO dao = new sns_UserDAO();
		sns_userDTO result = dao.check(id);

		// 사용여부에 대한 결과값 전달
		response.setCharacterEncoding("UTF-8");

		PrintWriter out = response.getWriter();
		if (result == null) {
			out.print("true");
		} else {
			out.print("false");
		}
		return null;
	}

}
