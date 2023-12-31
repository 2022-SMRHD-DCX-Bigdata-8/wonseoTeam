package com.smhrd.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.dao.sns_LikesDAO;
import com.smhrd.entity.sns_likesDTO;

public class sns_likeCountCon implements sns_Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		int musicSeq = Integer.parseInt(request.getParameter("musicSeq"));
		
		sns_likesDTO likes = new sns_likesDTO();
		
		likes.setMusicSeq(musicSeq);
		
		sns_LikesDAO dao = new sns_LikesDAO();
		
		int cnt = dao.count(likes);
		
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		
		out.print(cnt);
		
		return null;
	}

}
