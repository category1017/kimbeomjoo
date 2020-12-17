package kr.or.test;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;

/**
 * OpenApi클래스로 HRD-Net에서 제공하는 구직자훈련과정API 목록을 출력하는 자바앱
 * @author 김범주
 *
 */
public class OpenApi {
	//외부연계 역할 메서드(아래)
	public static void serviceApi() {
		BufferedReader bufferedReader = null; //HRD넷에서 전송받은 데이터를 임시 저장하는 공간.자동차 범퍼와 같은 역할.
		String urlStr = "http://www.hrd.go.kr/hrdp/api/apipo/APIPO0101T.do?authKey=EZHD1wsQ13TSpm1YxE4hgqamrpfhScQu&outType=1&srchTraEndDt=20210317&srchTraArea1=44&srchTraArea2=44133&srchTraStDt=20201108&srchTraOrganNm=%ED%9C%B4%EB%A8%BC&sortCol=TR_STT_DT&returnType=XML&pageSize=10&pageNum=1&sort=ASC&srchTraPattern=N1&srchPart=-99&apiRequstPageUrlAdres=/jsp/HRDP/HRDPO00/HRDPOA60/HRDPOA60_1.jsp&apiRequstIp=123.215.61.179";
		try {
			URL url = new URL(urlStr);
			try {
				HttpURLConnection urlConnection = (HttpURLConnection) url.openConnection();
				urlConnection.setRequestMethod("GET");//URL쿼리스트링으로 파라미터를 보낸다.= GET방식 
				bufferedReader = new BufferedReader(new InputStreamReader(urlConnection.getInputStream(),"euc-kr"));
				String result="";
				String line;
				int cnt =0;
				//while 반복문시작
				while( (line=bufferedReader.readLine()) !=null) {
					cnt = cnt + 1;
					result = result + line + "\n" ; // \n은 newline나타내는 기호로 결과는 엔터
				}
				System.out.println("버퍼리더로 읽어들인 최종 결과값은 아래 입니다. while 반복 횟수는 " + cnt);
				//System.out.println(result);2줄로 읽어서 끝
				//XmlUtils.java클래스를 이용해서 xml태그 내용을 예쁘게 출력(아래)
				String result_xmlUtils = XmlUtils.formatXml(result);
				System.out.println(result_xmlUtils); //(웹브라우저처럼 여러줄로 나옴)
			
			} catch (IOException e) {
				// Http웹 접근에러상황발생
				System.out.println("Http 웹접근 에러입니다. 왜냐하면" + e.toString());
			}
		} catch (MalformedURLException e) {
			// 외부연계 URL 주소형식이 잘못되었을때 에러상황발생
			System.out.println("URL주소형식이 잘못되었습니다.왜냐하면 " + e.toString());
		}
	}
	//스테틱 메서드는 new키워드로 객체오브젝트 생성없이 바로 접근이 가능한 메서드를 말함.(한번만 사용)
	public static void main(String[] args) {
		serviceApi();
		// 일반메서드와 스테틱메서드의 호출차이
		//StaticTest staticTest = new StaticTest();
		//staticTest.test2();// 노스태틱은 오브젝트생성후 접근이 가능
		//StaticTest.test();//스테틱메서드는 오브젝트 생성 없이 클래스로 바로 접근가능.
		/*
		int sum = 0;
		while(sum < 10) {
			sum = sum + 1; // sum = sum + 1 누적로직을 확인
			//System.out.println("지금까지 누적된 값은" + sum);
		}
		System.out.println("지금까지 누적된 값은" + sum); 
	}
		*/
	}
}
class StaticTest {
	public static void test(){//스태틱은 메서드 뿐만아니라 변수에도 해당하는 이론
		//스태틱메서드는 클래스를 읽어들이는 순간 고정메모리를 할당받음(=바로 실행 가능)
		System.out.println("스테틱테스트");
	}
	public void test2(){
		//일반메서드는 new키워드로 오브젝트를 생성할때 메모리를 할당받음.(오브젝트를 할당한 후 실행가능)
		System.out.println("일반테스트2");
	}
}
		
