package kr.aranea.dao;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import kr.aranea.entity.T_User;

public class T_UserDAO {

	private SqlSessionFactory factory =
			SqlSessionManager.getSqlSessionFactory();
	
	// 회원가입
	public int create(T_User dto) {
		SqlSession session = factory.openSession(true);
		int row = session.insert("create", dto);
		session.close();
		return row;
	}
	
	
	// 로그인
		public T_User login(T_User dto) {
			SqlSession session = factory.openSession(true);
			
			T_User user = session.selectOne("login", dto);
			
			session.close();
			
			return user;
		}
	
	
}
