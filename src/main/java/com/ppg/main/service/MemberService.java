package com.ppg.main.service;

import java.util.Date;

import com.ppg.main.domain.LoginDTO;
import com.ppg.main.domain.MemberVO;

public interface MemberService {

	// 회원 가입 처리
	void register(MemberVO memberVO) throws Exception;

	// 로그인 처리
	MemberVO login(LoginDTO loginDTO) throws Exception;

	// 회원정보 수정처리
	public void modifyUser(MemberVO memberVO) throws Exception;
	
	// 회원 정보
	public MemberVO getUser(String id) throws Exception;
	
	// 회원비밀번호 수정처리
	public void modifyPw(MemberVO memberVO) throws Exception;
	
	// 회원 프로필 사진 수정
	public void modifyUimage(String id, String user_img) throws Exception;


}
