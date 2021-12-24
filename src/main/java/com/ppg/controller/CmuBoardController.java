package com.ppg.controller;


import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.ppg.commu.domain.CmuBoardCriteria;
import com.ppg.commu.domain.CmuBoardVO;
import com.ppg.commu.domain.CmuCommentVO;
import com.ppg.commu.domain.CmuPageDTO;
import com.ppg.commu.service.CmuBoardService;

import lombok.AllArgsConstructor;
import lombok.Setter;
import lombok.extern.log4j.Log4j;


@Controller
@Log4j
@RequestMapping("/community/*")
@AllArgsConstructor
public class CmuBoardController {
	private CmuBoardService cmuBoardService;
	
	@GetMapping("/reviewBoard")
	public String boardReviewList(CmuBoardCriteria cri, Model model) {
		model.addAttribute("reviewBoardList", cmuBoardService.getReviewBoardList(cri));
		int total = cmuBoardService.getTotal(cri);
		model.addAttribute("pageMaker", new CmuPageDTO(cri, total));
		
		return "/community/board_review/board_review";
	}
	

	@GetMapping("/reviewBoard/postView")
	public String getPost(@RequestParam("postNum") int postNum, @ModelAttribute("cri") CmuBoardCriteria cri, Model model) {
		cmuBoardService.updateWatcher(postNum);
		model.addAttribute("boardPost", cmuBoardService.getPost(postNum));
		model.addAttribute("commentList", cmuBoardService.getCommentList(postNum));
		
		return "/community/board_review/board_post_view";
	}
	
	@GetMapping("/reviewBoard/writePost")
	public String writePost() {
		return "/community/board_review/board_write_post";
	}
	
	@PostMapping("/reviewBoard/writePost")
	public String writePost(CmuBoardVO board, RedirectAttributes rttr) {
		cmuBoardService.writePost(board);
		rttr.addFlashAttribute("result", board.getPostNum());
		
		return "redirect:/community/reviewBoard";
	}
	
	@PostMapping("/reviewBoard/writeComment")
	public String writeComment(CmuCommentVO comment, RedirectAttributes rttr) {
		int postNum = comment.getPostNum();
		
		cmuBoardService.regComment(comment);
		cmuBoardService.updateReply(postNum);
		rttr.addFlashAttribute("result", comment.getCommentNum());
		
		return "redirect:/community/reviewBoard/postView?postNum=" + postNum;
	}
	
//	@GetMapping("/removeComment")
//	public String removeComment(@RequestParam("postNum") CmuCommentVO postNum, @RequestParam("commentNum") CmuCommentVO commentNum, RedirectAttributes rttr) {
//		cmuBoardService.delComment(commentNum);
//		cmuBoardService.decReply(postNum);
//		
//		return "redirect:/community/postView?postNum=" + postNum;
//	}
	
	@GetMapping("/reviewBoard/removeComment")
	public String removeComment(@RequestParam("postNum") int postNum, @RequestParam("commentNum") int commentNum, RedirectAttributes rttr) {
		cmuBoardService.delComment(commentNum);
		cmuBoardService.decReply(postNum);
		
		return "redirect:/community/reviewBoard/postView?postNum=" + postNum;
	}
	
	
	@GetMapping("/reviewBoard/removePost")
	public String removePost(@RequestParam("postNum") int postNum, RedirectAttributes rttr) {
		cmuBoardService.remove(postNum);
		
		return "redirect:/community/reviewBoard";
	}
	
//	@PostMapping("/removePost")
//	public String remove(@RequestParam("postNum") int postNum, RedirectAttributes rttr) {
//		if(cmuBoardService.remove(postNum)) {
//			rttr.addFlashAttribute("result", "success");
//		}
//		
//		return "redirect:/community/reviewBoard";
//	}
	
	@GetMapping("/reviewBoard/modPost")
	public String modPost(@RequestParam("postNum") int postNum, Model model) {
		model.addAttribute("board", cmuBoardService.getPost(postNum));
		
		return "/community/board_review/board_mod_post";
	}
	
	@PostMapping("/reviewBoard/modPost")
	public String modify(CmuBoardVO board, RedirectAttributes rttr) {
		if(cmuBoardService.modify(board)) {
			rttr.addFlashAttribute("result", "success");
		}
		
		return "redirect:/community/reviewBoard";
	}
}
