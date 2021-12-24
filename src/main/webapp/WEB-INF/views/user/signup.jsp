<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
    <%@include file="/WEB-INF/views/common/header.jsp" %>
<!DOCTYPE html>
<html>



<body style="height: 1000px;">
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script src="https://kit.fontawesome.com/d3f6526fd6.js" crossorigin="anonymous"></script>




<section class="d-xxl-flex justify-content-xxl-center align-items-xxl-center register-photo" style="background-color: rgb(255,195,001);height: 950px;">
    
    <div class="form-container" style="margin-top: 300px;height: 500px;margin-bottom: 200px;">
        <div class="image-holder" style="background: url('${pageContext.request.contextPath}/resources/img/sign-up.jpg') left / cover no-repeat;box-shadow: 2px 2px 10px grey;"></div>
        
        <form method="post" action="${pageContext.request.contextPath}/user/register" style="height: 525px;width: 400px;box-shadow: 2px 2px 10px grey;">
            <h2 class="text-center" style="font-size: 1.7rem;font-family: 'IBM Plex Sans KR';"><strong>Sign Up</strong></h2>
            
            <div class="form-group mb-3"><input class="form-control" type="text" name="id" placeholder="아이디" spellcheck="false" required pattern="^[a-zA-Z0-9]+$"/></div>
            
             <div class="form-group mb-3"><input class="form-control" type="text" name="nickname" placeholder="닉네임은 열자 이하입니다" spellcheck="false" maxlength="10" required/></div>
            
            <div class=" form-group mb-3"><input id="password" class="pw form-control" type="password" name="password" placeholder="비밀번호" spellcheck="false" required />
            </div>
            
            <div class=" form-group mb-3"><input id="confirmPassword" class="pw form-control" type="password" name="password-repeat" placeholder="비밀번호 확인" spellcheck="false" required />
                
                
                 <span id="alert-success" style="display: none;">비밀번호가 일치합니다.</span>
            <span id="alert-danger" style="display: none; color: #d92742; ">비밀번호가 일치하지 않습니다.</span>
            </div>
            
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
            
            <div class="form-group mb-3">
            <button id="submitButton" class="btn btn-primary d-block w-100" type="submit" style="background-color: #00b5a8;font-size: 1rem;text-align: center;font-weight: bold;box-shadow: 0px 0px;">
            회원가입</button></div>
                  
            
            <div id="login-box-footer" style="padding:10px 20px;padding-bottom:23px;padding-top:18px;">
                <p style="margin-bottom:0px;font-size:1rem;">이미 계정이 있으신가요?
                    <a id="login-link" href="${pageContext.request.contextPath}/user/login">Login</a>
                </p>
            </div>
        </form>
    </div>
</section>



<%@ include file="/WEB-INF/views/common/footer.jsp" %>


</body>

</html>