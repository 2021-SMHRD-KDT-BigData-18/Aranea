package kr.aranea.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import kr.aranea.entity.T_Chat;
import kr.aranea.entity.T_Commodity;
import kr.aranea.entity.T_Need_Spider;

public class T_Need_spiderDAO {

	private SqlSessionFactory factory = SqlSessionManager.getSqlSessionFactory();
	
	// 채팅 db에 저장
	public int spider(T_Need_Spider dto) {
		SqlSession session = factory.openSession(true);
		int row = session.insert("spider", dto);
		session.close();
		return row;
	}
	
	public List<T_Need_Spider> spiderview() {
		SqlSession session = factory.openSession(true);
		List<T_Need_Spider> list = session.selectList("spiderview");
		session.close();
		return list;
	}
		
}
