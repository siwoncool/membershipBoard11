package com.siwon.mbp.dto;

import lombok.Data;

@Data
public class PAGE {
	private int page;
	private int maxPage;
	private int startPage;
	private int endPage;
	private int startRow;
	private int endRow;
	private int limit;
	
	private String boardCotegery;
}
