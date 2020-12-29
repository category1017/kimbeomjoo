package kr.or.test;

public class HelloWorldApp {

	public static void main(String[] args) {
		// 위 main()메서드 자바프로그램 실행 진입지점입니다.
		System.out.println("헬로우 월드!");
		plusFuncABC(3,4); //플러스 함수를 실행할때 매개변수입니다. 
	}

	//메서드의 매개변수에 대해서
	public static void plusFuncABC(int a, int b){
		System.out.println("매개변수 a + b " + (a+b) + "입니다.");
	}
	
}
