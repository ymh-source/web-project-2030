package com.ppg.policy.persistence;

import java.util.List;


import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.ppg.policy.domain.PolicyVO;


@Repository
public class PolicyDAOlmpl implements PolicyDAO{
	
	private static final String NAMESPACE = "com.ppg.persistence";
	private final SqlSession sqlSession;
	
	@Inject
	public PolicyDAOlmpl(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}



	@Override
	public PolicyVO getHotList(String dept) throws Exception {
		return sqlSession.selectOne(NAMESPACE + ".getHotList", dept) ;
	}

}
