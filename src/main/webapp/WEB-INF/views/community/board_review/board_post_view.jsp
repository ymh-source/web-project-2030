<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<%@include file="/WEB-INF/views/common/header.jsp"%>

<div class="mh_container">
	<div class="mh_board_table_top">
		<h1 class="mh_board_title"
			style="border-bottom: 5px solid black; padding-bottom: 20px; text-align: left;">
			<c:out value="${boardPost.category }" />
		</h1>
	</div>
	<div>
		<fieldset class="mh_field">
			<div class="mh_community_article">
				<div class="mh_article_header">
					<p class="mh_article_title" name="title">
						<c:out value="${boardPost.title }" />
					</p>
					<div class="mh_article_info">
						<span name="nickName"><c:out value="${boardPost.nickName}" /></span>
						<span name="regDate"><fmt:formatDate pattern="yyyy-MM-dd"
								value="${boardPost.regDate }" /></span> <span name="regDate"><fmt:formatDate
								pattern="HH:mm" value="${boardPost.regDate }" /></span> <span
							name="watcher"><i class="fas fa-eye"></i> <c:out
								value="${boardPost.watcher }" /></span> <span name="up"><i
							class="fas fa-thumbs-up"></i> <c:out value="${boardPost.up }" /></span>
						<span name="down"><i class="fas fa-thumbs-down"></i> <c:out
								value="${boardPost.down }" /></span>
					</div>
				</div>
				<div class="mh_article_body">
					<div class="mh_body_content" name="text">
						<c:out value="${boardPost.text }" />
					</div>
					<div class="mh_article_footer">
						<button type="button" class="mh_btn_up">
							<i class="far fa-thumbs-up"></i>
						</button>
						<button type="button" class="mh_btn_down">
							<i class="far fa-thumbs-down"></i>
						</button>
					</div>
				</div>
			</div>

			<c:if
				test="${login.nickname == boardPost.nickName or login.id eq 'admin'}">

				<div style="margin-top: 10px;">
					<button type="button"
						style="background-color: transparent; width: 50px; padding: 0; border: none;"
						onclick="location.href='${pageContext.request.contextPath}/community/reviewBoard/modPost?postNum=<c:out value="${boardPost.postNum }"/>';">수정</button>
					<button type="button"
						style="background-color: transparent; width: 50px; padding: 0; border: none;"
						onclick="location.href='${pageContext.request.contextPath}/community/reviewBoard/removePost?postNum=<c:out value="${boardPost.postNum }"/>';">삭제</button>
				</div>
			</c:if>

			<div class="mh_community_comment">
				<div class="mh_comment_write">
					<div>
						<span class="mh_comment_write_title">댓글</span> <span
							class="mh_comment_write_reply">(<c:out
								value="${boardPost.reply}" />)
						</span>
					</div>
					<form
						action="${pageContext.request.contextPath}/community/reviewBoard/writeComment"
						method="post">
						<input type="hidden" name="postNum" value="${boardPost.postNum }">
						<input type="hidden" name="nickName" value="${login.nickname }">
						<textarea name="text" class="mh_comment_textarea"
							placeholder="예쁜 댓글을 달아주세요!"></textarea>
						<button type="submit" class="mh_btn_reg_comment">등록</button>
					</form>
					<c:forEach items="${commentList}" var="comment">
						<div class="mh_comment_view">
							<div style="height: 30px;">
								<span class="mh_comment_writer"><c:out
										value="${comment.nickName}" /></span> <span
									class="mh_comment_reg_date"><fmt:formatDate
										pattern="yyyy-MM-dd HH:mm" value="${comment.regDate }" /></span>
							</div>
							<div class="mh_comment_content">
								<span><c:out value="${comment.text }" /></span>
								  <%-- <button
									style="padding: 0; background-color: transparent; float: right; border: none;"
									onclick="location.href='/community/removeComment?postNum=<c:out value="${boardPost.postNum }"/>&commentNum=<c:out value="${comment.commentNum }"/>';">삭제</button>  --%>
							</div>
						</div>
					</c:forEach>
				</div>
		</fieldset>
	</div>
</div>

<%@include file="/WEB-INF/views/common/footer.jsp" %> 
