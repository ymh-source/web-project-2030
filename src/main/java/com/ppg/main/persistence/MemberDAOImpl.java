package com.ppg.main.persistence;

import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ppg.main.domain.LoginDTO;
import com.ppg.main.domain.MemberVO;

@Repository
public class MemberDAOImpl implements MemberDAO {

	private static final String NAMESPACE = "com.ppg.main.mapper.member.MemberMapper";

	private final SqlSession sqlSession;

	@Autowired
	public MemberDAOImpl(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}

	// 회원가입 처리
	@Override
	public void register(MemberVO memberVO) throws Exception {
		sqlSession.insert(NAMESPACE + ".register", memberVO);
	}

	// 로그인 처리
	@Override
	public MemberVO login(LoginDTO loginDTO) throws Exception {
		return sqlSession.selectOne(NAMESPACE + ".login", loginDTO);
	}

	// 세션키 검증
	@Override
	public MemberVO checkUserWithSessionKey(String value) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	//회원정보 수정 처리
	@Override
	public void updateUser(MemberVO memberVO) throws Exception {
		sqlSession.update(NAMESPACE + ".updateUser", memberVO);
	}

	// 회원 비밀번호
	@Override
	public MemberVO getUser(String id) throws Exception {
		return sqlSession.selectOne(NAMESPACE + ".getUser", id);
	}
	
	// 회원비밀번호 수정처리
	@Override
	public void updatePw(MemberVO memberVO) throws Exception {
		sqlSession.update(NAMESPACE + ".updatePw", memberVO);
	}

	// 회원 프로필 사진 수정
	@Override
	public void updateUimage(String id, String user_img) throws Exception {
		Map<String, Object> paramMap = new HashMap<String, Object>();
		paramMap.put("id", id);
		paramMap.put("user_img", user_img);
		sqlSession.update(NAMESPACE + ".updateUimage", paramMap);
	}

}
