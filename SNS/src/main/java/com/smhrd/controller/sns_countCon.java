package com.smhrd.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.dao.sns_FollowDAO;

public class sns_countCon implements sns_Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String id = request.getParameter("id");

		sns_FollowDAO follow = new sns_FollowDAO();

		int cnt = follow.count(id);

		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();

		out.print(cnt+"명");

		return null;
	}

}
