package com.smhrd.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@AllArgsConstructor
@NoArgsConstructor
@Data
public class sns_musicDTO {
	private int musicSeq;  //음원순번
	private String musicTitle;//음원제목
	private String musicPhoto;//음원사진
	private String userId;//사용자아이디
	private String musicGenre;//음원장르
	private String musicDate;//음원업로드일자
	private String musicFile;//음원파일
	private String musicLikes;//음원파일
}
