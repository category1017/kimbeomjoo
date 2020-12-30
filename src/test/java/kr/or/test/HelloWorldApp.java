package kr.or.test;

public class HelloWorldApp {

	public static void main(String[] args) {
		// 위 main()메서드 자바프로그램 실행 진입지점입니다.
		System.out.println("헬로우 월드!");
		MemberVO memberVO = new MemberVO();
		sumFunc(memberVO,4); //플러스 함수를 실행할때 매개변수입니다. 
		sumFuncABC(3,4);
		//메서드의 특징, 위와 같이 같은 메서드명 로드된 매개벼수가 다른 방식 오버로드된 메서드라고 합니다. 
	}

	//메서드의 매개변수에 대해서.
	public static void sumFunc(MemberVO memberVO, int b) {
		System.out.println("매개변수 memberVO + b = " + (memberVO.toString()+ b ) + " 입니다.");
	}
	public static void sumFuncABC(int a, int b){
		System.out.println("매개변수 a + b " + (a+b) + "입니다.");
	}
	
}
