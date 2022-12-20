package com.siwon.mbp.dto;

import java.sql.Date;

import org.springframework.web.multipart.MultipartFile;

import lombok.Data;

@Data
public class BOARD {
	private String boWriter;
	private String boTitle;
	private String boContent;
	private	Date boDate;
	
	private int boNum;
	private int boHit;
	
	private MultipartFile boFile;
	private String boFileName;
}

