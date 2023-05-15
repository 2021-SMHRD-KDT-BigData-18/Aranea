package kr.aranea.dao;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import kr.aranea.entity.T_Location;

public class T_LoctionDAO {

	private SqlSessionFactory factory = SqlSessionManager.getSqlSessionFactory();

	// 지도 정보 db에 저장
	public int insert(T_Location dto) {
		SqlSession session = factory.openSession(true);
		int row = session.insert("insert", dto);
		session.close();
		return row;
	}

	// 장소명 db에서 불러오기
	public T_Location select(String loc_name) {
		SqlSession session = factory.openSession(true);
		T_Location name = session.selectOne("select", loc_name);
		session.close();
		return name;
	}

}
