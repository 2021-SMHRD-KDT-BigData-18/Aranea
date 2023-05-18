package kr.aranea.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import kr.aranea.entity.T_Commodity;
import kr.aranea.entity.T_Like;

public class T_LikeDAO {

	private SqlSessionFactory factory = SqlSessionManager.getSqlSessionFactory();

	// 찜한 상품 등록
	public int insert(T_Like dto) {
		SqlSession session = factory.openSession(true);
		int row = session.insert("inst", dto);
		session.close();
		return row;
	}

	// 찜한 상품 출력
	public List<T_Like> book(String user_id) {
		SqlSession session = factory.openSession(true);
		List<T_Like> list = session.selectList("bookmark", user_id);
		session.close();
		return list;
	}

}
