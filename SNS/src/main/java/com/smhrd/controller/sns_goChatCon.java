package com.smhrd.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.smhrd.dao.sns_roomDAO;
import com.smhrd.entity.sns_roomDTO;
import com.smhrd.entity.sns_userDTO;

public class sns_goChatCon implements sns_Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		HttpSession session = request.getSession();
		sns_userDTO sessionuser = (sns_userDTO) session.getAttribute("sessionUser");

		String id1 = sessionuser.getUserId();
		String id2 = request.getParameter("idx");

		sns_roomDTO room = new sns_roomDTO();
		room.setUserId1(id1);
		room.setUserId2(id2);

		sns_roomDAO dao = new sns_roomDAO();

		sns_roomDTO resultRoom = dao.searchRoom(room);

		int roomNo = 0;
		String opponent = null;

		if (resultRoom != null) {
			roomNo = resultRoom.getRoomSEQ();
			opponent = id2;
		} else {
			dao.createRoom(room);
			resultRoom = dao.searchRoom(room);
			roomNo = resultRoom.getRoomSEQ();
			opponent = id2;
		}

		request.setAttribute("roomNo", roomNo);
		request.setAttribute("opponent", opponent);

		return "sns_chat";
	}

}
