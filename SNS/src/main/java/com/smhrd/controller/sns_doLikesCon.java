package com.smhrd.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.dao.sns_LikesDAO;
import com.smhrd.entity.sns_likesDTO;

public class sns_doLikesCon implements sns_Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String id = request.getParameter("userId");
		int musicSeq = Integer.parseInt(request.getParameter("musicSeq"));
		
		System.out.println(id+musicSeq);
		
		sns_likesDTO likes = new sns_likesDTO();
		
		likes.setMusicSeq(musicSeq);
		likes.setUserId(id);
		
		sns_LikesDAO dao = new sns_LikesDAO();
		
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		
		int result = dao.likesCheck(likes);
		System.out.println(result);
		
		if (result > 0) {
			int cnt = dao.unLikes(likes);
			out.print("🤍");
		} else {
			int cnt = dao.doingLikes(likes);
			out.print("❤️");
		}
		
		return null;
	}

}
