package kr.aranea.dao;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import kr.aranea.entity.T_User;

public class T_UserDAO {

	private SqlSessionFactory factory = SqlSessionManager.getSqlSessionFactory();

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

	// 아이디 찾기
	public T_User searchId(T_User dto) {
		SqlSession session = factory.openSession(true);
		T_User user = session.selectOne("searchId", dto);
		session.close();
		return user;
	}

	// 비밀번호 찾기
	public int searchPw(T_User dto) {
		SqlSession session = factory.openSession(true);
		int row = session.update("searchPw", dto);
		session.close();
		return row;
	}

	// 마이페이지 정보 수정
	public int updateInfo(T_User dto) {
		SqlSession session = factory.openSession(true);
		int row = session.update("updateInfo", dto);
		session.close();
		return row;
	}

	// 정보수정 후 수정된 데이터들로 조회
	public T_User selectUi(String user_id) {
		SqlSession session = factory.openSession(true);
		T_User list = session.selectOne("selectUi", user_id);
		session.close();
		return list;
	}

	// 아이디 중복체크
	public T_User check(String user_id) {
		SqlSession session = factory.openSession(true);
		T_User list = session.selectOne("selectUi", user_id);
		session.close();
		return list;

	}

	// 닉네임 중복
	public T_User check1(String user_name) {
		SqlSession session = factory.openSession(true);
		T_User list = session.selectOne("selectUi", user_name);
		session.close();
		return list;

	}

	// 스파이더맨 신청 시 'y'로 변경
	public int spiderman(T_User dto) {
		SqlSession session = factory.openSession(true);
		int row = session.update("spiderman", dto);
		session.close();
		return row;
	}

}
