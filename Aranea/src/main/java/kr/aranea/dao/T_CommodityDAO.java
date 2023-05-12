package kr.aranea.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import kr.aranea.entity.T_Commodity;

public class T_CommodityDAO {

	private SqlSessionFactory factory = SqlSessionManager.getSqlSessionFactory();

	// 판매글 작성
	public int write(T_Commodity dto) {
		SqlSession session = factory.openSession(true);
		int row = session.insert("write", dto);
		session.close();
		return row;
	}

}
