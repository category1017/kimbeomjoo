package org.edu.controller;

import java.text.DateFormat;

import java.util.Date;
import java.util.Locale;

import org.edu.vo.BoardVO;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
/**
 * Handles requests for the application home page. 
 * 앱을 위한 홈페이지 요청 처리한다(아래) http://localhost:8080/ 요청을 받았을때, 변수를 만들어서 크롬화면 또는 콘솔에 뿌려준다.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	//사용자 홈페이지 게시판 상세보기 매핑
		@RequestMapping(value="/home/board/board_view",method=RequestMethod.GET)
		public String board_view() throws Exception {
			
			return "home/board/board_view";
		}
	
	//사용자 홈페이지 게시판 쓰기 매핑(POST) 오버로드(매개변수의 개수 또는 타입이 다른)메서드 이용
	//jsp에서 board_write메서드를 호출합니다. ->호출할때 폼의 필드값을 컨트롤러로 보냅니다. 
	//컨트롤러에서 받을때 사용하는 매개변수 BoardVO boardVO입니다.
	//위에서 받은 boardVO를 DAO에서 받아서 DB테이블에 쿼리명령으로 입력합니다. 
	@RequestMapping(value="/home/board/board_write",method=RequestMethod.POST)
	public String board_write(BoardVO boardVO) throws Exception {
		//위에서 받은 boardVO를 서비스로 보내기.
		return "redirect:/home/board/board_view";
	}
	
	//사용자 홈페이지 게시판 쓰기 매핑(GET)
	@RequestMapping(value="/home/board/board_write",method=RequestMethod.GET)
	public String board_write() throws Exception {
		
		return "home/board/board_write";
	}
	
	//사용자 홈페이지 게시판 리스트 매핑
	@RequestMapping(value="/home/board/board_list",method=RequestMethod.GET)
	public String board_list() throws Exception{
		
		return "home/board/board_list";
	}
	
	
	//사용자 홈페이지 회원 마이페이지 접근 매핑
	@RequestMapping(value="/member/mypage",method=RequestMethod.GET)
	public String mypage() throws Exception{
		
		return "home/member/mypage";
	}
		
	//사용자 홈페이지 회원가입 접근 매핑
	@RequestMapping(value="/join",method=RequestMethod.GET)
	public String join() throws Exception{
		
		return "home/join";
	}
	
	//사용자 홈페이지 로그인 접근 매핑
	@RequestMapping(value="/login",method=RequestMethod.GET)
	public String login() throws Exception{
		
		return "home/login";
	}
	//사용자 홈페이지 루트(최상위)접근 매핑
	@RequestMapping(value="/", method=RequestMethod.GET)
	public String home() throws Exception{
		
		return "home/home";
	}
	/**
	 * Simply selects the home view to render(화면출력) by returning its name. 
	 * 외부(웹브라우저)에서 루트/라는 이름으로 요청받으면, home.jsp파일에 화면출력 렌더링이 됩니다(아래)
	 * HomeController.java 를 저장하면, 이클립스에서는 HomeController.class 실행가능한 파일을 생성
	 * 그래서, 저장시 콘솔에 보면, Reloading Context with...is completed 재실행 되었다고 나옵니다. 
	 * 그래서, java클래스는 수정 후 약간 기다린후 Reloading... 메시지 후 결과 확인이 가능합니다. 
	 */
	@RequestMapping(value="/sample/contact",method=RequestMethod.POST)//post방식은 데이터를 전송하는 역할
	public String contact_send() {
		//데이터 전송후에 다른 페이지 이동이 필요합니다. 새로고침=자동등록을 방지하기 위해서.게시판테러 방지용
		return "redirect:/sample/blog";//URL경로를 사용.
	}
	@RequestMapping(value="/sample/contact",method=RequestMethod.GET)//get방식은 폼페이지를 보여주는 역할
	public String contact() {
		return "sample/contact";
	}
	@RequestMapping(value="/sample/blog",method=RequestMethod.GET)
	public String blog() {
		return "sample/blog";
	}
	@RequestMapping(value="/sample/work",method=RequestMethod.GET)
	public String work() {
		return "sample/work";
	}
	@RequestMapping(value="/sample/weare",method=RequestMethod.GET)
	public String weare() {
		//외부에서 /weare경로로 접근했을때, sample/weare.jsp와 매핑시키라는 의미.
		return "sample/weare";
	}
	@RequestMapping(value="/sample",method=RequestMethod.GET)//여기가 절대경로
	public String index() { //메서드(함수)는 리턴(반환값출력)형태지정 메서드명(매개변수) {구현내용} String index(){}
		//상단 리퀘스트매핑으로 지정한 경로로 접근을 하게되면, 아래에 있는 index()메서드를 실행해라.
		//메서드명 제일 앞에 있는 public는 접근권한에 대한 키워드, public(공공-다른 클래스에서 접근가능), 
		//private(내부-현재 HomeController클애스에서만 접근가능)  
		//public String index() {} 자바(스프링) 메서드 기본형태
		//$(document).ready(function(){ }); j쿼리 기본형태
		//return반환값으로 사용한 String 클래스는 문자열을 반환하고, 
		//여기서는 index.jsp와 매칭되는 문자열을 반환. 상대경로가 필요
		//스프링MVC프로젝트에서 상대경로의 최상위는 views폴더 취상위 root폴더
		// 접두사(prefix), 접미사(suffix), index(접두사-파일명).jsp(접미사-확장자) 
		return "sample/index";//접두사만 반환값으로 넣습니다.상대경로
	}
	/*@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("환영합니다. 현재 여러분 컴퓨터언어는 {}입니다.", locale);
		logger.info("환영합니다. 현재 여러분의 컴퓨터 언어는" + locale + " 입니다...");
		System.out.println("위에 Locale클래스를 사용하는 이유는 다국어 지원때문에 변수로 사용하게 됩니다.");
		System.out.println("함수-C언어나 자바스크립트-와 메서드-자바, 스프링에서 사용함-는 같은 대상을 가리킵니다.");
		System.out.println("함수-메서드는 함수명('매개변수-입력값'){구현내용}형식이고, 입력값->출력값 구현됩니다.");
		Date date = new Date();//Date 날짜관련 클래스형 변수 date 선언했습니다. date변수 메서를 사용가능하게됨.
		//data 변수 실행가능한 변수=클래스형변수=object오브젝트=인스턴스 라고 합니다. 
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		//DateFormat 클래스형 변수 dateFormat 이 선언되었고, 실행가능한 변수로 되었습니다.(위)
		String formattedDate = dateFormat.format(date);//변수가 실행됩니다. 
		//위 변수가 실행되어서 출력된 결과값이 String클래스형 변수 formattedDate변수에 담기게 됩니다. 
		model.addAttribute("TomcatserverTime", formattedDate );//serverTime 변수값으로 jsp파일로 이동.
		//위 model이라는 클래스형 변수를 이용해서, serverTime변수값을 아래 home(생략.jsp)로 전송해 줌. 
		return "home";//결과적으로 return 출력값이 home(생략.jsp)에 연동됩니다. 
		//스프링에서 뷰단으로 데이터 이동(전송)에 대해서 살펴 보았습니다. 
	}*/
	
}