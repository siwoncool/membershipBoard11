<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<style>
body {
  padding:1.5em;
  background: #f5f5f5
}

table {
  border: 1px #a39485 solid;
  font-size: .9em;
  box-shadow: 0 2px 5px rgba(0,0,0,.25);
  width: 100%;
  border-collapse: collapse;
  border-radius: 5px;
  overflow: hidden;
}

th {
  text-align: left;
}
  
th {
  font-weight: bold;
  color: #fff;
  background: #73685d;
}
  
 td, th {
  padding: 1em .5em;
  vertical-align: middle;
}
  
 td {
  border-bottom: 1px solid rgba(0,0,0,.1);
  background: #fff;
}

a {
  color: #73685d;
}
  
 @media all and (max-width: 768px) {
    
  table, thead, tbody, th, td, tr {
    display: block;
  }
  
  th {
    text-align: right;
  }
  
  table {
    position: relative; 
    padding-bottom: 0;
    border: none;
    box-shadow: 0 0 10px rgba(0,0,0,.2);
  }
  
  thead {
    float: left;
    white-space: nowrap;
  }
  
  tbody {
    overflow-x: auto;
    overflow-y: hidden;
    position: relative;
    white-space: nowrap;
  }
  
  tr {
    display: inline-block;
    vertical-align: top;
  }
  
  th {
    border-bottom: 1px solid #a39485;
  }
  
  td {
    border-bottom: 1px solid #e5e5e5;
  }
  
  
  }
</style>
<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>ZenBlog Bootstrap Template - Contact</title>
  <meta content="" name="description">
  <meta content="" name="keywords">

  <!-- Favicons -->
  <link href="resources/assets/img/favicon.png" rel="icon">
  <link href="resources/assets/img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Google Fonts -->
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=EB+Garamond:wght@400;500&family=Inter:wght@400;500&family=Playfair+Display:ital,wght@0,400;0,700;1,400;1,700&display=swap" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="resources/assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="resources/assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="resources/assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">
  <link href="resources/assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
  <link href="resources/assets/vendor/aos/aos.css" rel="stylesheet">

  <!-- Template Main CSS Files -->
  <link href="resources/assets/css/variables.css" rel="stylesheet">
  <link href="resources/assets/css/main.css" rel="stylesheet">

  <!-- =======================================================
  * Template Name: ZenBlog - v1.2.1
  * Template URL: https://bootstrapmade.com/zenblog-bootstrap-blog-template/
  * Author: BootstrapMade.com
  * License: https:///bootstrapmade.com/license/
  ======================================================== -->
</head>

