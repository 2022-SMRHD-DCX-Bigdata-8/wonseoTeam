package com.smhrd.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.smhrd.dao.sns_ChatDAO;
import com.smhrd.entity.sns_chatDTO;

public class sns_loadChatCon implements sns_Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int roomNo = Integer.parseInt(request.getParameter("roomNo"));

		String me = request.getParameter("me");

		sns_chatDTO chat = new sns_chatDTO();
		chat.setRoomSeq(roomNo);
		chat.setSendId(me);

		sns_ChatDAO dao = new sns_ChatDAO();

		List<sns_chatDTO> list = dao.loadChat(chat);

		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();

		Gson gson = new Gson();

		String json = gson.toJson(list);

		out.print(json);

		return null;
	}

}
