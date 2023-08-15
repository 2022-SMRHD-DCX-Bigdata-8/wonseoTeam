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

public class sns_postCon implements sns_Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		sns_MusicDAO music = new sns_MusicDAO();

		List<sns_musicDTO> list = music.post();

		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();

		Gson gson = new Gson();

		String json = gson.toJson(list);

		out.print(json);

		// 2. 기능 실행
		// 제목으로 검색 --> title 컬럼에서 search라는 문자열을 포함하는 데이터만 조회

		// 3. 응답

		// CSV : 콤마(,)로 구분해놓은 데이터
		// 파일 용량이 작음, 가독성이 되게 안좋음

		// XML : 태그, 속성을 이용해서 데이터를 저장
		// 가독성이 좋은, 파일 용량이 큼

		// JSON(JavaScript Object Notation)
		// : javascript의 객체 형식으로 데이터를 저장
		// 가독성 좋음, 파일 용량 적당
		// 모든 언어에서 쉽게 사용 가능(python -> dict, javascript, java)
		// {"key" : "value", .....} : 문자열

		// Gson 라이브러리
		// Java Object -> json || json --> java Object

		return null;

	}

}
