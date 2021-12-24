package com.ppg.commu.domain;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class HomeBoardCriteria {
	private int pageNum;
	private int amount;
	
	private String type;
	private String keyword;
	
	public HomeBoardCriteria() {
		this(1, 3);
	}

	public HomeBoardCriteria(int pageNum, int amount) {
		this.pageNum = pageNum;
		this.amount = amount;
	}


	public String[] getTypeArr() {
		return type == null? new String[] {}: type.split("");
	}
}