<body>

   <!-- ======= Header ======= -->
  <header id="header" class="header d-flex align-items-center fixed-top">
    <div class="container-fluid container-xl d-flex align-items-center justify-content-between">

      <a href="index.html" class="logo d-flex align-items-center">
        <!-- Uncomment the line below if you also wish to use an image logo -->
        <!-- <img src="resources/assets/img/logo.png" alt=""> -->
        <h1>시원 게시판</h1>
      </a>

      <nav id="navbar" class="navbar">
        <ul>
          <li><a href="index.html">Blog</a></li>
          <li><a href="bList">소통게시판</a></li>
          <li class="dropdown"><a href="category.html"><span>게시판카테고리</span> <i class="bi bi-chevron-down dropdown-indicator"></i></a>
            <ul>
              <li><a href="search-result.html">Search Result</a></li>
              <li><a href="#">스포츠 게시판</a></li>
               
              </li>
          <li><a href="#">게임 게시판</a></li>
             <li><a href="#">라이프 게시판</a></li>
             <li><a href="#">연애 게시판</a></li>
              <li><a href="#">음악 게시판</a></li>
            </ul>
          </li>

          <li><a href="about.html">공지사항</a></li>
          <li><a href="bWriteForm" class="mx-2"><span>게시글작성</span></a></li>
        </ul>
      </nav><!-- .navbar -->

      <div class="position-relative">
        <a href="#" class="mx-2"><span class="bi-facebook"></span></a>
        <a href="#" class="mx-2"><span class="bi-twitter"></span></a>
        <a href="#" class="mx-2"><span class="bi-instagram"></span></a>

        <a href="#" class="mx-2 js-search-open"><span class="bi-search"></span></a>
        <i class="bi bi-list mobile-nav-toggle"></i>

        <!-- ======= Search Form ======= -->
        <div class="search-form-wrap js-search-form-wrap">
          <form action="search-result.html" class="search-form">
            <span class="icon bi-search"></span>
            <input type="text" placeholder="Search" class="form-control">
            <button class="btn js-search-close"><span class="bi-x"></span></button>
          </form>
        </div><!-- End Search Form -->

      </div>

    </div>

  </header><!-- End Header -->

  <main id="main">
    <section id="contact" class="contact mb-5">
      <div class="container" data-aos="fade-up">

        <div class="row">
          <div class="col-lg-12 text-center mb-5">
            <h1 class="page-title">회원가입</h1>
          </div>
        </div>


        <div class="form mt-5">
          <form action="mJoin" method="POST" name="joinForm" class="php-email-form" enctype="multipart/form-data" >
          
            <table>
			<caption>회원가입</caption>


			<tr>
				<th>아이디</th>
				<td><input type="text" id="memId" name="memId" onkeyup="checkId()"/>
				<br/><span id="check1"></span></td>
			</tr>

			<tr>
				<th>비밀번호</th>
				<td><input type="password" name="memPw" id="memPw" onkeyup="pwRegexp()" size="40" placeholder="영문, 숫자, 특수문자 혼합"/>
				<br/><span id="pwResult1"></span></td>
			</tr>
			
			<tr>
				<th>비밀번호 확인</th>
				<td><input type="password" id="checkPw" onkeyup="pwCheck()" size="40"/>
				<br/><span id="pwResult2"></span></td>
				
			</tr>

			<tr>
				<th>이름</th>
				<td><input type="text" id="memName" name="memName" onkeyup="nameRegexp()" size="40"/>
				<br/><span id="pwResult3"></span></td>
			</tr>

			<tr>
				<th>생년월일</th>
				<td><input type="date" name="memBirth"/></td>
			</tr>

			<tr>
				<th>성별</th>
				<td>남성<input type="radio" name="memGender" value="남성" /> 
					여성<input type="radio" name="memGender" value="여성" /></td>
			</tr>

			<tr>
				<th>이메일</th>
				<td><input type="email" id="memEmail" name="memEmail" size="40"/>
				<span id="confEmail"><input type="button" value="인증번호 발송" onclick="checkEmail()"/></span></td>
			</tr>

			<tr>
				<th>연락처</th>
				<td><input type="text" name="memPhone" size="40"/></td>
			</tr>
			
			<tr>
				<th>주소</th>
				<td>
					<input type="text" 	 name="addr1" id="sample6_postcode" placeholder="우편번호">
					<input type="button" onclick="sample6_execDaumPostcode()" value="우편번호 찾기"><br>
					<input type="text"   name="addr2" size="40" id="sample6_address" placeholder="주소"><br>
					<input type="text"   name="addr3" size="40" id="sample6_detailAddress" placeholder="상세주소">
					
				</td>
			</tr>
			
			<tr>
				<th>프로필 사진</th>
				<td><input type="file" name="memProfile"/></td>
			</tr>
			
			<tr>
				<td colspan="2" style="text-align:center"><input type="button" onclick="checkConfirm()" value="가입" /></td>
			</tr>

		</table>
          </form>
        </div><!-- End Contact Form -->

      </div>
    </section>

  </main><!-- End #main -->

  <!-- ======= Footer ======= -->
  <footer id="footer" class="footer">

    <div class="footer-content">
      <div class="container">

        <div class="row g-5">
          <div class="col-lg-4">
            <h3 class="footer-heading">About ZenBlog</h3>
            <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Magnam ab, perspiciatis beatae autem deleniti voluptate nulla a dolores, exercitationem eveniet libero laudantium recusandae officiis qui aliquid blanditiis omnis quae. Explicabo?</p>
            <p><a href="about.html" class="footer-link-more">Learn More</a></p>
          </div>
          <div class="col-6 col-lg-2">
            <h3 class="footer-heading">Navigation</h3>
            <ul class="footer-links list-unstyled">
              <li><a href="index.html"><i class="bi bi-chevron-right"></i> Home</a></li>
              <li><a href="index.html"><i class="bi bi-chevron-right"></i> Blog</a></li>
              <li><a href="category.html"><i class="bi bi-chevron-right"></i> Categories</a></li>
              <li><a href="single-post.html"><i class="bi bi-chevron-right"></i> Single Post</a></li>
              <li><a href="about.html"><i class="bi bi-chevron-right"></i> About us</a></li>
              <li><a href="contact.html"><i class="bi bi-chevron-right"></i> Contact</a></li>
            </ul>
          </div>
          <div class="col-6 col-lg-2">
            <h3 class="footer-heading">Categories</h3>
            <ul class="footer-links list-unstyled">
              <li><a href="category.html"><i class="bi bi-chevron-right"></i> Business</a></li>
              <li><a href="category.html"><i class="bi bi-chevron-right"></i> Culture</a></li>
              <li><a href="category.html"><i class="bi bi-chevron-right"></i> Sport</a></li>
              <li><a href="category.html"><i class="bi bi-chevron-right"></i> Food</a></li>
              <li><a href="category.html"><i class="bi bi-chevron-right"></i> Politics</a></li>
              <li><a href="category.html"><i class="bi bi-chevron-right"></i> Celebrity</a></li>
              <li><a href="category.html"><i class="bi bi-chevron-right"></i> Startups</a></li>
              <li><a href="category.html"><i class="bi bi-chevron-right"></i> Travel</a></li>

            </ul>
          </div>

          <div class="col-lg-4">
            <h3 class="footer-heading">Recent Posts</h3>

            <ul class="footer-links footer-blog-entry list-unstyled">
              <li>
                <a href="single-post.html" class="d-flex align-items-center">
                  <img src="resources/assets/img/post-sq-1.jpg" alt="" class="img-fluid me-3">
                  <div>
                    <div class="post-meta d-block"><span class="date">Culture</span> <span class="mx-1">&bullet;</span> <span>Jul 5th '22</span></div>
                    <span>5 Great Startup Tips for Female Founders</span>
                  </div>
                </a>
              </li>

              <li>
                <a href="single-post.html" class="d-flex align-items-center">
                  <img src="resources/assets/img/post-sq-2.jpg" alt="" class="img-fluid me-3">
                  <div>
                    <div class="post-meta d-block"><span class="date">Culture</span> <span class="mx-1">&bullet;</span> <span>Jul 5th '22</span></div>
                    <span>What is the son of Football Coach John Gruden, Deuce Gruden doing Now?</span>
                  </div>
                </a>
              </li>

              <li>
                <a href="single-post.html" class="d-flex align-items-center">
                  <img src="resources/assets/img/post-sq-3.jpg" alt="" class="img-fluid me-3">
                  <div>
                    <div class="post-meta d-block"><span class="date">Culture</span> <span class="mx-1">&bullet;</span> <span>Jul 5th '22</span></div>
                    <span>Life Insurance And Pregnancy: A Working Momâs Guide</span>
                  </div>
                </a>
              </li>

              <li>
                <a href="single-post.html" class="d-flex align-items-center">
                  <img src="resources/assets/img/post-sq-4.jpg" alt="" class="img-fluid me-3">
                  <div>
                    <div class="post-meta d-block"><span class="date">Culture</span> <span class="mx-1">&bullet;</span> <span>Jul 5th '22</span></div>
                    <span>How to Avoid Distraction and Stay Focused During Video Calls?</span>
                  </div>
                </a>
              </li>

            </ul>

          </div>
        </div>
      </div>
    </div>

    <div class="footer-legal">
      <div class="container">

        <div class="row justify-content-between">
          <div class="col-md-6 text-center text-md-start mb-3 mb-md-0">
            <div class="copyright">
              Â© Copyright <strong><span>ZenBlog</span></strong>. All Rights Reserved
            </div>

            <div class="credits">
              <!-- All the links in the footer should remain intact. -->
              <!-- You can delete the links only if you purchased the pro version. -->
              <!-- Licensing information: https://bootstrapmade.com/license/ -->
              <!-- Purchase the pro version with working PHP/AJAX contact form: https://bootstrapmade.com/herobiz-bootstrap-business-template/ -->
              Designed by <a href="https://bootstrapmade.com/">BootstrapMade</a>
            </div>

          </div>

          <div class="col-md-6">
            <div class="social-links mb-3 mb-lg-0 text-center text-md-end">
              <a href="#" class="twitter"><i class="bi bi-twitter"></i></a>
              <a href="#" class="facebook"><i class="bi bi-facebook"></i></a>
              <a href="#" class="instagram"><i class="bi bi-instagram"></i></a>
              <a href="#" class="google-plus"><i class="bi bi-skype"></i></a>
              <a href="#" class="linkedin"><i class="bi bi-linkedin"></i></a>
            </div>

          </div>

        </div>

      </div>
    </div>

  </footer>

  <a href="#" class="scroll-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

  <!-- Vendor JS Files -->
  <script src="resources/assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="resources/assets/vendor/swiper/swiper-bundle.min.js"></script>
  <script src="resources/assets/vendor/glightbox/js/glightbox.min.js"></script>
  <script src="resources/assets/vendor/aos/aos.js"></script>
  <script src="resources/assets/vendor/php-email-form/validate.js"></script>

  <!-- Template Main JS File -->
  <script src="resources/assets/js/main.js"></script>

