package com.smhrd.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.smhrd.dao.sns_UserDAO;
import com.smhrd.entity.sns_userDTO;

public class sns_updateCon implements sns_Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String url="";
		
		String savePath = request.getServletContext().getRealPath("save");
		System.out.println(savePath);
		
		int maxSize = 1024*1024*5;
		
		String encoding = "UTF-8";
		
		MultipartRequest multi = new MultipartRequest(request, savePath, maxSize, encoding,
				new DefaultFileRenamePolicy());
		
		String id = multi.getParameter("id");
		String pw = multi.getParameter("pw");
		String img = multi.getFilesystemName("img");
		
		sns_userDTO dto = new sns_userDTO();
		dto.setUserId(id);
		dto.setUserPw(pw);
		dto.setUserPhoto(img);
		
		sns_UserDAO dao = new sns_UserDAO();
		int cnt = dao.updateUser(dto);
		
		System.out.println("성공했습니다");
		
		return "redirect:/goMain.do";
	}

}
