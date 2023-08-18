package com.smhrd.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.database.SqlSessionManager;
import com.smhrd.entity.sns_chatDTO;

public class sns_ChatDAO {
	private SqlSessionFactory factory = SqlSessionManager.getSqlSessionFactory();

	public List<sns_chatDTO> loadChat(sns_chatDTO chat) {
		SqlSession session = factory.openSession(true);
		List<sns_chatDTO> list = null;
		try {
			list = session.selectList("loadChat", chat);
			System.out.println(list.size()+"개 있어");
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("채팅 불러오기 오류!");
		}
		session.close();
		return list;

	}

	public int saveChat(sns_chatDTO chat) {
		SqlSession session = factory.openSession(true);
		int cnt = session.insert("saveChat", chat);
		session.close();
		return cnt;
	}

}
