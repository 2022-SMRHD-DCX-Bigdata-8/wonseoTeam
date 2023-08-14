package com.smhrd.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@AllArgsConstructor
@NoArgsConstructor
@Data
public class sns_chatDTO {
	private int chatSeq;   //채팅순번
	private String chatter;//발화자
	private String chat;   //발화내용
	private String chatDate;//발화시간
	private int roomSeq;	//방순번

}
