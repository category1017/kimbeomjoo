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
            <h1 class="m-0">회원리스트</h1>
          </div><!-- /.col -->
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#">Home</a></li>
              <li class="breadcrumb-item active">회원리스트</li>
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
            <div class="card"><!-- 부트스트랩의 카드 클래스:네모난 디자인 -->
              <div class="card-header">
                <h3 class="card-title">멤버 검색</h3>

                <div class="card-tools">
                  
	                  <form name="search_form" action="member_list.html" method="get">
	                  <div class="input-group input-group-sm" >
	                  <!-- 부트스트랩 탬플릿만으로는 디자인 처리가 완전히 되지 않기 때문에 인라인 스타일 사용 -->
	                  <div>                            
	                        <select class="form-control">
	                           <option value="" selected>-전체-</option>
	                           <option value="user_id" data-select2-id="8">ID</option>
	                           <option value="user_name" data-select2-id="16">이름</option>
	                            </select>
	                     </div>
	                  	<div>
	                    <input type="text" name="search_keyword" class="form-control float-right" placeholder="Search">
						</div>
	                    <div class="input-group-append">
	                      <button type="submit" class="btn btn-default">
	                        <i class="fas fa-search"></i>
	                      </button>
	                    </div>
	                   </div>
	                  </form>
                  
                </div>
              </div>
              <!-- /.card-header -->
              <div class="card-body table-responsive p-0">
                <table class="table table-hover text-nowrap">
                  <thead>
                    <tr>
                      <th>user_id</th><!-- 테이블 헤드 타이틀태그 th -->
                      <th>User_name[point]</th>
                      <th>email</th>
                      <th>use</th>
                      <th>regdate</th>
                      <th>levels</th>
                    </tr>
                  </thead>
                  <tbody>
                    <tr onclick="javascript:location.href='member_view.html?user_id=admin';" style="cursor:pointer;">
                      <td><a href="member_view.html?user_id=admin">admin</a></td>
                      <!-- 위에 a링크값은 리스트가 늘어날수록 동적으로 user_id 값이 변하게 됩니다. 개발자가 jsp로 처리 -->
                      <td>관리자</td>
                      <td>admin@abc.com</td>
                      <td>ture</td>
                      <td>2020-12-01</td>
                      <td><span class="badge bg-danger">ROLE_ADMIN</span></td>
                      <!-- 권한표시는 부트스트랩 뺏지 클래스 사용 -->
                    </tr>
                    <tr>
                      <td><a href="member_view.html?user_id=user">user</a></td>
                      <td>사용자</td>
                      <td>user@abc.com</td>
                      <td>false</td>
                      <td>2020-12-01</td>
                      <td><span class="badge bg-warning">ROLE_USER</span></td>
                    </tr>
                  </tbody>
                </table>
              </div>
              <!-- /.card-body -->
                              
             </div>
            <!-- /.card -->
                     
              <!-- 버튼영역 시작 -->
              <div class="card-body">
              <a href="member_write.html" class="btn btn-primary float-right">CREATE</a>
              <!-- 부트스트랩 디자인 버튼클래스를 이용해서 a태그를 버튼모양으로 만들기(위) -->
              <!-- btn클래스명이 버튼모양으로 변경, btn-primary클래스명은 버튼색상을 변경하는 역할 -->
              <!-- style이 아닌 class인 이유 부트스트랩에 이미 style이 적용되어있어서 -->
              

              </div>
              <!-- 버튼영역  끝 -->  
    
           <!-- 페이징처리 시작 -->     
            <div class="pagination justify-content-center">                  
             <ul class="pagination">
              	 <li class="paginate_button page-item previous disabled" id="example2_previous">
              	 <a href="#" aria-controls="example2" data-dt-idx="0" tabindex="0" class="page-link">Previous</a>
              	 </li>
              	 <!-- 위 이전 게시물링크 -->
              	 <li class="paginate_button page-item active"><a href="#" aria-controls="example2" data-dt-idx="1" tabindex="0" class="page-link">1</a></li>
              	 <li class="paginate_button page-item "><a href="#" aria-controls="example2" data-dt-idx="2" tabindex="0" class="page-link">2</a></li>
              	 <li class="paginate_button page-item "><a href="#" aria-controls="example2" data-dt-idx="3" tabindex="0" class="page-link">3</a></li>
             	 <!-- 아래 다음 게시물링크 -->
              	 <li class="paginate_button page-item next" id="example2_next">
              	 <a href="#" aria-controls="example2" data-dt-idx="7" tabindex="0" class="page-link">Next</a>
              	 </li>
              	 </ul>
            
            </div>
            <!-- 페이징처리 끝 -->
                        
          </div>
        </div>

      </div><!-- /.container-fluid -->
    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->

<%@ include file="../include/footer.jsp" %>

