package com.smhrd.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@AllArgsConstructor
@NoArgsConstructor
@Data
public class sns_followDTO {
	private int followSeq;
	private String followerId;// 팔로우 하는 사람
	private String followingId;// 팔로우 당하는 사람
}
