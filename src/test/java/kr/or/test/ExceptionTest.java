package kr.or.test;

import java.io.IOException;
import java.io.InputStreamReader;

/**
 * 자바에서 예외처리하는 테스트 클래스
 * */
public class ExceptionTest {

	public static void main(String[] args) {
		// 집입실행메서드 main()
		// 메서드 내부변수 (멤버 변수는 class바로 아래에 있어야함.)
		String[] stringArray = {"10", "2a", "100"};
		int indexValue = 0;
		for(int cnt=0;cnt<=2;cnt++) {
			/*indexValue = Integer.parseInt(stringArray[cnt]);//배열의 문자값을 int형변환
				System.out.println(cnt + "번째 배열에 저장된 숫자는 =" + indexValue);
			*/
			
			try {
				indexValue = Integer.parseInt(stringArray[cnt]);//배열의 문자값을 int형변환
				System.out.println((cnt+1) + "번째 배열에 저장된 숫자는 =" + indexValue);//성공시
			}catch(ArrayIndexOutOfBoundsException e) {
				System.out.println("에러메세지 출력 = " + e.toString());//실패시
				System.out.println("배열의 크기가 올바르지 않습니다.");
			}catch(NumberFormatException e) {
				System.out.println("에러메세지 출력 = " + e.toString());//실패시
				System.out.println("개발자가 지정한 에러메세지는 숫자 변환시 에러가 발생되었음.");
			}finally {
				System.out.println("finally는 try~catch 결과와 상관없이 항상 실행. ");//항상실행
			}
			
		}
	}

}