</body>
<script src="https://code.jquery.com/jquery-3.6.1.js" integrity="sha256-3zlB5s2uwoUzrXK3BT7AX3FyvojsraNFxCc2vC/7pNI=" crossorigin="anonymous"></script>
<script>

function pwRegexp(){
	let memPw = document.getElementById("memPw").value;
	let pwResult1 = document.getElementById("pwResult1");
	
	let num = memPw.search(/[0-9]/);
	let eng = memPw.search(/[a-z]/);
	let spe = memPw.search(/[`~!@#$%^&*|\\\'\":;\/?]/);
	let spc = memPw.search(/\s/);
	
	console.log("num : " + num + " , eng : " + eng + " , spe : " + spe);

	
	if(memPw.length < 8 || memPw.length > 16){
		pwResult1.style.color = "#ff0000";
		pwResult1.innerHTML = "비밀번호는 8자리에서 16자리 이내로 입력해주세요.";
		return false;
		
	} else if(spc >= 0){
		pwResult1.style.color = "#ff0000";
		pwResult1.innerHTML = "비밀번호는 공백없이 입력해주세요.";
		return false;
	
	} else if(num < 0 || eng < 0 || spe < 0){
		pwResult1.style.color = "#ff0000";
		pwResult1.innerHTML = "영문, 숫자, 특수문자를 혼합하여 입력해주세요.";
		return false;
	
	} else {
		pwResult1.style.color = "#0000ff";
		pwResult1.innerHTML = "사용가능한 비밀번호 입니다.";
		return true;
	}
	

}

function pwCheck(){
	
	let memPw = document.getElementById("memPw").value;
	let checkPw = document.getElementById("checkPw").value;
	let pwResult2 = document.getElementById("pwResult2");
	
	if(memPw == checkPw){
		pwResult2.style.color = "#0000ff";
		pwResult2.innerHTML = "비밀번호가 일치합니다.";
		return true;
	} else {
		pwResult2.style.color = "#ff0000";
		pwResult2.innerHTML = "비밀번호가 일치하지 않습니다.";
		return false;
	}
	
	
}

function checkConfirm(){
	

	
	if(!pwRegexp() || !pwCheck()){
		
		alert('비밀번호를 확인해주세요!.');
		
	} else if(!checkEmail2()){
		
		alert('이메일 인증을 진행해주세요.');
		
	} else {
		
		joinForm.submit();
	}
}

function checkId(){
	let memId = document.getElementById("memId").value;
	// location.href = "idCheck?memId=" + memId;
	
	let check1 = document.getElementById("check1");
	
	$.ajax({
		type : "POST",
		url : "idoverlap",
		data : {
			"memId" : memId
		}, 
		dataType : "text", 
		success : function(result){
			if(result=="OK"){
				// 사용할 수 있는 아이디일 경우 실행
				check1.innerHTML = memId + "는 사용가능한 아이디";
				check1.style.color = "#0000ff";
				
			} else {
				// 사용할 수 없는 아이디일 경우 실행
				check1.innerHTML = memId + "는 이미 사용중인 아이디";
				check1.style.color = "#ff0000";
				
			}
		},
		error : function(){
			alert("idoverlap함수 통신실패!");
			
		}
		
	});

	
}

function checkEmail(){
	
	
	let memEmail = $("#memEmail").val();
	
	$.ajax({
		type : "POST",
		url : "mCheckEmail",
		data : { "memEmail" : memEmail },
		dataType : "text",
		success : function(uuid){
			console.log("이메일 인증번호1 : " + uuid);
			$("#confEmail").html("<br/><input type='text' id='uuidCheck'/>"
					+" <input type='hidden' value='"+ uuid +"' id='uuid'/>"
					+" <input type='button' value='인증' onclick=\"checkEmail2()\"/>");
		},
		error : function(){
			alert('이메일 인증 통신 실패!');
		}
	});
}


function checkEmail2(){
	let uuid = $("#uuid").val();
	console.log("이메일 인증번호2 : " + uuid);
	
	let uuidCheck = $("#uuidCheck").val();
	console.log("입력한 인증번호 : " + uuidCheck);
	
	let boolUUID = false;
	
	if(uuidCheck==null || uuidCheck==""){
		
	}else if(uuid == uuidCheck){
		alert('인증성공!');
		boolUUID = true;
	} else {
		alert('인증실패!');
	}
	
	return boolUUID;
}

</script>

<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
    function sample6_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var addr = ''; // 주소 변수

                //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                    addr = data.roadAddress;
                } else { // 사용자가 지번 주소를 선택했을 경우(J)
                    addr = data.jibunAddress;
                }

                

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('sample6_postcode').value = data.zonecode;
                document.getElementById("sample6_address").value = addr;
                // 커서를 상세주소 필드로 이동한다.
                document.getElementById("sample6_detailAddress").focus();
            }
        }).open();
    }
</script>



</html>