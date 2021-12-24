package com.ppg.main.service;

import java.util.Date;

import javax.inject.Inject;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ppg.main.domain.LoginDTO;
import com.ppg.main.domain.MemberVO;
import com.ppg.main.persistence.MemberDAO;

import lombok.Setter;

@Service
public class MemberServiceImpl implements MemberService{
	
	private final MemberDAO memberDAO;
	
	@Inject
	public MemberServiceImpl(MemberDAO memberDAO) {
		this.memberDAO = memberDAO;
	}

	//회원가입 처리
	@Override
	public void register(MemberVO memberVO) throws Exception {

		memberDAO.register(memberVO);
	}

	//로그인 처리
	@Override
	public MemberVO login(LoginDTO loginDTO) throws Exception {
		return memberDAO.login(loginDTO);
	}

	// 회원정보 수정처리
	@Override
	public void modifyUser(MemberVO memberVO) throws Exception {
		memberDAO.updateUser(memberVO);
		
	}

	// 회원 비밀번호
	@Override
	public MemberVO getUser(String id) throws Exception {
		return memberDAO.getUser(id);

	}

	// 회원비밀번호 수정처리
	@Override
	public void modifyPw(MemberVO memberVO) throws Exception {
		memberDAO.updatePw(memberVO);
		
	}

	// 회원 프로필 사진 수정
	@Override
	public void modifyUimage(String id, String user_img) throws Exception {
		memberDAO.updateUimage(id, user_img);
	}

}
