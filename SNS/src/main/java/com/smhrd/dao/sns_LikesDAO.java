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
		}
		session.close();

		return cnt;
	}

	public int likesCheck(sns_likesDTO likes) {
		SqlSession session = factory.openSession(true);
		int cnt = 0;
		try {
			cnt = session.selectOne("likesCheck", likes);
		} catch (Exception e) {
			e.printStackTrace();
			cnt = 0;
		}
		session.close();
		return cnt;
	}

	public int unLikes(sns_likesDTO likes) {
		SqlSession session = factory.openSession(true);
		int cnt = session.delete("unLikes", likes);
		session.close();
		return cnt;
	}

	public int doingLikes(sns_likesDTO likes) {
		SqlSession session = factory.openSession(true);
		int cnt = session.insert("doingLikes", likes);
		session.close();
		return cnt;
	}

}
