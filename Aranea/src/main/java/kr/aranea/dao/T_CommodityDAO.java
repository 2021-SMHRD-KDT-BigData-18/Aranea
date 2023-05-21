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

	// GoMainCON에서 판매글 조회
	public List<T_Commodity> main() {
		SqlSession session = factory.openSession(true);
		List<T_Commodity> list = session.selectList("main");
		session.close();
		return list;
	}

	// 판매글 클릭 후 내용 보여주는 코드
	public T_Commodity view(int cm_seq) {
		SqlSession session = factory.openSession(true);
		T_Commodity list = session.selectOne("view", cm_seq);
		session.close();
		return list;
	}

	// 카테고리 클릭 후 판매글 조회
	public List<T_Commodity> category(String cm_category) {
		SqlSession session = factory.openSession(true);
		List<T_Commodity> list = session.selectList("category", cm_category);
		session.close();
		return list;
	}

	// 판매내역 리스트 조회
	public List<T_Commodity> sellingLIst(String user_id) {
		SqlSession session = factory.openSession(true);
		List<T_Commodity> list = session.selectList("sellingList", user_id);
		session.close();
		return list;
	}

	// 키워드 검색 후 판매글 조회
	public List<T_Commodity> searchList(T_Commodity dto) {
		SqlSession session = factory.openSession(true);
		List<T_Commodity> list = session.selectList("searchList", dto);
		session.close();
		return list;
	}

}
