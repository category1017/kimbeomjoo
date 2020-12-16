package kr.or.member;

import kr.or.member.MemberVO;

public class MemberService {
	public void printMember(MemberVO[] members) { // members는 레코드가 여러개=여러줄
		// 서비스 구현 메서드 내용(아래) 향상된 for반복문 사용 >> for(변수 배열값) 형태
		int cnt = 0;
		for (MemberVO member : members) {// members의 여러 레코드 중 1개의 레코드를 member오브젝트 객체로 대입
			// members[0] , members[1], members[2] 모두 MemberVO클래스의 member중 하나(레코드데이터)
			// members의 여러레코드 중 하나인 객체member(MemberVO클래스형 데이터타입으로 된)를 가져오고 실행한다.
			cnt = cnt + 1;
			System.out.println(cnt + "번째 레코드는 " + member.toString());
			//member 클래스 변수는 출력이 가능하지만, 내용을 확인할수없게 됩니다.
			//member클래스에서 내용을 확인하려고, 오버라이드된 toString()만들어서 출력하게됨
		}
		// 비지니스 로직에서 처리하는 내용은 = 데이터를 가공한다.(아래)
		// 위처럼 데이터 select가져오기, insert입력하기, update수정하기, delete삭제하기 => CRUD를 구현하는 내용
	}
}

/**
 * 전체적인 흐름 순서 정리 여러명의 회원정보(MemberVO-자료형클래스 이용부분)을
 * 전달주고받고(MainController-메서드,URL호출부분), 출력(MemberService-비지니스로직부분)하는 메서드 선언하기
 * 데이터베이스CRUD처리부분(MemberDAO-데이터베이스엑세스 부분)
 */