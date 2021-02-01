package kr.or.test;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

public class HelloWorldApp {

	public static void main(String[] args) {
		SimpleDateFormat format = new SimpleDateFormat("yyyyMMdd HHmmss");
		Date reg_date = new Date();
		//boardVO.setBno(프라이머리키);
		for(int cnt=0;cnt<=10;cnt++) {//더미게시물 100입력
			Calendar cal = Calendar.getInstance();//+
			cal.setTime(reg_date);//+
			cal.add(Calendar.SECOND, cnt);//+ cnt초 더하기
			System.out.println(format.format(cal.getTime()));
		}
		// 위 main()메서드 자바프로그램 실행 진입지점입니다.
		System.out.println("헬로우 월드!");
		MemberVO memberVO = new MemberVO();
		sumFunc(memberVO,4); //플러스 함수를 실행할때 매개변수입니다. 
		sumFuncABC(3,4);
		//메서드의 특징, 위와 같이 같은 메서드명 로드된 매개변수가 다른 방식 오버로드된 메서드라고 합니다. 
		String testNull = null;
		String testEmpty = "";
		System.out.println("null 출력- " + testNull + "/empty출력-  " +testEmpty);
		//System.out.println("isEmpty메서드null값 출력- "+ testNull.isEmpty());//값이 null이면 에러NullPointer
		System.out.println("isEmpty메서드공백값 출력- " + testEmpty.isEmpty());
	}

	//메서드의 매개변수에 대해서.
	public static void sumFunc(MemberVO memberVO, int b) {
		System.out.println("매개변수 memberVO + b = " + (memberVO.toString()+ b ) + " 입니다.");
	}
	public static void sumFuncABC(int a, int b){
		System.out.println("매개변수 a + b " + (a+b) + "입니다.");
	}
	
}
