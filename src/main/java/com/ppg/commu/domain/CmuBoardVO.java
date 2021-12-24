package com.ppg.commu.domain;

import java.util.Date;

import lombok.Data;

@Data
public class CmuBoardVO {
	private int postNum;
	private String category;
	private String title;
	private String text;
	private String nickName;
	private Date regDate;
	private int watcher;
	private int up;
	private int down;
	private int reply;
	private String fileName;
}
