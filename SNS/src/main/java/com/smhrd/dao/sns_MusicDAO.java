package com.smhrd.dao;

import java.util.ArrayList;
import java.util.List;

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

	public List<sns_musicDTO> searchTitle(String search) {
		SqlSession session = factory.openSession(true);
		List<sns_musicDTO> list = session.selectList("searchTitle", search);
		session.close();
		return list;
	}

	public List<sns_musicDTO> post() {
		SqlSession session = factory.openSession(true);
		List<sns_musicDTO> list = session.selectList("post");
		session.close();
		return list;
	}

	public sns_musicDTO viewMusic(String titlex) {
		SqlSession session = factory.openSession(true);
		sns_musicDTO music = session.selectOne("viewMusic", titlex);
		session.close();
		return music;
	}

	public List<sns_musicDTO> loadMusic(String id) {
		SqlSession session = factory.openSession(true);
		List<sns_musicDTO> list = session.selectList("loadMusic", id);
		session.close();
		return list;
	}

}
