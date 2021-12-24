<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
    
<%@include file="/WEB-INF/views/common/header.jsp" %>
	<div class="mh_container">
	    <div class="mh_board_table_top">
	        <h1 class="mh_board_title" style="border-bottom: 5px solid black; padding-bottom: 20px; text-align: left;">정책 수다</h1>
	    </div>
	    <div>
	        <form class="mh_field" action="${pageContext.request.contextPath}/community/reviewBoard/writePost" method="post">
			    <div class="mh_write_title">
	                <p style="margin: 0; text-align: left; color: #BCCE52">Title</p>
					<input type="text" name='title' class="mh_input_write_title" maxlength="50" placeholder="제목을 입력해주세요." autocomplete="off" required
					  onkeypress="if(event.keyCode == 13){return false;}">
				</div>
				
				 <div class="mh_write_title" hidden>
	                <p style="margin: 0; text-align: left; color: #BCCE52">작성자</p>
					<input type="text" name='nickName' value="${login.nickname}" class="mh_input_write_title" maxlength="50" autocomplete="off">
				</div>
				
	            <div class="mh_write_content">
	            	<p style="text-align: left; color: #BCCE52;">Content</p>
	                <div class="mh_content_box">
	                    <div class="mh_editor_toolbar" align="left">
	                        <button type="button" class="mh_editor_tool_btn" id="btn-bold"> <b>B</b> </button>
	                        <button type="button" class="mh_editor_tool_btn" id="btn-italic"> <i>I</i> </button>
	                        <button type="button" class="mh_editor_tool_btn" id="btn-underline"> <u>U</u> </button>
	                        <button type="button" class="mh_editor_tool_btn" id="btn-strike"> <s>S</s> </button>
	                        <button type="button" class="mh_editor_tool_btn" id="btn-ordered-list"><i class="fas fa-list-ol"></i></button>
	                        <button type="button" class="mh_editor_tool_btn" id="btn-unordered-list"><i class="fas fa-list-ul"></i></button>
	                        <button type="button" class="mh_editor_tool_btn" id="btn-image"><i class="far fa-image" style="font-size: 24px;"></i></button>
	                        <input id="mh_img_selector" type="file" accept="image/*"/>
	                        <input id="mh_file_selector" style="margin-left: -7px; margin-bottom: 5px;" type="file"/>
	                    </div>
	                	<textarea name="text" class="mh_write_view" spellcheck="true" maxlength="600" placeholder="내용을 입력해주세요." autocomplete="off" required></textarea>
	                </div>
	            </div>
	            <div class="mh_write_btns">
				    <button type="submit" class="mh_btn_ok" style="margin-right: 30px;" onclick="javascript: form.submit()">확인</button>
				    <button type="button" class="mh_btn_cancel" onclick="location.href='${pageContext.request.contextPath}/community/reviewBoard'">취소</button>
				</div>
	        </form>
	    </div>   
	</div>

<%@include file="/WEB-INF/views/common/footer.jsp" %> 