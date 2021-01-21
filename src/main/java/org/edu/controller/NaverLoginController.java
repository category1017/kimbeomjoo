package org.edu.controller;

import java.io.IOException;
import java.util.UUID;

import javax.servlet.http.HttpSession;

import org.edu.util.NaverLoginApi;
import org.springframework.context.annotation.PropertySource;
import org.springframework.core.env.Environment;
import org.springframework.stereotype.Controller;
import org.springframework.util.StringUtils;

import com.github.scribejava.core.builder.ServiceBuilder;
import com.github.scribejava.core.model.OAuth2AccessToken;
import com.github.scribejava.core.model.OAuthRequest;
import com.github.scribejava.core.model.Response;
import com.github.scribejava.core.model.Verb;
import com.github.scribejava.core.oauth.OAuth20Service;

@PropertySource("classpath:properties/sns.properties")//현재클래스에서 전역변수사용시 필요 
@Controller
public class NaverLoginController {
	/**
	 * 네이버API서버로 보내는 인증요청문을 구성하는 파라미터(아래클래스에서 사용)
	 * client_id: 네이버App등록 후 발급받은 클라이언트 아이디
	 * response_type: 네이비App에서 보내준 응답에 대한 데이터 타입
	 * redirect_uri: 네이버 로그인 인증결과를 전달 받는 콜백URL
	 * state : 네이버App이 생성한 토큰(네트워크에서 전송되는 자료단위-인증정보)의 상태
	 */
	private final static String CLIENT_ID = "zoG5fjkOtLIknO3TUgeH";
	private final static String CLIENT_SECRET = "----------";
	private final static String REDIRECT_URI = "http://127.0.0.1:8080/login_callback";
	private final static String SESSION_STATE = "oauth_state";
	/*프로필 조회 API URL 사용자이름+사용자 이메일 */
	private final static String PROFILE_API_URL ="https://openapi.naver.com/v1/nid/me";
	
	/* 네이버 아이디로 로그인 인증 url 생성 Method */
	public String getAuthorizationUrl(HttpSession session) {
		/*세션 유효성 검증을 위하여 난수를 생성(아래) */
		String state = generateRandomString();
		/*생성한 난수 값을 session변수에 저장*/
		setSession(session,state);
		
		// Scribe 외부모듈에서 제공하는 인증URL생성기능을 이용하여 네아로 인증 URL생성(아래)
		OAuth20Service oauthService = new ServiceBuilder()
				.apiKey(CLIENT_ID)
				.apiSecret(CLIENT_SECRET)
				.callback(REDIRECT_URI)
				.state(state)
				.build(NaverLoginApi.instance());//instance바로 호출 static으로 정의되어 있어서
		return oauthService.getAuthorizationUrl();
	}

	/* 네이버아이디로그인 Callback 처리 및 Access Token 수하기 메서드 */
	public OAuth2AccessToken getAccessToken(HttpSession session, String code, String state) throws IOException {
		/* 콜백URL로 전달받은 세션검증용 난수값state와 세션에 저장되어 있는 값이 일치하는지 확인*/
		String sessionState = getSession(session);
		if(StringUtils.pathEquals(sessionState, state)) {
			OAuth20Service oauthService = new ServiceBuilder()
					.apiKey(CLIENT_ID)
					.apiSecret(CLIENT_SECRET)
					.callback(REDIRECT_URI)
					.state(state)
					.build(NaverLoginApi.instance());
			/* Scribe외부모듈에서 제공하는 기능으로 네아로 AccessToken 을 획득 */
			OAuth2AccessToken accessToken = oauthService.getAccessToken(code);
			return accessToken;//인증받은 토큰정보를 리턴반환.
		}
		return null;//인증받지 못하면, 널값을 반환.
		
	}
	
	private String getSession(HttpSession session) {
		// http에서 session 값 가져오기
		return (String) session.getAttribute(SESSION_STATE);
	}

	private void setSession(HttpSession session, String state) {
		// http session클래스에 데이터 저장
		session.setAttribute(SESSION_STATE, state);//고유한 UUID값이 세션으로 저장
	}

	private String generateRandomString() {
		// 세션 유효성 검증을 위한 난수 생성기
		return UUID.randomUUID().toString();
	}
	
	/* Access Token을 이용하여 네이버 사용자 프로필 API 호출 = 여기서 네이버 이름, 이메일을 반환*/
	public String getUserProfile(OAuth2AccessToken oauthToken) throws IOException  {
		
		OAuth20Service oauthService = new ServiceBuilder()
				.apiKey(CLIENT_ID)
				.apiSecret(CLIENT_SECRET)
				.callback(REDIRECT_URI)
				.build(NaverLoginApi.instance());
		OAuthRequest request = new OAuthRequest(Verb.GET, PROFILE_API_URL, oauthService);
		oauthService.signRequest(oauthToken,request);
		Response response = request.send();// Response 클래스는 Scribe외부모듈에서 임포트
		return response.getBody();
		
	}

}
