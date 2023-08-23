package com.smhrd.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.dao.sns_LikesDAO;
import com.smhrd.entity.sns_likesDTO;

public class sns_firstLikeCheckCon implements sns_Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String userId = request.getParameter("userId");
		int musicSeq = Integer.parseInt(request.getParameter("musicSeq"));
		
		sns_likesDTO dto = new sns_likesDTO();
		dto.setMusicSeq(musicSeq);
		dto.setUserId(userId);
		
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		
		sns_LikesDAO dao = new sns_LikesDAO();
		int cnt = dao.likesCheck(dto);
		
		if (cnt>0) {
			out.print("❤️");
			System.out.println("좋아요 눌려있음");
		}else {
			out.print("🤍");
			System.out.println("좋아요 안눌려있음");
		}
		
		
		return null;
	}

}
