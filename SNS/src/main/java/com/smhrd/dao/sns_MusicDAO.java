package com.smhrd.dao;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.database.SqlSessionManager;
import com.smhrd.entity.sns_musicDTO;

public class sns_MusicDAO {
	private SqlSessionFactory factory = SqlSessionManager.getSqlSessionFactory();

	public int write(sns_musicDTO music) {
		SqlSession session = factory.openSession(true);
		int cnt = session.insert("write", music);
		session.close();
		return cnt;
	}

}
