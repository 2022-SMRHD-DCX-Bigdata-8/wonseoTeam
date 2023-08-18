package com.smhrd.dao;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.database.SqlSessionManager;
import com.smhrd.entity.sns_roomDTO;

public class sns_roomDAO {
	private SqlSessionFactory factory = SqlSessionManager.getSqlSessionFactory();

	public sns_roomDTO searchRoom(sns_roomDTO room) {
		SqlSession session = factory.openSession(true);

		sns_roomDTO result = null;
		try {
			result = session.selectOne("searchRoom", room);
		} catch (Exception e) {
			System.out.println("둘이 있는 방은 없어요");
		}
		session.close();

		return result;
	}

	public int createRoom(sns_roomDTO room) {
		SqlSession session = factory.openSession(true);

		int cnt = session.insert("createRoom", room);

		session.close();

		return cnt;
	}

}
