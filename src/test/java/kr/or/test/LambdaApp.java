package kr.or.test;

import java.util.function.IntSupplier;

public class LambdaApp  {
	//static은 현제 클래스에서 유일한 메서드로 사용하겠다.
	public static int method(int x, int y) {
		//IntSupplier 클래스는 계산된 결과값을 반환할 때 int타입으로 반환하는 명세가 모여있는 인터페이스
		//위 IntSupplier는 인터페이스로 메서드명만 있고, 구현내용이 없는 영역.
		//람다식 적용 전 코드(아래)
		IntSupplier intSupplier = new IntSupplier() {
			@Override
			public int getAsInt() {
				int sum = x+y;
				return sum;
			}			
		};
		
		//위 intSuppplier오브젝트를 호출해야만 실행이 됩니다. 
		int result= intSupplier.getAsInt();
		//람다식 적용 후 코드(아래)
		IntSupplier intSupplier2 = () -> {//구현내용시작:->에로우함수추가, 메서드명 생략됨, @오버라이드 생략
				int sum= x+y;
				return sum;
		};
		
		int result2 = intSupplier.getAsInt();
		
		return result;
		
	}
	public static void main(String[] args) {
		// 자바 애플리케이션의 진입 실행 함수
		System.out.println("람다식 테스트용 메서드 반환값 출력= " + method(3,5));
	}

	

}

interface MyInterface1 {//인터페이스는 메서드의 명세(이름)=목차만 있음. 
	public void method(int a, int b);
}

interface MyInterface2 {
	public void method(int a);
}