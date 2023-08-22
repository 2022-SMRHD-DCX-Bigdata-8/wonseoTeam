package com.smhrd.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.smhrd.dao.sns_CommentDAO;
import com.smhrd.entity.sns_commentDTO;

public class sns_loadCmtCon implements sns_Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int musicSeq = Integer.parseInt(request.getParameter("musicSeq"));
		
		String me = request.getParameter("me");
		
		sns_commentDTO dto = new sns_commentDTO();
		dto.setMusicSeq(musicSeq);
		dto.setUserId(me);
		
		
		sns_CommentDAO dao = new sns_CommentDAO();
		List<sns_commentDTO> list = dao.loadCmt(dto);
		
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();

		Gson gson = new Gson();

		String json = gson.toJson(list);

		out.print(json);
		
		return null;
	}

}
