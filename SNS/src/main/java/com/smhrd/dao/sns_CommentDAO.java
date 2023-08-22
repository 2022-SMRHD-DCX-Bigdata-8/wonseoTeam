package com.smhrd.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.database.SqlSessionManager;
import com.smhrd.entity.sns_commentDTO;

public class sns_CommentDAO {
	private SqlSessionFactory factory = SqlSessionManager.getSqlSessionFactory();

	public int saveCmt(sns_commentDTO dto) {
		SqlSession session = factory.openSession(true);
		int cnt = session.insert("saveCmt", dto);
		session.close();
		return cnt;
	}

	public List<sns_commentDTO> loadCmt(sns_commentDTO dto) {
		SqlSession session = factory.openSession(true);
		List<sns_commentDTO> list = null;
		System.out.println("여기까지는 와잉");
		try {
			list = session.selectList("loadCmt", dto);
			System.out.println(list.size() + "개 있어");
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("채팅 불러오기 오류!");
		}
		session.close();
		return list;
	}

}
