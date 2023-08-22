package com.smhrd.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.dao.sns_CommentDAO;
import com.smhrd.entity.sns_commentDTO;

public class sns_saveCmtCon implements sns_Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int musicSeq = Integer.parseInt(request.getParameter("musicSeq"));
		String userId = request.getParameter("me");
		String content = request.getParameter("cmt");
				
		sns_commentDTO dto = new sns_commentDTO();
		dto.setMusicSeq(musicSeq);
		dto.setUserId(userId);
		dto.setCmtContent(content);
		
		sns_CommentDAO dao = new sns_CommentDAO();
		int cnt = dao.saveCmt(dto);
		
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		
		out.print(cnt);
		return null;
	}

}
