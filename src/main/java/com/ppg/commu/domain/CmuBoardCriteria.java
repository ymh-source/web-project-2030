package com.ppg.commu.domain;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class CmuBoardCriteria {
	private int pageNum;
	private int amount;
	
	private String type;
	private String keyword;
	
	public CmuBoardCriteria() {
		this(1, 20);
	}

	public CmuBoardCriteria(int pageNum, int amount) {
		this.pageNum = pageNum;
		this.amount = amount;
	}


	public String[] getTypeArr() {
		return type == null? new String[] {}: type.split("");
	}
}
