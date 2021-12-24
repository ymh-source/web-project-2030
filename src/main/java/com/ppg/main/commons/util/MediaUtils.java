package com.ppg.main.commons.util;

import java.util.HashMap;
import java.util.Map;

import org.springframework.http.MediaType;

//파일의 타입이 이미지인지 아닌지를 판별하는 메소드를 가지고 있는 클래스

public class MediaUtils {

	private static Map<String, MediaType> mediaMap; 
	// meidaMap에 이미지확장자명에 따른 MINEType 저장 
	static { mediaMap = new HashMap<String, MediaType>();
	mediaMap.put("JPG", MediaType.IMAGE_JPEG);
	mediaMap.put("GIF", MediaType.IMAGE_GIF);
	mediaMap.put("PNG", MediaType.IMAGE_PNG);
	} 
	public static MediaType getMediaType(String type) { 
		// 이미지 MINEType 꺼내서 반환, 이미지 파일이 아닐 경우 null 반환 
		return mediaMap.get(type.toUpperCase()); 
		}
	}

