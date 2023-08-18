package com.smhrd.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@AllArgsConstructor
@NoArgsConstructor
@Data
public class sns_roomDTO {
	private int roomSEQ; // 채팅 순번
	private String userId1; // 보낸 사람
	private String userId2;// 받는 사람
}
