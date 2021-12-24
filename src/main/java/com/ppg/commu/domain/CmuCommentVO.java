package com.ppg.commu.domain;

import java.util.Date;

import lombok.Data;

@Data
public class CmuCommentVO {
	private int postNum;
	private int commentNum;
	private String nickName;
	private String text;
	private Date regDate;
	
}
