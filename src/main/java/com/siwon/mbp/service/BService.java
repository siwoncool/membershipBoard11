package com.siwon.mbp.service;

import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.siwon.mbp.dao.BDAO;
import com.siwon.mbp.dto.BOARD;
import com.siwon.mbp.dto.MEMBER;
import com.siwon.mbp.dto.PAGE;
import com.siwon.mbp.dto.SEARCH;

@Service
public class BService {
	
	ModelAndView mav = new ModelAndView();
	@Autowired
	private BDAO bdao;

	@Autowired
	private HttpSession session;

	@Autowired
	private HttpServletRequest request;

	
	
	public ModelAndView bWrite(BOARD board) throws IllegalStateException, IOException {
		
		MultipartFile bFile= board.getBoFile();
		
		UUID  uuid = UUID.randomUUID();
		
		
			// 랜덤한 식별 문자 uuid.toString().substring(0,8)과 실제 파일이름을 합친 것
			String fileName = uuid.toString().substring(0, 8) + "_" + bFile.getOriginalFilename();

			

			// 저장 경로에 파일을 업로드한다.
			String savePath = request.getServletContext().getRealPath("/resources/fileUpload/");
			// 만약에 업로드 파일이 없다면
			if (!bFile.isEmpty()) {

			bFile.transferTo(new File(savePath+fileName));
			// board객체에 생성한 업로드한 파일 이름을 저장한다
			board.setBoFileName(fileName);

		}
		
		int result = bdao.bWrite(board);
		
		
		if(result>0) {
			mav.addObject("board",board);
			mav.setViewName("index");
		}else {
			mav.setViewName("B_Write");
		}
		
		
		
		return mav;
	}



	public ModelAndView bList(int page, String boardCotegery) {
		// 페이지번호 갯수
		int block = 5;
		
		// 회원목록 갯수
		int limit = 5;
		
		// 전체회원수
		int mCount = bdao.bCount();
		
		int maxPage = (int) (Math.ceil((double)mCount / limit));
		
		// 현재 페이지가 maxPage보다 클경우 현재 페이지를 maxPage의 값으로 대체
		if(page > maxPage) {
			page = maxPage;
		}
		
		int startRow = (page - 1) * limit + 1;
		int endRow = page * limit;
		
		int startPage = (((int)(Math.ceil((double) page / block ))) - 1) * block + 1;
		int endPage = startPage + block - 1;
		
		if(endPage > maxPage) {
			endPage = maxPage;
		}
		
		PAGE paging = new PAGE();
		
		paging.setPage(page);
		paging.setStartRow(startRow);
		paging.setEndRow(endRow);
		paging.setMaxPage(maxPage);
		paging.setStartPage(startPage);
		paging.setEndPage(endPage);
		paging.setLimit(limit);
		
		paging.setBoardCotegery(boardCotegery);
		
		List<BOARD> board = bdao.bList(paging);
		mav.addObject("board", board);
		mav.addObject("paging", paging);
		
		mav.setViewName("B_List");
		
		return mav;
	}

public ModelAndView bSearch(SEARCH search) {
		
	List<BOARD> board = bdao.bSearch(search);
		
		mav.addObject("board", board);
		System.out.println(board);
		mav.setViewName("SB_List");
		
		return mav;
	}



public ModelAndView bView(int boNum) {
	
	BOARD board = bdao.bView(boNum);
	mav.addObject("view", board);
	mav.setViewName("B_View");
	
	return mav;
}



public ModelAndView bModiForm(int boNum) {
	BOARD board = bdao.bView(boNum);

	mav.addObject("board", board);
	mav.setViewName("B_Modify");
	
	return mav;
}

public ModelAndView bModify(BOARD board) throws IllegalStateException, IOException {
	
	MultipartFile bFile= board.getBoFile();
	
	UUID  uuid = UUID.randomUUID();
	
	
		// 랜덤한 식별 문자 uuid.toString().substring(0,8)과 실제 파일이름을 합친 것
		String fileName = uuid.toString().substring(0, 8) + "_" + bFile.getOriginalFilename();

		

		// 저장 경로에 파일을 업로드한다.
		String savePath = request.getServletContext().getRealPath("/resources/fileUpload/");
		
		if (!bFile.isEmpty()) {
			// 기존 파일 삭제
			String deletePath ="C:\\Users\\user\\Desktop\\MembershipBoard\\src\\main\\webapp\\resources\\profile\\"
					+ board.getBoFileName();
			
			File deleteFile = new File(deletePath);
			
			if(deleteFile.exists()) {
				deleteFile.delete();
				System.out.println("기존 파일 삭제 성공!");
			} else {
				System.out.println("기존 파일 삭제 실패!");
			}
			
			bFile.transferTo(new File(savePath + fileName));
			board.setBoFileName(fileName);
		}
		int result = bdao.bModify(board);
		
		
		if(result>0) {
			mav.addObject("board",board);
			mav.setViewName("index");
		}else {
			mav.setViewName("B_Write");
		
			}
		return mav;
		
}
	

	
	
	

}
	


