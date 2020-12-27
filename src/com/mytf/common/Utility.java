package com.mytf.common;

import java.util.Date;

public class Utility {
	public static final String TEST_DIR
	//="D:\\lecture\\workspace_list\\jsp_ws\\mystudy\\WebContent\\pds_upload";
	//="H:\\lecture\\Project\\semi\\WebContent\\GoMember_upload";//자연
	="D:\\\\Heejeong_java\\\\lecture\\\\workspace_list\\\\semi_ws\\\\SemiProject\\\\WebContent\\\\GoMember_upload"; // -희정
	
	public static final String UPLOAD_DIR="GoMember_upload";
	
	public static String displayRe(int step) {
		//답변글인 경우 단계별로 이미지 보여주기
		String str="";
		if(step>0){ 
			for(int k=0;k<step;k++){
				str+="&nbsp";
			}//for 

			str+="<img src='../images/re.gif'>";
		}//if

		return str;
	}

	public static String cutString(String title, int len) {
		//제목이 30자 이상인 경우 일부만 추출하기
		String result=title;
		if(title.length()>len) {
			result=title.substring(0, len)+"...";
		}

		return result;
	}


	public static String displayNew(Date regdate) { 
		//24시간 이내의 글인 경우 new 이미지 보여주기
		Date today = new Date();
		long gap=(today.getTime() - regdate.getTime())/1000; //초
		gap = gap/(60*60); //시간

		String result="";
		if(gap<24) {
			result="<img src='../images/new.gif' alt='new이미지'>";
		}

		return result;
	}

	public static String displayFile(String fileName) {
		String result="";
		if(fileName!=null && !fileName.isEmpty()) {
			result="<img src='../img/file.gif' alt='file이미지'>";
		}
		
		return result;
	}

	/* 자연사용 */	
	public static String getFileInfo(String originName,long fileSize) {
		String result="";
		float fSize=fileSize/1024f;
		fSize = Math.round(fSize*10)/10f;
		
		if(originName!=null && !originName.isEmpty()) {
			/* result="<img src='../img/file.gif' alt='file이미지'>"; */
			result+=originName+" (" + fSize +" KB)";
		}
		
		return result;
	}
	
}
