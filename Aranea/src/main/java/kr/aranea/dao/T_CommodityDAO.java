package kr.aranea.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import kr.aranea.entity.T_Commodity;

public class T_CommodityDAO {

	private SqlSessionFactory factory = 
			SqlSessionManager.getSqlSessionFactory();

	// 판매글 작성
	public int write(T_Commodity dto) {
		SqlSession session = factory.openSession(true);
		int row = session.insert("write", dto);
		session.close();
		return row;
	}
	
	// GoMainCON에서 판매글 조회
	public List<T_Commodity> main() {
		SqlSession session = factory.openSession(true);
		List<T_Commodity> list = session.selectList("main");
		session.close();
		return list;
	}
	
	// 메인페이지에서 판매글 클릭 후 내용 보이는 메소드
	public T_Commodity view(int cm_seq) {
		SqlSession session = factory.openSession(true);
		T_Commodity list = session.selectOne("view", cm_seq);
		session.close();
		return list;
	}

}
