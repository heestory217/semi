package com.controller;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.Properties;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
/*
	요청
	/tips/book.do
	/tips/travel.do
	
	모든 요청이 DispatcherServlet으로 들어온다.
	매핑파일을 참고해서 담당자(명령어 처리 클래스)를 찾아서 일 시킨다(메서드 호출).
*/
public class DispatcherServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	private Properties props;
	
	//서블릿 생명주기 init() :해당 서블릿이 요청될 때 최초로 한번만 호출되는 메서드
	//매핑파일을 읽어서 Properties컬렉션에 저장한다 - Map
	@Override
	public void init(ServletConfig config) throws ServletException {
		//web.xml에서 init-param의 값 읽어오기
		String configFile = config.getInitParameter("configFile");
		//=> /config/CommandPro.properties
		System.out.println("configFile="+configFile);
		
		//매핑 파일의 실제 물리적 경로 구하기
		//그래야 inputStream 자리인 .load() 메서드에 매개변수로 넣을 수 있음 (fis)
		String realConfigFile = config.getServletContext().getRealPath(configFile);
		System.out.println("realConfigFile="+realConfigFile);
		
		props = new Properties();
		FileInputStream fis = null;
		try {
			fis = new FileInputStream(realConfigFile);
			props.load(fis);	//CommandPro.properties 파일의 정보를 Properties 컬렉션에 저장
		}catch(FileNotFoundException e) {
			e.printStackTrace();
		}catch(IOException e) {
			e.printStackTrace();
		}finally {
			try {
				if(fis!=null) fis.close();
			}catch (IOException e) {
				e.printStackTrace();
			}
		}
	}
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		requestPro(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		requestPro(request, response);
	}

	//doGet(), doPost()
	//사용자의 요청이 들어올 때마다 호출
	//매핑 Properties를 참고해서 담당자 구해서 일 시킨다.
	private void requestPro(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		/*
			매핑 Properties 컬렉션에서 사용자의 URI의 명령어(/tips/book.do)에 
			해당하는 담당자를 구해서(명령어 처리 클래스, BookController) 
			일 시킨다(해당 컨트롤러의 메서드 호출)
			그리고 나서, 결과(뷰페이지)를 리턴 받아서 해당 뷰페이지로 포워딩시킨다.
		*/
		
		//한글 처리
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		
		//사용자의 URI 읽어오기
		//	 0123456
		//=> /mymvc/tips/book.do, /mymvc/tips/travel.do
		String uri = request.getRequestURI();
		System.out.println("uri="+uri);
		
		//uri 중 ContextPath 제거하기 => 명령어만 추출
		String contextPath = request.getContextPath();	//=>	/mvc
		System.out.println("contextPath="+contextPath);
		
		if(uri.indexOf(contextPath)!=-1) {	//uri에 ContextPath가 있으면
			uri = uri.substring(contextPath.length());	//contextPath.length()=6
			//=> /tips/book.do
		}
		
		System.out.println("컨텍스트 패스 제거 후 uri="+uri);
		
		//명령어(/tips/book.do)에 해당하는 명령어 처리 클래스(BookController2) 구하기
		String command = props.getProperty(uri);	//BookController2
		System.out.println("명령어 처리 클래스="+command);
		
		try {
			//해당 문자열을 클래스로 만든다.
			Class commandClass = Class.forName(command);
			
			//해당 클래스의 객체 생성
			Controller controller=(Controller)commandClass.newInstance(); //BookController2
			
			//해당 클래스의 메서드 호출
			String resultPage = controller.requestProcess(request, response);
			System.out.println("resultPage="+resultPage);
			
			if(controller.isRedirect()) {
				//해당 페이지로 redirect
				System.out.println("redirect!!\n");
				response.sendRedirect(contextPath+resultPage);
				//=> /mymvc + /tips/bookForm.do
				//=> /mymvc/tips/bookForm.do
			}else {
				//해당 뷰페이지로 포워딩
				System.out.println("forward!!\n");
				RequestDispatcher dispatcher = request.getRequestDispatcher(resultPage);
				dispatcher.forward(request, response);
			}
			
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (InstantiationException e) {
			e.printStackTrace();
		} catch (IllegalAccessException e) {
			e.printStackTrace();
		} catch (Throwable e) {
			e.printStackTrace();
		}
	}

}
