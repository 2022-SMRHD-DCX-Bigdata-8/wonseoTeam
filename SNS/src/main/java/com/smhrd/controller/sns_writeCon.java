package com.smhrd.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.smhrd.dao.sns_MusicDAO;
import com.smhrd.entity.sns_musicDTO;

public class sns_writeCon implements sns_Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// 파일 전송을 위해서 필요한 라이브러리가 있다! -> COS
		// 파일을 저장하기 위한 경로가 필요하다! -> 프로젝트 내 -> webapp -> save

		String url = "";
		// 1. 데이터 수집 -> request 객체 --> MultipartRequest 객체 사용
		// MultipartRequest객체 : 파일 전송을 위하여 필요한 객체!
		// - request : MultipartRequest와 연결을 위한 request
		// - savepath : 파일 저장을 위한 경로
		// - maxSize : 파일의 최대 크기 지정
		// - encoding : 파일명에 대한 인코딩 작업 ex)dog.png
		// - DefaultFileRenamePolicy : 업로드되는 파일들이 중복되지 않도록 관리!

		// getServletContext() : 서블릿을 실행하는 정보를 가져다주는 메소드
		String savePath = request.getServletContext().getRealPath("save");
		System.out.println(savePath);

		// 1mb
		int maxSize = 1024 * 1024 * 8;// 5mb

		String encoding = "UTF-8";

		MultipartRequest multi = new MultipartRequest(request, savePath, maxSize, encoding,
				new DefaultFileRenamePolicy());

		String title = multi.getParameter("title");
		String id = multi.getParameter("id");
		String img = multi.getFilesystemName("img");
		String file = multi.getFilesystemName("file");

		// 2. 기능 실행
		// 수집된 데이터를 하나의 묶음으로 만들어주기! -> Board
		sns_musicDTO music = new sns_musicDTO();
		music.setMusicTitle(title);
		music.setUserId(id);
		music.setMusicPhoto(img);
		music.setMusicFile(file);
		sns_MusicDAO dao = new sns_MusicDAO();
		int cnt = dao.write(music);

		// 3. View 선택
		// 만약 회원가입이 성공했다면, main.jsp로, 실패했다면 join.jsp
		if (cnt > 0) {
			url = "goMain";
		} else {
			url = "goWrite";
		}

		return "redirect:/" + url + ".do";

	}
}
