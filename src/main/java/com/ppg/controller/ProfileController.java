package com.ppg.controller;

import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.request;

import javax.annotation.Resource;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.mindrot.jbcrypt.BCrypt;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.ppg.main.commons.util.UploadFileUtils;
import com.ppg.main.domain.MemberVO;
import com.ppg.main.service.MemberService;

@Controller
@RequestMapping("/user")
public class ProfileController {

	private static final Logger logger = LoggerFactory.getLogger(ProfileController.class);

	@Inject
	private MemberService memberService;

	@Resource(name = "ProfileImgPath")
	private String ProfileImgPath;

	// 회원 프로필 이미지 수정처리
	@RequestMapping(value = "/modify/image", method = RequestMethod.POST)
	public String userImgModify(String id, MultipartFile file, HttpSession session,
			RedirectAttributes redirectAttributes) throws Exception {
		if (file == null) {
			redirectAttributes.addFlashAttribute("msg", "FAIL");
			return "redirect:/user/profile";
		}
		String uploadFile = UploadFileUtils.uploadFile(ProfileImgPath, file.getOriginalFilename(), file.getBytes());
		String front = uploadFile.substring(0, 12);
		String end = uploadFile.substring(14);
		String user_img = front + end;
		memberService.modifyUimage(id, user_img);
		Object userObj = session.getAttribute("login");
		MemberVO memberVO = (MemberVO) userObj;
		memberVO.setUser_img(user_img);
		session.setAttribute("login", memberVO);
		redirectAttributes.addFlashAttribute("msg", "SUCCESS");
		return "redirect:/user/profile";
	}

	// 회원정보 수정처리
	@RequestMapping(value = "/modify/info", method = RequestMethod.POST)
	public String userInfoModify(MemberVO memberVO, HttpSession session, RedirectAttributes redirectAttributes)
			throws Exception {
		logger.info(memberVO.toString());
		MemberVO oldUserInfo = memberService.getUser(memberVO.getId());
		logger.info(oldUserInfo.toString());
		logger.info("1");
		if (!BCrypt.checkpw(memberVO.getPassword(), oldUserInfo.getPassword())) {
			redirectAttributes.addFlashAttribute("msg", "FAILURE");
			logger.info("2");
			return "redirect:/user/profile";
		}
		logger.info("3");
		memberService.modifyUser(memberVO);
		memberVO.setJoin_date(oldUserInfo.getJoin_date());
		memberVO.setUser_img(oldUserInfo.getUser_img());
		session.setAttribute("login", memberVO);
		redirectAttributes.addFlashAttribute("msg", "SUCCESS");
		return "redirect:/user/profile";
	}

	// 회원 비밀번호 수정처리
	@RequestMapping(value = "/modify/pw", method = RequestMethod.POST)
	public String userPwModify(@RequestParam("id") String id, @RequestParam("oldPw") String oldPw,
			@RequestParam("newPw") String newPw, HttpSession session, RedirectAttributes redirectAttributes)
			throws Exception {
		MemberVO userInfo = memberService.getUser(id);
		if (!BCrypt.checkpw(oldPw, userInfo.getPassword())) {
			redirectAttributes.addFlashAttribute("msg", "FAILURE");
			return "redirect:/user/profile";
		}

		String newHashPw = BCrypt.hashpw(newPw, BCrypt.gensalt());
		userInfo.setPassword(newHashPw);
		memberService.modifyPw(userInfo);
		session.setAttribute("login", userInfo);
		redirectAttributes.addFlashAttribute("msg", "SUCCESS");
		return "redirect:/user/profile";
	}

////	 닉네임 변경 페이지
//	@PostMapping("/nicknameUpdate")
//	public String profile(HttpSession session, Model model) throws Exception {
//		action = new ProfileUpdateAction();
//		try {
//			forward = action.execute(request,response);
//		} catch (Exception e) {
//			e.printStackTrace();
//		} {
//	}
//
//	}
}
