package com.smhrd.dao;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.database.SqlSessionManager;
import com.smhrd.entity.sns_followDTO;

public class sns_FollowDAO {
	private SqlSessionFactory factory = SqlSessionManager.getSqlSessionFactory();

	public int count(String id) {
		SqlSession session = factory.openSession(true);

		int cnt = session.selectOne("count", id);
		System.out.println(cnt);
		session.close();
		return cnt;
	}

	public int followCheck(sns_followDTO follow) {
		SqlSession session = factory.openSession(true);
		int cnt = 0;

		try {
			cnt = session.selectOne("followCheck", follow);

		} catch (Exception e) {
			e.printStackTrace();
		}

		session.close();
		return cnt;
	}

	public int doingFollow(sns_followDTO follow) {
		SqlSession session = factory.openSession(true);
		int cnt = session.insert("doingFollow", follow);
		session.close();
		return cnt;

	}

	public int unFollow(sns_followDTO follow) {
		SqlSession session = factory.openSession(true);
		int cnt = session.delete("unFollow", follow);
		session.close();
		return cnt;
	}

}
