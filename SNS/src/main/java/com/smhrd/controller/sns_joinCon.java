package com.smhrd.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.smhrd.dao.sns_UserDAO;
import com.smhrd.entity.sns_userDTO;

public class sns_joinCon implements sns_Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
        // 파일 전송을 위해서 필요한 라이브러리가 있다 -> COS
        // 파일을 저장하기 위한 경로가 필요하다 -> 프로젝트 내 -> webapp -> save

        // 1. 데이터 수집 -> request 객체 -> MultipartRequest 객체 사용
        // MultipartRequest객체 : 파일 전송을 위하여 필요한 객체!
        // - request : MultipartRequest와 연결을 위한 request
        // - savePath : 파일 저장을 위한 경로
        // - maxSize : 파일의 최대 크기 지정
        // - encoding : 파일명에 대한 인코딩 작업 ex) dog.png
        // - DefaultFileRenamePolicy : 업로드되는 파일들이 중복되지 않도록 관리
        
        // getServletContext()
        String savePath = request.getServletContext().getRealPath("save") ;
        System.out.println(savePath);
        
        //1mb
        int maxSize = 1024 * 1024 ;
        
        String encoding = "UTF-8";
        
        MultipartRequest multi = new MultipartRequest(
              request,
              savePath,
              maxSize,
              encoding,
              new DefaultFileRenamePolicy());
        
        // 데이터 수집
        String id = multi.getParameter("id");
        String pw = multi.getParameter("pw");
        String name = multi.getParameter("name");
        String tel = multi.getParameter("tel");
        String email = multi.getParameter("email");
        String img = multi.getFilesystemName("img");
        
        // 2. 기능실행
        // 수집된 데이터를 하나의 묶음으로 만들어주기! -> Board
        sns_userDTO dto = new sns_userDTO();
        dto.setUserId(id);
        dto.setUserPw(pw);
        dto.setUserName(name);
        dto.setUserTel(tel);
        dto.setUserEmail(email);
        dto.setUserPhoto(img);
        
        
        sns_UserDAO dao = new sns_UserDAO();
        int cnt = dao.join(dto);
        
        // 3. 페이지 이동
        String nextView = "";
        if(cnt > 0) {
           // 페이지이동 성공 -> goBoard
           nextView ="redirect:/goLogin.do";
        }else {
           // 페이지이동 실패 -> goWrite
           nextView ="redirect:/goJoin.do";
        }

        return nextView;
	}

}
