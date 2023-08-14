package com.smhrd.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@AllArgsConstructor
@NoArgsConstructor
@Data
public class sns_roomDTO {
	private int roomSeq;
	private String userId;
	private String roomDate;
	private String roomState;

}
