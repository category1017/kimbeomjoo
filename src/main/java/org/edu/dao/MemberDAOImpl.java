package org.edu.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.edu.vo.MemberVO;
import org.springframework.stereotype.Repository;

@Repository
public class MemberDAOImpl implements IF_MemberDAO {
	@Inject
	private SqlSession sqlSession;
	
	@Override
	public List<MemberVO> selectMember() throws Exception {
		// mapper.xml에 접근하는 방법(아래)
		// 오브젝트의 메서드를 실행할때, .입력힌트가 나오지 않으면, ctrl+space키를 눌러서 메서드 나오게 함.
		return sqlSession.selectList("memberMapper.selectMember");
	}

}
