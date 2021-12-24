<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="path" value="${pageContext.request.contextPath}" />

<%@include file="/WEB-INF/views/common/header.jsp"%>

<!DOCTYPE html>
<html>


<body>
	<script
		src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
	<script src="https://kit.fontawesome.com/d3f6526fd6.js"
		crossorigin="anonymous"></script>


<section class="d-xxl-flex justify-content-xxl-center align-items-xxl-center" style="height: 1000px;width: 100%;padding-bottom: 100px; background-color:rgb(127,211,209);">
    <div id="profile" class="container d-xxl-flex justify-content-xxl-center align-items-xxl-center profile profile-view">
        <div class="row d-xxl-flex justify-content-xxl-center align-items-xxl-center profile-row" style="box-shadow: 1px 1px 10px grey;border-radius: 10px;height: 100%; background-color:white; padding-top:50px; padding-bottom:50px">
            <div class="col-md-4 relative" style="height: 310px;">
                <div class="avatar">
                    <div class="center">
                    <img src="${path}/resources/img/user.svg" class="center profile-img-big" style="width:200px; height:200px"></div>
                </div><input class="form-control form-control" type="file" name="user-img" style="font-size:1rem;font-family:'IBM Plex Sans KR';margin-top:20px;" />
            </div>
            <div class="col-md-8" style="width: 600px;">
                <h1 style="font-size:2rem;font-family:'IBM Plex Sans KR';font-weight:bold;padding-top:10px;">프로필 수정</h1>
                <hr />
                <div class="row">
                    <div class="col-sm-12 col-md-6">
                        <div class="form-group mb-3"><label class="form-label" style="font-size:1rem;font-family:'IBM Plex Sans KR';font-weight:bold;">아이디</label>
                            <input class="form-control" type="text" name="id" spellcheck="false" readonly value="${login.id}"/></div>
                    </div>
                    
                    <div class="col-sm-12 col-md-6">
                        <div class="form-group mb-3"><label class="form-label" style="font-size:1rem;font-family:'IBM Plex Sans KR';font-weight:bold;">닉네임</label>
                            
                            <input id="nickname" class="form-control" type="text" name="nickname" spellcheck="false" value="${login.nickname}"/></div>
                    </div>
                </div>
                
                <div class="row">
                    <div class="col-sm-12 col-md-6">
                        <div class=" form-group mb-3"><label class="form-label" style="font-size:1rem;font-weight:bold;font-family:'IBM Plex Sans KR';">비밀번호</label>
                            <input id="password" class="pw form-control" type="password" name="password" spellcheck="false" autocomplete="off" required/></div>
                    </div>
                    <div class="col-sm-12 col-md-6">
                        <div class="form-group mb-3"><label class="form-label" style="font-size:1rem;font-family:'IBM Plex Sans KR';font-weight:bold;">비밀번호 확인</label>
                            <input id="confirmPassword" class="pw form-control" type="password" name="confirmpass" spellcheck="false" autocomplete="off" required /></div>
                        
                        <span id="alert-success" style="display: none;">비밀번호가 일치합니다.</span>
            <span id="alert-danger" style="display: none; color: #d92742; ">비밀번호가 일치하지 않습니다.</span>
                        
                        <script>
    $('.pw').focusout(function () {
        var pwd1 = $("#password").val();
        var pwd2 = $("#confirmPassword").val();
  
        if ( pwd1 != '' && pwd2 == '' ) {
            null;
        } else if (pwd1 != "" || pwd2 != "") {
            if (pwd1 == pwd2) {
                $("#alert-success").css('display', 'inline-block');
                $("#alert-danger").css('display', 'none');
            } else {
                $("#alert-success").css('display', 'none');
                $("#alert-danger").css('display', 'inline-block');
            }
        }
    });
</script> 
                        
                    </div>
                </div>
                <hr />
                
                <div class="row">
                    <div class="col-md-12 content-right"><button class="btn btn-primary form-btn" type="submit">SAVE</button>
                    <button class="btn btn-danger form-btn" onClick="history.back();">CANCEL</button></div>
                </div>
            </div>
        </div>
    </div>
</section>

<%@include file="/WEB-INF/views/common/footer.jsp" %> 
</body>



</html>