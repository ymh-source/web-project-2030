<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
     <%@include file="/WEB-INF/views/common/header.jsp" %>
   
    
<!DOCTYPE html>
<html>


<body>                

<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script src="https://kit.fontawesome.com/d3f6526fd6.js" crossorigin="anonymous"></script>


<section style="width: 100%;background: rgb(41,114,153);">
    <div class="container" style="padding-top: 150px;padding-bottom: 180px;">
        <div id="login-box" class="d-flex flex-column justify-content-center">
            <div class="login-box-header">
                <h4 style="color:rgb(139,139,139);margin-bottom:0px;font-weight:400;font-size:27px;">Login</h4>
            </div>

			<form action="${pageContext.request.contextPath}/user/loginPost" method="post" style="width:100%;">
           
           
            <div id="yl-login" style="background-color:#ffffff; width:400px;"> 
              
                <input class="id-input form-control" type="text" name="id" style="margin-top:30px; width:360px;" placeholder="ID" spellcheck="false" required pattern="^[a-zA-Z0-9]+$"/>
                
                <input class="password-input form-control" type="password" name="password" style="border-radius:8px; margin-top: 20px; width:360px;" placeholder="Password" spellcheck="false" required />
             </div> 
            
            
            
            <div class="submit-row" style="margin: 0px;margin-bottom: 8px;padding-top: 0px;margin-top: 30px;width:400px;">
                <button id="submit-id-submit" class="btn btn-primary d-block box-shadow w-100" type="submit">로그인</button>
            </div>
            </form>
            
            
            <div class="d-flex flex-row align-items-center login-box-seperator-container">
                <div class="login-box-seperator"></div>
                <div class="login-box-seperator-text">
                    <p style="margin-bottom:0px;padding-left:10px;padding-right:10px;font-weight:400;color:rgb(201,201,201);">or</p>
                </div>
                <div class="login-box-seperator"></div>
            </div>
            
            <div class="login-box-content">
                
                <div id="kakao-login" class="box-shadow" onclick="kakaoLogin();">
                    <a class="d-flex flex-row align-items-center" style="margin-bottom: 20px;margin-top: 10px; height:40px" href="javascript:void(0)">
                        <i class="fas fa-comment fa-lg" style="color:#000000;width:56px;"></i>
                        Login with Kakao</a>
                </div>                
                
                <div id="google-login" class="box-shadow">
                    <a class="d-flex flex-row align-items-center social-login-link" style="margin-bottom: 20px;margin-top: 20px;" href="javascript:void(0)">
                        <i class="fa fa-google" style="color:rgb(255,255,255);width:56px;"></i>
                        Login with Google+</a>
                </div>
            </div>
            
            <div id="login-box-footer" style="padding:10px 20px;padding-bottom:23px;padding-top:18px;">
                <p style="margin-bottom:0px;font-size:1rem;">계정이 없으신가요?
                    <a id="register-link" href="${pageContext.request.contextPath}/user/register">Sign Up!</a>
                </p>
            </div>
            
           
        </div>
      </div>

</section>





<script>
var msg = "${msg}";
if (msg === "REGISTERED") {
alert("회원가입이 완료되었습니다! 로그인 해주세요"); 
} else if (msg == "FAILURE") {
alert("아이디와 비밀번호를 확인해주세요."); }
</script>



<!-- 카카오 스크립트 -->
<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
<script>
Kakao.init('b4df088541c3cfbf664a01fe7b29e980'); //발급받은 키 중 javascript키를 사용해준다.
console.log(Kakao.isInitialized()); // sdk초기화여부판단
//카카오로그인
function kakaoLogin() {
    Kakao.Auth.login({
      success: function (response) {
        Kakao.API.request({
          url: '/v2/user/me',
          success: function (response) {
        	  console.log(response)
          },
          fail: function (error) {
            console.log(error)
          },
        })
      },
      fail: function (error) {
        console.log(error)
      },
    })
  }
</script>



<!-- 구글 api 사용을 위한 스크립트 -->
<script src="https://apis.google.com/js/platform.js?onload=init" async defer></script>

<!-- content에 자신의 OAuth2.0 클라이언트ID를 넣습니다. -->
<meta name ="google-signin-client_id" content="730242415618-h3qbe9s1f4ou9bpm8ngsb1v43v1s7o62.apps.googleusercontent.com">

<script>
//처음 실행하는 함수
function init() {
	gapi.load('auth2', function() {
		gapi.auth2.init();
		options = new gapi.auth2.SigninOptionsBuilder();
		options.setPrompt('select_account');
        // 추가는 Oauth 승인 권한 추가 후 띄어쓰기 기준으로 추가
		options.setScope('email profile openid https://www.googleapis.com/auth/user.birthday.read');
        // 인스턴스의 함수 호출 - element에 로그인 기능 추가
        // GgCustomLogin은 li태그안에 있는 ID, 위에 설정한 options와 아래 성공,실패시 실행하는 함수들
		gapi.auth2.getAuthInstance().attachClickHandler('google-login', options, onSignIn, onSignInFailure);
	})
}

function onSignIn(googleUser) {
	var access_token = googleUser.getAuthResponse().access_token
	$.ajax({
    	// people api를 이용하여 프로필 및 생년월일에 대한 선택동의후 가져온다.
		url: 'https://people.googleapis.com/v1/people/me'
        // key에 자신의 API 키를 넣습니다.
		, data: {personFields:'birthdays', key:'AIzaSyDpU6DdnAsMcIxEsAbvFXm3SFCcoyZpVQk', 'access_token': access_token}
		, method:'GET'
	})
	.done(function(e){
        //프로필을 가져온다.
		var profile = googleUser.getBasicProfile();
		console.log(profile)
	})
	.fail(function(e){
		console.log(e);
	})
}
function onSignInFailure(t){		
	console.log(t);
}

</script>



  <%@ include file="/WEB-INF/views/common/footer.jsp" %>
</body>

</html>