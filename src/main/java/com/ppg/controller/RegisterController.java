package com.ppg.controller;

import javax.inject.Inject;

import org.mindrot.jbcrypt.BCrypt;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.ppg.main.domain.MemberVO;
import com.ppg.main.service.MemberService;

@Controller
@RequestMapping("/user")
public class RegisterController {

	private final MemberService memberService;

	@Inject
	public RegisterController(MemberService memberService) {
		this.memberService = memberService;
	}

	// 회원가입 페이지
	@GetMapping("/register")
	public String registerGET() throws Exception {
		return "/user/signup";
	}

	// 회원가입 처리
	@PostMapping("/register")
	public String registerPOST(MemberVO memberVO, RedirectAttributes redirectAttributes) throws Exception {
//		회원의 객체정보(MemberVO) 중에서 비밀번호(password)를 암호화 하는 작업을 수행
		String hashedPw = BCrypt.hashpw(memberVO.getPassword(), BCrypt.gensalt());
//		첫번째 파라미터에는 암호화할 비밀번호를 두번째 파라미터는 BCrypt.gensalt()를 받고 암호화된 비밀번호를 반환
		memberVO.setPassword(hashedPw);
		memberService.register(memberVO);
		redirectAttributes.addFlashAttribute("msg", "REGISTERED");
		return "redirect:/user/login";

	}
}
