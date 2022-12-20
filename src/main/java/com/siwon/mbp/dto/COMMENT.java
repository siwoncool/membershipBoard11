package com.siwon.mbp.dto;

import java.sql.Date;

import lombok.Data;

@Data
public class COMMENT {
	private int cmtNum;				// 댓글번호
	private int cbNum;				// 게시글번호
	private String cmtWriter;		// 댓글작성자
	private String cmtContent;		// 댓글내용
	private Date cmtDate;			// 댓글작성일
}
