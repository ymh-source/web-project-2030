package com.ppg.main.persistence;

import java.util.Date;

import org.springframework.stereotype.Repository;

import com.ppg.main.domain.LoginDTO;
import com.ppg.main.domain.MemberVO;

@Repository
public interface MemberDAO {
	// 회원가입 처리
	void register(MemberVO memberVO) throws Exception;

	// 로그인 처리
	MemberVO login(LoginDTO loginDTO) throws Exception;
	
	// 세션키 검증 
	MemberVO checkUserWithSessionKey(String value) throws Exception;
	
	// 회원정보 수정처리
	public void updateUser(MemberVO memberVO) throws Exception;
	// 회원 비밀번호
	public MemberVO getUser(String id) throws Exception;
	// 회원비밀번호 수정처리
	public void updatePw(MemberVO memberVO) throws Exception;
	// 회원 프로필 사진 수정
	public void updateUimage(String id, String user_img) throws Exception;


}
