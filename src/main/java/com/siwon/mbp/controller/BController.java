package com.siwon.mbp.controller;

import java.io.IOException;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.siwon.mbp.dto.BOARD;
import com.siwon.mbp.dto.MEMBER;
import com.siwon.mbp.dto.SEARCH;
import com.siwon.mbp.service.BService;

@Controller
public class BController {
	private ModelAndView mav = new ModelAndView();

	@Autowired
	private BService bsvc;

	@Autowired
	private HttpSession session;
	
	
	// bWriteForm : 게시물작성 페이지
	@RequestMapping(value = "/bWriteForm", method = RequestMethod.GET)
	public String bWriteForm() {
		return "B_Write";
	}
	
	// bWrite : 게시물 등록
	@RequestMapping(value = "/bWrite", method = RequestMethod.POST)
	public ModelAndView bWrite(@ModelAttribute BOARD board) throws IllegalStateException, IOException {
		
		mav = bsvc.bWrite(board);
		return mav;
	}
	// bList : 게시물목록
	@RequestMapping(value = "/bList", method = RequestMethod.GET)
	public ModelAndView bList(@RequestParam(value = "page", required = false, defaultValue = "1") int page,@RequestParam(value = "boardCotegery") String boardCotegery)
	{
		System.out.println("boardCategory :" + boardCotegery);
		mav = bsvc.bList(page,boardCotegery);
		return mav;
	}
	// bSearch : 회원검색
	@RequestMapping(value = "/bSearch", method = RequestMethod.GET)
	public ModelAndView bSearch(@ModelAttribute SEARCH search) {
		mav = bsvc.bSearch(search);
		return mav;
	}
	// bView : 게시글 상세보기
	@RequestMapping(value = "/bView", method = RequestMethod.GET)
	public ModelAndView bView(@RequestParam("boNum") int boNum) {
		mav = bsvc.bView(boNum);
		return mav;
	}
	// bModiForm : 게시글수정페이지
		@RequestMapping(value = "/bModiForm", method = RequestMethod.GET)
		public ModelAndView bModiForm(@RequestParam("boNum") int boNum) {
			mav = bsvc.bModiForm(boNum);
			return mav;
		}

		// bModify : 게시글수정
		@RequestMapping(value = "/bModify", method = RequestMethod.POST)
		public ModelAndView bModify(@ModelAttribute BOARD board) throws IllegalStateException, IOException {
			mav = bsvc.bModify(board);
			return mav;
		}
	
}
