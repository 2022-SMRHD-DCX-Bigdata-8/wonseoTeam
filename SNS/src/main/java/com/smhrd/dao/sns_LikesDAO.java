package com.smhrd.dao;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.database.SqlSessionManager;
import com.smhrd.entity.sns_likesDTO;

public class sns_LikesDAO {
	private SqlSessionFactory factory = SqlSessionManager.getSqlSessionFactory();

	public int count(sns_likesDTO likes) {
		SqlSession session = factory.openSession(true);
		
		int cnt = 0;
		try {
			cnt = session.selectOne("count", likes);
			System.out.println(cnt);
		} catch (Exception e) {
			System.out.println("아마 좋아요가 없나봐");
		}
		session.close();

		return cnt;
	}

}
