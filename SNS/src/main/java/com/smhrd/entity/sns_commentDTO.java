package com.smhrd.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@AllArgsConstructor
@NoArgsConstructor
@Data
public class sns_commentDTO {
	
	private int cmtSeq;
	private int musicSeq;
	private String cmtType;
	private String cmtContent;
	private int cmtDate;
	private String userId;
}
