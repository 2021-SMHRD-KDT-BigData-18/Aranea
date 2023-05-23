package kr.aranea.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import kr.aranea.entity.T_Chat;

public class T_ChatDAO {

	private SqlSessionFactory factory = SqlSessionManager.getSqlSessionFactory();
	
	// 채팅 db에 저장
	public int insertChat(T_Chat dto) {
		SqlSession session = factory.openSession(true);
		int row = session.insert("insertChat", dto);
		session.close();
		return row;
	}
	
	// 채팅 조회
//	public List<T_Chat> selectChat(String user_id) {
//		SqlSession session = factory.openSession(true);
//		List<T_Chat> list = session.selectList("selectChat", user_id);
//		session.close();
//		return list;
//	}
	public List<T_Chat> selectChat(String user_id) {
		SqlSession session = factory.openSession(true);
		List<T_Chat> list = session.selectList("selectChat", user_id);
		session.close();
		return list;
	}
	
	
	// 채팅클릭 후 내용 조회
	public T_Chat chatContent(String chat_urlpath) {
		SqlSession session = factory.openSession(true);
		T_Chat list = session.selectOne("chatContent", chat_urlpath);
		session.close();
		return list;
	}
	public List<T_Chat> chatContent1(String chat_urlpath) {
		SqlSession session = factory.openSession(true);
		List<T_Chat> list = session.selectList("chatContent1", chat_urlpath);
		session.close();
		return list;
	}
	
}
