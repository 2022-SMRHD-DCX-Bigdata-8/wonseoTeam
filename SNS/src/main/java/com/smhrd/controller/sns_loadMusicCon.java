package com.smhrd.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.smhrd.dao.sns_MusicDAO;
import com.smhrd.entity.sns_musicDTO;

public class sns_loadMusicCon implements sns_Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String id = request.getParameter("id");

		sns_MusicDAO music = new sns_MusicDAO();

		List<sns_musicDTO> list = music.loadMusic(id);
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();

		Gson gson = new Gson();

		String json = gson.toJson(list);

		out.print(json);

		return null;
	}

}
