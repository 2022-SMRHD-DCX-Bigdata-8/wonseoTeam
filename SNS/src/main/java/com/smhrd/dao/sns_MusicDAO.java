package com.smhrd.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.database.SqlSessionManager;
import com.smhrd.entity.sns_musicDTO;
import com.smhrd.entity.sns_userDTO;

public class sns_MusicDAO {
	private SqlSessionFactory factory = SqlSessionManager.getSqlSessionFactory();

	public int write(sns_musicDTO music) {
		SqlSession session = factory.openSession(true);
		int cnt = session.insert("write", music);
		session.close();
		return cnt;
	}

	public List<sns_musicDTO> searchTitle(String search) {
		SqlSession session = factory.openSession(true);
		List<sns_musicDTO> list = session.selectList("searchTitle", search);
		session.close();
		return list;
	}

}
