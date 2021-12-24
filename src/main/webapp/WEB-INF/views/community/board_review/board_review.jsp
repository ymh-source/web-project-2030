<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
  <c:set var = "path" value = "${pageContext.request.contextPath}"/>

 <%@include file="/WEB-INF/views/common/header.jsp" %>
    
   <div class="mh_container">
	<h1 class="mh_board_title" style="text-align: center">정책 수다</h1>
    <p class="mh_board_explanation">나의 정책 후기를 공유해보세요.</p>
	<div class="mh_board_table">
		<table class="table">
			<thead>
				<tr> 
	                <th class="tbl_no">No</th> 
	                <th class="tbl_title">제목</th>
	                <th class="tbl_writer">작성자</th>
	                <th class="tbl_reg_date">작성일</th>
	                <th class="tbl_watcher">조회수</th> 
	                <th class="tbl_up">추천</th>
	                <th class="tbl_down">비추천</th> 
	            </tr>
	        </thead>
	        <tbody>
				<c:forEach items="${reviewBoardList }" var="reviewBoard">
            		<tr>
              			<td class="tbl_no"><c:out value="${reviewBoard.postNum }" /></td>
               			<td class="tbl_title">
                  			<a href='${path}/community/reviewBoard/postView?postNum=<c:out value="${reviewBoard.postNum }"/>'>
                  				<c:out value="${reviewBoard.title }" />
                  			</a>
                  		</td>
              			<td class="tbl_writer"><c:out value="${reviewBoard.nickName }" /></td>
              			<td class="tbl_reg_date"><fmt:formatDate pattern="yyyy-MM-dd" value="${reviewBoard.regDate }" /></td>
            			<td class="tbl_watcher"><c:out value="${reviewBoard.watcher }"/></td>
                		<td class="tbl_up"><c:out value="${reviewBoard.up }"/></td>
                		<td class="tbl_down"><c:out value="${reviewBoard.down }"/></td>
            		</tr>
         		 </c:forEach>
          	</tbody>
		</table>
	</div> <!-- end board table -->
	<div class="mh_board_table_bottom">
		<button id='mh_post_regBtn' type="button" class="mh_btn_write">글쓰기</button>
		<ul class="pagination">
			<c:if test="${pageMaker.prev}">
				<li class="paginate_button previous">
					<a class="page-link" href="${pageMaker.startPage -1}">«</a>
				</li>
			</c:if>
			<c:forEach var="num" begin="${pageMaker.startPage}" end="${pageMaker.endPage}">
				<li class="paginate_button page-item  ${pageMaker.cri.pageNum == num ? "active":""} ">
					<a class="page-link" href="${num}">${num}</a>
				</li>
			</c:forEach>
			<c:if test="${pageMaker.next}">
				<li class="paginate_button next">
					<a class="page-link" href="${pageMaker.endPage +1 }">»</a>
				</li>
			</c:if>
		</ul>
	</div> <!-- end board table bottom -->
	<form id='searchForm' action="${path}/community/reviewBoard" method='get'>
		<div class="community_search">
	    	<div class="mh_search_category">
				<select class="mh_selbox" name='type'>
					<option value="T" <c:out value="${pageMaker.cri.type eq 'T'?'selected':'' }"/> selected>제목</option>
					<option value="C" <c:out value="${pageMaker.cri.type eq 'C'?'selected':'' }"/>>내용</option>
					<option value="TC" <c:out value="${pageMaker.cri.type eq 'TC'?'selected':'' }"/>>제목+내용</option>
					<option value="W" <c:out value="${pageMaker.cri.type eq 'W'?'selected':'' }"/>>작성자</option>
				</select>
			</div>
			<div class="align-items-center form-row mh_search_input" style="width: 300px;">
				<div class="col-sm form-group mb-3" style="padding-right: 4px;padding-left: 0;">
					<input class="form-control ps-4 pe-4" type='text' name='keyword' style="margin-top: 0;margin-bottom: 0;"
							placeholder="Search..." autocomplete="off" value='<c:out value="${pageMaker.cri.keyword}"/>' />
					<input type='hidden' name='pageNum' value='<c:out value="${pageMaker.cri.pageNum}"/>' />
					<input type='hidden' name='amount' value='<c:out value="${pageMaker.cri.amount}"/>' />
				</div>
				<div class="col-sm-auto text-end form-group mb-3" style="padding-right: 0;padding-left: 0;">
            		<button class="btn btn-primary ps-4 pe-4 mh_btn_search" type="submit"><i class="fa fa-search"></i></button>
            	</div>
			</div>
		</div> <!-- end community search -->
	</form>
	<form id='actionForm' action="${path}/community/reviewBoard" method='get'>
		<input type='hidden' name='pageNum' value='${pageMaker.cri.pageNum}'>
		<input type='hidden' name='amount' value='${pageMaker.cri.amount}'>
		<input type='hidden' name='type' value='<c:out value="${ pageMaker.cri.type }"/>'>
		<input type='hidden' name='keyword' value='<c:out value="${ pageMaker.cri.keyword }"/>'>
	</form>
</div> <!-- end container -->

<script type="text/javascript">
	$(document).ready(function() {
		$("#mh_post_regBtn").on("click", function() {
			self.location = "${path}/community/reviewBoard/writePost";
		});

		var actionForm = $("#actionForm");

		$(".paginate_button a").on("click", function(e) {
			e.preventDefault();
			actionForm.find("input[name='pageNum']").val($(this).attr("href"));
			actionForm.submit();
		});

		/* $(".move").on("click", function(e) {
			e.preventDefault();
			actionForm.append("<input type='hidden' name='postNum' value='" + $(this).attr("href") + "'>");
			actionForm.attr("action", "${path}/community/postView");
			actionForm.submit();
		}); */

		var searchForm = $("#searchForm");

		$("#searchForm button").on("click", function(e) {
			if (!searchForm.find("input[name='keyword']").val()) {
				alert("키워드를 입력하세요");
				return false;
			}

			searchForm.find("input[name='pageNum']").val("1");
				e.preventDefault();
				searchForm.submit();
		});
	});
</script>

<%@include file="/WEB-INF/views/common/footer.jsp" %> 