package kr.aranea.dao;

import org.apache.ibatis.session.SqlSessionFactory;

public class T_CommidtyDAO {

	private SqlSessionFactory factory =
			SqlSessionManager.getSqlSessionFactory();
}
