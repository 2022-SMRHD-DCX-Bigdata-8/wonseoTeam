package com.smhrd.controller;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

// FrontController 디자인 패턴
// 단 한 개의 서블릿(FrontController)만 사용
// == 모든 요청을 단 하나의 서블릿으로 처리
// *.do : .do로 끝나는 모든 요청을 받겠다.
@WebServlet("*.do")
public class sns_FrontController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	// HashMap 자료구조
	// python의 dict와 유사 : KEY - VALUE 짝지어서 검증
	// HashMap<Key의 자료형, Value의 자료형
	private HashMap<String, sns_Controller> handler;

	@Override
	public void init() throws ServletException {
		// Servlet이 메모리에 등록되었을 때 단 한 번만 실행

		handler = new HashMap<String, sns_Controller>();

		// HashMap에 데이터 넣기

		// 만약에 사용자가 goMain.do라는 요청을 했다면 main.jsp를 응답
		handler.put("/goMain.do", new sns_goMainCon());
		handler.put("/goWrite.do", new sns_goWriteCon());
		handler.put("/write.do", new sns_writeCon());
		handler.put("/goJoin.do", new sns_goJoinCon());
		handler.put("/join.do", new sns_joinCon());
		handler.put("/goLogin.do", new sns_goLoginCon());
		handler.put("/login.do", new sns_loginCon());
		handler.put("/logout.do", new sns_logoutCon());
		handler.put("/idCheck.do", new sns_idCheckCon());
		handler.put("/goSearch.do", new sns_goSearchCon());
		handler.put("/search.do", new sns_searchCon());
		handler.put("/post.do", new sns_postCon());
		handler.put("/goViewUser.do", new sns_goViewUserCon());
		handler.put("/goViewMusic.do", new sns_goViewMusicCon());
		handler.put("/goProfile.do", new sns_goProfileCon());
		handler.put("/count.do", new sns_countCon());
		handler.put("/follow.do", new sns_followCon());
		handler.put("/followCheck.do", new sns_followCheckCon());
		handler.put("/loadMusic.do", new sns_loadMusicCon());
		handler.put("/goMessage.do", new sns_goMessageCon());
		handler.put("/goChat.do", new sns_goChatCon());
		handler.put("/loadChat.do", new sns_loadChatCon());
		handler.put("/goPlaylist.do", new sns_goPlaylistCon());
		handler.put("/likeCount.do", new sns_likeCountCon());

	}

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// 1. 요청을 구분하기 위해서, 어떤 요청인지 알아내기
		// /Ex04MVC/main.do
		String uri = request.getRequestURI();
		// /Ex04
		String cpath = request.getContextPath();

		// 슬라이싱
		String mapping = uri.substring(cpath.length());

		System.out.println(mapping);

		// ========================================================
		String url = null;
		sns_Controller con = null;

		// 2. 요청을 구분해서 알맞는 코드를 실행
		// HashMap에서 저장되어있는 POJO 하나 꺼내오기
		con = handler.get(mapping);

		if (con != null) {
			url = con.execute(request, response);
		}

		// ========================================================
		// 3....
		if (url != null) {
			if (url.contains("redirect:/")) {
				// ["redirect", "goMain.do"]
				response.sendRedirect(url.split(":/")[1]);
			} else {
				RequestDispatcher rd = request.getRequestDispatcher("WEB-INF/views/" + url + ".jsp");
				rd.forward(request, response);
			}
		}
	}

}
