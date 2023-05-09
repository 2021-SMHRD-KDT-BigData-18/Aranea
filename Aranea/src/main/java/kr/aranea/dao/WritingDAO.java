package kr.aranea.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import kr.aranea.entity.Writing;

public class WritingDAO {

	private SqlSessionFactory factory = SqlSessionManager.getSqlSessionFactory();

	// 판매글 작성
	public int write(Writing dto) {
		SqlSession session = factory.openSession(true);
		int row = session.insert("write", dto);
		session.close();
		return row;
	}

	// 판매글 작성 후 조회
	public List<Writing> main() {
		SqlSession session = factory.openSession(true);
		List<Writing> list = session.selectList("main");
		session.close();
		return list;
	}

	// 메인페이지에서 판매글 조회
	public Writing view(int num) {
		SqlSession session = factory.openSession(true);
		Writing list = session.selectOne("view", num);
		session.close();
		return list;
	}

}
