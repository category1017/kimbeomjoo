package kr.or.member;

import kr.or.member.MemberVO;

public class MemberService {
	public void printMember(MemberVO[] members) { //members는 레코드가 여러개=여러줄
		//서비스 구현 메서드 내용(아래) 향상된 for반복문 사용 >> for(변수  배열값) 형태
		int cnt=0;
		for(MemberVO member:members) {//members의 여러 레코드 중 1개의 레코드를 member오브젝트 객체로 대입
			// members[0] , members[1], members[2] 모두 MemberVO클래스의 member중 하나
			//MemberVO클래스형 데이터타입을 member(변수)
			cnt = cnt +1;
			System.out.println(cnt + "번째 레코드는 " + member.toString());
			}
		//비지니스 로직에서 처리하는 내용은 = 데이터를 가공한다.(아래)
		//위처럼 데이터 select가져오기, insert입력하기, update수정하기, delete삭제하기 => CRUD를 구현하는 내용
		}
}
