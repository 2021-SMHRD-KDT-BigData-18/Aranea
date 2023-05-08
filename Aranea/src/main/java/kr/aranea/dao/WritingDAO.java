package kr.aranea.dao;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import kr.aranea.entity.Writing;

public class WritingDAO {
	
	private SqlSessionFactory factory =
			SqlSessionManager.getSqlSessionFactory();

	// 판매글 작성
	public int write(Writing dto) {
		SqlSession session = factory.openSession(true);
		int row = session.insert("write", dto);
		session.close();
		return row;
	}
	
	// 판매글 조회
	
}
