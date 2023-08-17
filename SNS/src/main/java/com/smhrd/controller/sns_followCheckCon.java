package com.smhrd.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.dao.sns_FollowDAO;
import com.smhrd.entity.sns_followDTO;

public class sns_followCheckCon implements sns_Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String followerId = request.getParameter("followerId");
		String followingId = request.getParameter("followingId");

		System.out.println(followerId);

		sns_followDTO follow = new sns_followDTO();
		follow.setFollowerId(followerId);
		follow.setFollowingId(followingId);

		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		sns_FollowDAO dao = new sns_FollowDAO();
		int cnt = dao.followCheck(follow);

		out.print(cnt);

		return null;
	}

}
