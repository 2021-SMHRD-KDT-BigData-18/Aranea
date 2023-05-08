package kr.aranea.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import kr.aranea.entity.Account;
import kr.aranea.entity.Writing;

public class AccountDAO {
	
	// DB에 연결
	private SqlSessionFactory factory =
			SqlSessionManager.getSqlSessionFactory();
	
	// 회원정보를 CREATEUSER 테이블에 저장하는 기능
	public int create(Account dto) {
		SqlSession session = factory.openSession(true);
		
		int row = session.insert("create", dto);
		
		session.close();
		
		return row;
	}
	
	
	// 로그인
	public Account login(Account dto) {
		SqlSession session = factory.openSession(true);
		
		Account user = session.selectOne("login", dto);
		
		session.close();
		
		return user;
	}
	
	// 아이디 찾기
	public Account searchid(Account dto) {
		SqlSession session = factory.openSession(true);
		
		Account user = session.selectOne("searchid", dto);
		
		session.close();
		
		return user;
	}
	
	
	// 비밀번호 찾기
	public int searchpw(Account dto) {
		SqlSession session = factory.openSession(true);
		
		int row = session.update("searchpw", dto);
		
		session.close();
		
		return row;
	}
	
	// 판매글 작성
	public int writing(Writing dto) {
		SqlSession session = factory.openSession(true);
		
		int row = session.insert("writing", dto);
		
		session.close();
		
		return row;
	}
	
}
