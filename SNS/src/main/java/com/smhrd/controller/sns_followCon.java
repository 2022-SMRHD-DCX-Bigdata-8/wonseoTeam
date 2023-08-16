package com.smhrd.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.dao.sns_FollowDAO;
import com.smhrd.entity.sns_followDTO;

public class sns_followCon implements sns_Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String followerId = request.getParameter("followerId");
		String followingId = request.getParameter("followingId");

		System.out.println(followerId + followingId);

		sns_followDTO follow = new sns_followDTO();
		follow.setFollowerId(followerId);
		follow.setFollowingId(followingId);

		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		sns_FollowDAO dao = new sns_FollowDAO();
		sns_followDTO result = dao.followCheck(follow);

		if (result != null) {
			System.out.println("팔로우 돼있음!");
			
			int cnt = dao.unFollow(follow);
			
			out.print("팔로우하기");
		} else {
			System.out.println("팔로우 안돼있음!");

			int cnt = dao.doingFollow(follow);

			out.print("팔로우끊기");
		}
		return null;
	}

}
