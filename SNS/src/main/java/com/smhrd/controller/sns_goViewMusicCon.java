package com.smhrd.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.dao.sns_MusicDAO;
import com.smhrd.entity.sns_musicDTO;

public class sns_goViewMusicCon implements sns_Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String titlex = request.getParameter("titlex");

		// BoardDAO 접근
		sns_MusicDAO dao = new sns_MusicDAO();
		sns_musicDTO music = dao.viewMusic(titlex);
		// 게시판 세부 내역 가져오기
		// 이동할 페이지에 전달
		request.setAttribute("music", music);

		return "sns_viewMusic";
	}

}
