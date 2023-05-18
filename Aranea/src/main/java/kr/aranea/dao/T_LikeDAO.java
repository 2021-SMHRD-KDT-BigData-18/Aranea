package kr.aranea.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import kr.aranea.entity.T_Like;

public class T_LikeDAO {

	private SqlSessionFactory factory =
			SqlSessionManager.getSqlSessionFactory();

	
	public int insert(T_Like dto) {
		SqlSession session = factory.openSession(true);
		int row = session.insert("inst", dto);
		session.close();
		return row;
	}
	
	
}
