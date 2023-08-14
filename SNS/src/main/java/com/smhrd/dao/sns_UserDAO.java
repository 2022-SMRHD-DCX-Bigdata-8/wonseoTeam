package com.smhrd.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.database.SqlSessionManager;
import com.smhrd.entity.sns_userDTO;

public class sns_UserDAO {
	private SqlSessionFactory factory = SqlSessionManager.getSqlSessionFactory();

	public int join(sns_userDTO user) {
		// 1) 연결을 빌려오기 , true == auto commit
		SqlSession session = factory.openSession(true);

		// 2) Mapper에 정의된 sql문을 실행
		// 메소드 이름 == SQL문의 키워드(단 select만 빼고)
		// 매개변수가 필수 1개 - id값
		// 선택 1개 - parameterType에 지정해준 데이터
		// parameterType == DAO 메소드의 매개변수
		// i, d, u >> 결과가 몇행 변경이 일어났는가 동일하게 나온다.
		int cnt = session.insert("join", user);

		// 3) 빌려온 연결 반납
		session.close();

		// 4) DAO 메소드 ==> SQL문을 실행하고, 실행결과를 리턴하는 메소드
		return cnt;
	}

	public sns_userDTO login(sns_userDTO user) {
		// 1. 연결 빌려오기
		SqlSession session = factory.openSession(true);
		// 2. sql문 실행
		// SelectOne : 결과가 한개만 나올 때
		// >> resultType에 적은 DTO로 리턴
		// selectList : 결과가 여러개 나올 때
		// >> List<DTO>
		sns_userDTO result = session.selectOne("login", user);

		// 3. 연결 반납
		session.close();

		// 4. 실행 결과 리턴
		return result;
	}

	public sns_userDTO check(String id) {
		SqlSession session = factory.openSession(true);
		sns_userDTO list = session.selectOne("check", id);
		session.close();
		return list;
	}

	public List<sns_userDTO> searchId(String search) {
		SqlSession session = factory.openSession(true);
		List<sns_userDTO> list = session.selectList("searchId", search);
		session.close();
		return list;
	}

}
