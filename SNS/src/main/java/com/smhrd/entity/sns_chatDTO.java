package com.smhrd.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@AllArgsConstructor
@NoArgsConstructor
@Data
public class sns_chatDTO {
	private int chatSeq; // 채팅 순번
	private String sendId; // 보낸 사람
	private String recvId;// 받는 사람
	private String chatDate; // 채팅 날짜
	private String content;// 내용
}
