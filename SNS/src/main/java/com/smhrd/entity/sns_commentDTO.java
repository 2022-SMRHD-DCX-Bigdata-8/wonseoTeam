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
	private String cmtContent;
	private String cmtDate;
	private String userId;
}
