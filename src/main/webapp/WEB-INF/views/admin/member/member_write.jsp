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
            <h1 class="m-0">회원등록</h1>
          </div><!-- /.col -->
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="<c:out value='/admin' />">Home</a></li>
              <li class="breadcrumb-item active">회원등록</li>
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
       <form encType="Multipart/form-data" name="write_form" action="/admin/member/member_write" method="post">
         
         <div class="card card-primary">
              <div class="card-header">
                <h3 class="card-title">CREATE member</h3>
              </div>
              <!-- /.card-header -->
              
				<div class="card-body">
					<div class="form-group">
						<label for="user_id">User_id</label> 
						<input type="text"
							class="form-control" name="user_id" id="user_id"
							placeholder="아이디를 입력해주세요." required>
						<!--폼에서 input같은 입력태그에는 name속성이 반드시 필요,데이터베이스에 입력할 때 변수값을 전송하게 되늰데, 전송값을 저장하는 이름이 name가 되고 위에서는 user_id  -->
					</div>
					<div class="form-group">
						<label>프로필 이미지</label>
						<div class="custom-file">
						<input accept=".jpg" type="file" name="file" class="custom-file-input" id="customFile_0">
						<label class="custom-file-label" for="customFile_0" style="color:#999;">jpg형식만 지원합니다.</label>
						</div>
					</div>
					<div class="form-group">
						<label for="user_pw">Password</label> <input type="password"
							class="form-control" name="user_pw" id="user_pw"
							placeholder="암호를 입력해주세요" required>
					</div>

					<div class="form-group">
						<label for="user_name">User_Name</label> 
						<input type="text"
							class="form-control" name="user_name" id="user_name"
							placeholder="이름을 입력해주세요" required>
							<!-- 필수입력 값은 html5에서 지원하는 유효성 검사중 required 속성을 사용해서 빈(null)체크(유효성 검사)를 함. -->
					</div>
					<div class="form-group">
						<label for="email">E-mail</label> 
						<input type="email"	class="form-control" name="email" id="email"
							placeholder="이메일을 입력해주세요" required>
					</div>
					
					<div class="form-group">
						<label for="point">Point</label> 
						<input type="number" class="form-control" name="point" id="point"
							placeholder="포인트를 입력해주세요" required>
					</div>
					
					<div class="form-group">
						<label for="enabled">Enabled</label> 
						<select class="form-control" name="enabled" id="enabled">
							<option value="0">false</option>
							<option value="1" selected>true</option>
						</select>
						
					</div>
					<div class="form-group">
						<label for="levels">Levels</label> 
						<select class="form-control" name="levels" id="levels">
							<option value="ROLE_ADMIN">ROLE_ADMIN</option>
							<option value="ROLE_USER" selected>ROLE_USER</option>
						</select>
					</div>
				</div>
			<!-- /.card-body -->
           </div>
           
              <!-- 버튼영역 시작 -->
              <div class="card-body">
	              <a href="/admin/member/member_list" class="btn btn-primary float-right mr-1">LIST ALL</a>
	              <button type="submit" class="btn btn-danger float-right mr-1" disabled>SUBMIT</button>
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
<!-- 첨부파일 부트스트랩 디자인 JS -->
<script src="/resources/plugins/bs-custom-file-input/bs-custom-file-input.min.js"></script>
<!-- 첨부파일 선택한 내용 출력 실행 -->
<script>
$(document).ready(function () {
  bsCustomFileInput.init();
});
</script>
<script>
$(document).ready(function() {
	$("#user_id").bind("blur", function() {
		//alert("여기까지" + $(this).val());//디버그용
		var p_user_id = $(this).val();
		if(p_user_id == ""){
			alert("아이디 항목은 필수 입력 값 입니다.");
			return false;
		}
		$.ajax({
			type:'get',
			url:'/id_check?user_id='+p_user_id,
			dataType:'text',
			success:function(result){
				//alert('디버그' + result);
				if(result == '0'){
					alert('사용 가능한 아이디 입니다.');
					$(".btn-danger").attr("disabled",false);
				}else if(result == '1') {
					alert('중복 아이디가 존재 합니다.');
					$(".btn-danger").attr("disabled",true);
				}else{
					//에러메세지출력
					//alert(result);//개발자용
					alert('API서버에 문제가 발생했습니다. 나중에 이용해 주세요');
				}
			}
		});
	});
});
</script>