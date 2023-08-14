package com.smhrd.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@AllArgsConstructor
@NoArgsConstructor
@Data
public class sns_playlistDTO {
	private int plSeq;  //플리순번
	private String plTitle;//플리제목
	private String plDate;//플리작성일자
	private String userId;//사용자아이디

}
