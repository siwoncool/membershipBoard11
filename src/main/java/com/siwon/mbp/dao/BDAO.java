package com.siwon.mbp.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.siwon.mbp.dto.BOARD;
import com.siwon.mbp.dto.MEMBER;
import com.siwon.mbp.dto.PAGE;
import com.siwon.mbp.dto.SEARCH;

@Repository
public class BDAO {
	@Autowired
	private SqlSessionTemplate sql;
	public int bWrite(BOARD board) {
		return sql.insert("Board.bWrite",board);
	}
	public List<BOARD> bList(PAGE paging) {
		
		
		return sql.selectList("Board.bList",paging);
	}
	public int bCount() {

		return sql.selectOne("Board.bCount");
	}
	public List<BOARD> bSearch(SEARCH search) {
		
		return sql.selectList("Board.bSearch", search);
	}
	public BOARD bView(int boNum) {
		
		sql.update("Board.bNum",boNum);
		return sql.selectOne("Board.bView", boNum);
	}
	
	public int bModify(BOARD board) {
		return sql.update("Member.mModify", board);
	}
		
	
}
