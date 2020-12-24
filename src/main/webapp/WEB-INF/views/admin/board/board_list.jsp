<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ include file="../include/header.jsp" %>

<!-- 대시보드 본문 Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- 본문헤더 Content Header (Page header) -->
    <div class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1 class="m-0">게시판리스트</h1>
          </div><!-- /.col -->
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#">Home</a></li>
              <li class="breadcrumb-item active">게시판리스트</li>
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
                <h3 class="card-title">게시물 검색</h3>

                <div class="card-tools">
                  
	                  <form name="search_form" action="/admin/board/board_list" method="get">
	                  <div class="input-group input-group-sm" >
	                  <!-- 부트스트랩 탬플릿만으로는 디자인 처리가 완전히 되지 않기 때문에 인라인 스타일 사용 -->
	                  <div>                            
	                        <select class="form-control">
	                           <option value="" selected>-전체-</option>
	                           <option value="title" data-select2-id="8">제목</option>
	                           <option value="content" data-select2-id="16">내용</option>
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
                      <th>bno</th><!-- 테이블 헤드 타이틀태그 th -->
                      <th>title[reply_count]</th>
                      <th>write</th>
                      <th>reg_date</th>
                      <th>view_count</th>  
                    </tr>
                  </thead>
                  <tbody>
                  <!-- jstl core를 갖다쓰는 이유는 향상된 for반복문을 사용하기 위해서 지정(아래) -->
                  <c:forEach items="${board_list}" var="boardVO">
                  <tr>
                    <td>${boardVO.bno}</td>
                    <!-- 아래 a링크값은 리스트가 늘어날수록 동적으로 bno 값이 변하게 됩니다. 개발자가 jsp로 처리 -->
                    <td><a href="/admin/board/board_view?bno=${boardVO.bno}">
                    <!-- c:out 사용하는 이유 보안 씨큐어코딩 처리 -->
                    <c:out value="${boardVO.title}"></c:out>[<c:out value="${boardVO.reply_count }"></c:out>] 
                    </a></td> 
                    <td><c:out value="${boardVO.writer}"></c:out></td>
                    <td><fmt:formatDate pattern="yyyy-MM-dd HH:mm" value="${boardVO.reg_date}"/></td>
                    <td><span class="badge bg-danger">${boardVO.view_count}</span></td>
                    <!-- 권한표시는 부트스트랩 뺏지 클래스 사용 -->
                  </tr>
                  </c:forEach>
                  
                  </tbody>
                </table>
              </div>
              <!-- /.card-body -->
                              
             </div>
            <!-- /.card -->
                     
              <!-- 버튼영역 시작 -->
              <div class="card-body">
              <a href="/admin/board/board_write" class="btn btn-primary float-right">CREATE</a>
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