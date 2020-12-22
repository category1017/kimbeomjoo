<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/header.jsp" %>

<!-- 대시보드 본문 Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- 본문헤더 Content Header (Page header) -->
    <div class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1 class="m-0">회원수정</h1>
          </div><!-- /.col -->
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#">Home</a></li>
              <li class="breadcrumb-item active">회원수정</li>
            </ol>
          </div><!-- /.col -->
        </div><!-- /.row -->
      </div><!-- /.container-fluid -->
    </div>
    <!-- /.content-header -->

    <!-- 본문내용 Main content -->
    <section class="content">    
      <div class="container-fluid">

		<div class="row"><!-- 부트스트랩의 디자인 클래스 row -->
          <div class="col-12"><!-- 그리드시스템중 12개 가로칼럼 중 12개=width:100% -->
         
         <!-- form start -->
            <form name="update_form" action="/admin/member/member_update" method="post">
         
         <div class="card card-primary">
              <div class="card-header">
                <h3 class="card-title">UPDATE Member</h3>
              </div>
              <!-- /.card-header -->
              
				<div class="card-body">
					<div class="form-group">
						<label for="user_id">User_id</label> 
					<input value="${memberVO.user_id}" type="text"
							class="form-control" name="user_id" id="user_id"
							placeholder="아이디를 입력해주세요." required>
						<!--폼에서 input같은 입력태그에는 name속성이 반드시 필요,데이터베이스에 입력할 때 변수값을 전송하게 되늰데, 전송값을 저장하는 이름이 name가 되고 위에서는 user_id  -->
					</div>
					
					<div class="form-group">
						<label for="user_pw">Password</label> 
						<input value="${memberVO.user_pw}" type="password"
							class="form-control" name="user_pw" id="user_pw"
							placeholder="암호를 입력해주세요" required>
					</div>

					<div class="form-group">
						<label for="user_name">User_Name</label> 
						<input value="${memberVO.user_name}" type="text"
							class="form-control" name="user_name" id="user_name"
							placeholder="이름을 입력해주세요" required>
							<!-- 필수입력 값은 html5에서 지원하는 유효성 검사중 required 속성을 사용해서 빈(null)체크(유효성 검사)를 함. -->
					</div>
					<div class="form-group">
						<label for="email">E-mail</label> 
						<input value="${memberVO.email}" type="email"
							class="form-control" name="email" id="email"
							placeholder="이메일을 입력해주세요" required>
					</div>
					
					<div class="form-group">
						<label for="point">Point</label> 
						<input value="${memberVO.point}" type="text"
							class="form-control" name="point" id="point"
							placeholder="포인트를 입력해주세요" required>
					</div>
					
					<div class="form-group">
						<label for="enabled">Enabled</label> 
						<select class="form-control" name="enabled" id="enabled">
							<option value="0" <c:out value="${(memberVO.enabled=='0')?'selected':''}"/> >false</option>
							<option value="1" <c:out value="${(memberVO.enabled=='1')?'selected':''}"/> >true</option>
						</select>
						
					</div>
					<div class="form-group">
						<label for="levels">Levels</label> 
						<select class="form-control" name="levels" id="levels">
							<option value="ROLE_ADMIN" <c:out value="${(memberVO.levels=='ROLE_ADMIN')?'selected':''}" /> >ROLE_ADMIN</option>
							<option value="ROLE_USER" <c:out value="${(memberVO.levels=='ROLE_USER')?'selected':''}" /> >ROLE_USER</option>
						</select>
					</div>
				</div>
									<!-- /.card-body -->
              
           </div>
           
              <!-- 버튼영역 시작 -->
              <div class="card-body">
	              <a href="/admin/member/member_list?page=${pageVO.page}" class="btn btn-primary float-right mr-1">LIST ALL</a>
	              <button type="submit" class="btn btn-danger float-right mr-1">수정</button>
	              <!-- a태그는 링크이동은 되지만, post값을 전송하지는 못합니다. 그래서 button태그를 사용 -->
             </div>
              <!-- 버튼영역  끝 -->   
            
            </form>
            <!-- 폼내부에 버튼이 있어야지만, 전송버튼이 작동 됩니다. --> 
              
          </div>
        </div>

      </div><!-- /.container-fluid -->
    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->


<%@ include file="../include/footer.jsp" %>