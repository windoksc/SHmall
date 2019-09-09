<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<script src="https://code.jquery.com/jquery-1.12.4.	js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page session="false" %>
<html>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<head>
		<title> 회원가입</title>
	<link rel="shortcut icon" href="//img.danawa.com/new/danawa_main/v1/img/danawa_favicon.ico" />
	<script type="text/javascript" src="/resources/js/util/envUtils.js?v=10"></script>
		<link href="//static.danawa.com/new/recss/member_new.css?v=10" rel="stylesheet" type="text/css" />
		<link href="../css/main.css" rel="stylesheet" /> 
<!-- 		<script type="text/javascript" src="/resources/js/jquery-1.11.3.min.js"></script> -->
<!-- 		<script type="text/javascript" src="/resources/js/library/underscore-1.8.3.min.js"></script> -->
<!-- 		<script type="text/javascript" src="/resources/js/util/envUtils.js"></script> -->
<!-- 		<script type="text/javascript" src="/resources/js/util/dataUtils.js"></script> -->
<!-- 		<script type="text/javascript" src="/resources/js/util/logUtils.js"></script> -->
<!-- 		<script type="text/javascript" src="/resources/js/application/common/global.js"></script> -->
<!-- 		<script type="text/javascript" src="/resources/js/util/navigationUtils.js"></script> -->
<!-- 		<script type="text/javascript" src="/resources/js/service/netService.js"></script> -->
<!-- 		<script type="text/javascript" src="/resources/js/DanawaMemberValidation.js"></script> -->
<!-- 		<script type="text/javascript" src="/resources/js/application/model/join/joinStep.js"></script> -->
		<script type="text/javascript">
// 			$(document).ready(function() {
// 				var memberJoinStep = new DanawaMemberJoinStep();
// 					memberJoinStep.initialize('1');
					
// 				var memberValidation = new DanawaMemberValidation();
// 				var validatonTagetId = {
// 						tagetFome : "danawa-member-joinStep-form-id",
// 						member : {
// 							id:"danawa-member-joinStep-member-id",
// 							password : "danawa-member-joinStep-member-password",
// 							passwordConfirm :"danawa-member-joinStep-member-passwordConfim", 
// 							name : "danawa-member-joinStep-member-name",
// 							nickname : "danawa-member-joinStep-member-nickname",
// 							email : {
// 								emailFirst :"danawa-member-joinStep-member-email-emailFirst",
// 								emailSecond :"danawa-member-joinStep-member-email-emailSecond"
// 							}
// 						},
// 						message : {
// 							id:"danawa-member-joinStep-message-id",
// 							password : "danawa-member-joinStep-message-password",
// 							passwordConfirm : "danawa-member-joinStep-message-passwordConfirm",
// 							name : "danawa-member-joinStep-message-name",
// 							nickname : "danawa-member-joinStep-message-nickname", 
// 							email :"danawa-member-joinStep-message-email"
// 						}
// 				};
// 				memberValidation.initialize(validatonTagetId);
// 			});
function doDisplay(){
    var con = document.getElementById("danawa-member-joinStep-member-agreement");
    if(con.style.display=='none'){
        con.style.display = 'block';
    }else{
        con.style.display = 'none';
    }
}
function doDisplay2(){
	var con2 = document.getElementById("danawa-member-joinStep-guide-textDesc-privacy");
	if(con2.style.display=='none') {
		con2.style.display='block';
	} else {
		con2.style.display='none';
	}
}		
function Display2f(){
	var con2 = document.getElementById("danawa-member-joinStep-company-self");
		con2.style.display='block';
		$('#danawa-member-joinStep-tap-member-on').attr('class','');
		$('#danawa-member-joinStep-tap-company-on').attr('class','on');
}	
function Display3f(){
	var con2 = document.getElementById("danawa-member-joinStep-company-self");
	con2.style.display='none';
	$('#danawa-member-joinStep-tap-company-on').attr('class','');
	$('#danawa-member-joinStep-tap-member-on').attr('class','on');
}	
function doDisplay3(){
	var con3 = document.getElementById("danawa-member-joinStep-guide-textDesc-mailing");
	if(con3.style.display=='none') {
		con3.style.display='block';
	} else {
		con3.style.display='none';
	}
}		

$(document).ready(function () {
                     //이메일 domain선택 selectBox
                   $('#danawa-member-joinStep-selectBox-email').change(function(){
                   $("#danawa-member-joinStep-selectBox-email option:selected").each(function () {
                   //직접입력일 경우
                   console.log($(this).val());
                   if($(this).val()== '1'){
                               $("#danawa-member-joinStep-member-email-emailSecond").val('');                             //textBox값 초기화
                               $("#danawa-member-joinStep-member-email-emailSecond").attr("disabled",false);    //textBox 활성화
                   }
                   else{
                             $("#danawa-member-joinStep-member-email-emailSecond").val($(this).text());      //selectBox에서 선택한 값을 textBox에 입력
                             $("#danawa-member-joinStep-member-email-emailSecond").attr("disabled",true); //textBox 비활성화
                   }
                   });
                     });

});


$( document).ready( function() {
    $( '.check-all' ).click( function() {
    	if($("input:checkbox[id='danawa-member-joinStep-checkBox-agree-all']").is(":checked",true)){
      		$('.lb_chk_box').attr('class','lb_chk_box on');
    		$( '.ab' ).prop( 'checked', true);
   		 } else {
   			console.log(5);
   			$('.lb_chk_box.on').attr('class','lb_chk_box');
   			$( '.ab' ).prop("checked",false);
    	}
    });
  });
$( document).ready( function() {
    $('#danawa-member-joinStep-checkBox-agree-service').click( function() {
    	if($("input:checkbox[id='danawa-member-joinStep-checkBox-agree-service']").is(":checked",true)){
      		$('#service').attr('class','lb_chk_box on');
    		$( '#danawa-member-joinStep-checkBox-agree-service' ).prop( 'checked', true);
   		 } else {
   			
   			$('#service').attr('class','lb_chk_box');
   			$( '#danawa-member-joinStep-checkBox-agree-service' ).prop( 'checked', false);
    	}
    });
  });
$( document).ready( function() {
    $('#danawa-member-joinStep-checkBox-agree-privacy').click( function() {
    	if($("input:checkbox[id='danawa-member-joinStep-checkBox-agree-privacy']").is(":checked",true)){
      		$('#privacy').attr('class','lb_chk_box on');
    		$( '#danawa-member-joinStep-checkBox-agree-privacy' ).prop( 'checked', true);
   		 } else {
   			
   			$('#privacy').attr('class','lb_chk_box');
   			$( '#danawa-member-joinStep-checkBox-agree-privacy' ).prop( 'checked', false);
    	}
    });
  });
$( document).ready( function() {
    $('#danawa-member-joinStep-checkBox-agree-age').click( function() {
    	if($("input:checkbox[id='danawa-member-joinStep-checkBox-agree-age']").is(":checked",true)){
      		$('#age').attr('class','lb_chk_box on');
    		$( '#danawa-member-joinStep-checkBox-agree-age' ).prop( 'checked', true);
   		 } else {
   			
   			$('#age').attr('class','lb_chk_box');
   			$( '#danawa-member-joinStep-checkBox-agree-age' ).prop( 'checked', false);
    	}
    });
  });
$( document).ready( function() {
    $('#danawa-member-joinStep-checkBox-agree-mailing').click( function() {
    	if($("input:checkbox[id='danawa-member-joinStep-checkBox-agree-mailing']").is(":checked",true)){
      		$('#mailing').attr('class','lb_chk_box on');
    		$( '#danawa-member-joinStep-checkBox-agree-mailing' ).prop( 'checked', true);
   		 } else {
   			$('#mailing').attr('class','lb_chk_box');
   			$( '#danawa-member-joinStep-checkBox-agree-mailing' ).prop( 'checked', false);
    	}
    });
  });
 function checkForm() {
	 console.log(6);
			var id = $('#danawa-member-joinStep-member-id').val();
			var password = $('#danawa-member-joinStep-member-password').val();
			var password2 = $('#danawa-member-joinStep-member-passwordConfim').val();
		    var nickname = $('#danawa-member-joinStep-member-nickname').val();
		    var email = $('#danawa-member-joinStep-member-email-emailFirst').val();
		    var email2 = $('#danawa-member-joinStep-member-email-emailSecond').val();
		    var nickname = $('#danawa-member-joinStep-member-nickname').val();
		    var name = $('#danawa-member-joinStep-member-name').val();
	     	if(!$("input:checkbox[id='danawa-member-joinStep-checkBox-agree-service']").is(":checked")){
	      		window.alert("서비스 이용 동의 체크 필수");
	      		return false;
	   		 }
	     	if(!$("input:checkbox[id='danawa-member-joinStep-checkBox-agree-privacy']").is(":checked")){
	      		window.alert("개인정보 동의란 체크 필수");
	      		return false;
	   		 }
		    if(!$("input:checkbox[id='danawa-member-joinStep-checkBox-agree-age']").is(":checked")){
	      		window.alert("나이 확인 필수");
				return false;
	   		 }
		    if(email == "" || email== null) {
				window.alert("이메일을 입력하시오");
				document.getElementById('danawa-member-joinStep-member-email-emailFirst').focus();
				return false;
			}
		    if(email2 == "" || email2== null) {
		    	window.alert("이메일을 입력하시오");
				document.getElementById('danawa-member-joinStep-member-email-emailSecond').focus();
				return false;
			}
		    if(id == "" || id== null) {
				window.alert("아이디를 입력하시오");
				document.getElementById('danawa-member-joinStep-member-id').focus();
				return false;
			}
// 			if(sss == 1) {
// 				window.alert("아이디 중복 체크 하시오");
// 				return false;		
// 			}
			if(password =="" || password==null) {
				window.alert("비밀번호를 입력하시오");
				document.getElementById('danawa-member-joinStep-member-password').focus();
				return false;
			} 
			if(password2 =="" || password2==null) {
				window.alert("비밀번호 확인란을 입력하시오");
				document.getElementById('#anawa-member-joinStep-member-passwordConfim').focus();
				return false;
			} 
			if(name =="" || name==null) {
				window.alert("이름을 입력하시오");
				document.getElementById('danawa-member-joinStep-member-name').focus();
				return false;
			} 
			if(nickname =="" || nickname==null) {
				window.alert("닉네임을 입력하시오");
				document.getElementById('danawa-member-joinStep-member-nickname').focus();
				return false;
			} 
			if(password!=password2) {
				window.alert("비밀번호가 일치하지 않습니다");
				document.getElementById('danawa-member-joinStep-member-passwordConfim').focus();
				return false;
			}
// 			 var email = $('#danawa-member-joinStep-member-email-emailSecond').val()
// 	    	 var emailcheck = email.substr(email.length -4);
// 	        console.log(emailcheck);
// 	    	 if(emailcheck !=".com" || emailcheck !=".co.kr"){
// 	            $('#em').html("올바른 이메일 형식이 아님");
// 	        }
			sigin();
		}


		    function passwordCheckFunction(){
				var password = $('#danawa-member-joinStep-member-password').val();
				var password2 = $('#danawa-member-joinStep-member-passwordConfim').val();
		        if(password!=password2){
		            $('#abc').html("비밀번호가 일치하지 않습니다");
		        }
		        else{
		            $('#abc').html("");
		        }
		    }

			function sigin() {
				var params = jQuery("#danawa-member-joinStep-form-id").serialize(); 
//	 			if(isNaN(params)) {
//	 				alert("숫자만 입력 가능");
//	 				return;
//	 			}
				jQuery.ajax({
					url : 'siginup',
					type : 'POST',
					dataType : 'json',
					contentType : 'application/x-www-form-urlencoded; charset=UTF-8',
					data : params,
					success : function(data) {
						if (data == 0) {
							alert("회원가입완료");
							location.href="homes";
						} else {
							alert("오류");
						}
					}
				});
			}
 
		</script>
		<%@ include file="header.jsp"%>
	</head>
	<body>
		<form name="frm_Info" method="post" id="danawa-member-joinStep-form-id">
			<!-- 회원타입 : G - 개인, D - 사업자 -->
			<input type="hidden" name="hdnMemberType" id="danawa-member-joinStep-memberType" value="G" />
			<input type="hidden" id="danawa-member-joinStep-hidden-email" name="memberEmail"/>
			<input type="hidden" name="url" value="http%3A%2F%2Fwww.danawa.com%2FmyPage%2FwishList.php"/> 
			
			<div id="dnw_wrap" class="join_wrap join_certi_wrap"><!-- join_wrap 클래스추가 -->
				<!-- join_member-->
				<div class="join_member"><!-- join_member 클래스추가 -->
					<!-- guide_header -->
					<div id="danawa-member-joinStep-danawaLogo" class="guide_header">
<!-- 						<h1><a href="http://www.danawa.com">danawa.com</a></h1> -->
						<h2 class="tit_join_top tit_join_member">회원가입</h2>
					</div>
					<!-- //guide_header -->
					<!-- join_container -->
					<div class="join_container">
						<!-- join_tab -->
						<div class="join_top_area">
							<ul class="join_tap">
								<li class="tab_li tap_member_join" id="danawa-member-joinStep-tap-member">
									<h3 class="on" id="danawa-member-joinStep-tap-member-on"><a href="#" onclick="Display3f();" title="개인 회원"><span>개인 회원</span></a></h3><!-- 활성화시 on클래스 추가 -->
								</li>
								<li class="tab_li tab_company_join" id="danawa-member-joinStep-tap-company">
									<h3 id="danawa-member-joinStep-tap-company-on"><a href="#"  onclick="Display2f();" title="사업자 회원"><span>사업자 회원</span></a></h3>
								</li>
							</ul>
							<div class="sns_login_wrap" id="danawa-member-joinStep-snsLogin" style="display:none;">
		                        <dl>
		                            <dt>소셜 계정으로 이동<span class="ico"></span></dt>
		                            <dd>
		                                <a href="/sns/login?type=NAVER&redirectUrl=http%3A%2F%2Fwww.danawa.com%2FmyPage%2FwishList.php" target="_blank"><img src="//img.danawa.com/new/login_new/img/bnr_naver_ico.jpg" alt="네이버 로그인" /></a>
		                            </dd>
		                            <dd>
		                                <a href="/sns/login?type=KAKAO&redirectUrl=http%3A%2F%2Fwww.danawa.com%2FmyPage%2FwishList.php" target="_blank"><img src="//img.danawa.com/new/login_new/img/bnr_kakao_ico.jpg" alt="카카오 로그인" /></a>
		                            </dd>
		                            <dd>
		                                <a href="/sns/login?type=FACEBOOK&redirectUrl=http%3A%2F%2Fwww.danawa.com%2FmyPage%2FwishList.php" target="_blank"><img src="//img.danawa.com/new/login_new/img/bnr_facebook_ico.jpg" alt="페이스북 로그인" /></a>
		                            </dd>
		                        </dl>
		                    </div>
						</div>
						<!--// join_tab -->
						<!-- join_contents -->
						<!--1702 personal 클래스 추가 join_contents -->
						<div class="join_contents personal">
							<div class="join_title_area">
								<h4 class="tit_h4">약관 동의</h4>
								<div class="checkbox_wrap">
		                            <!-- 웹접근성을 위해 input의 id값과 label의 for값을 동일하게 해주세요.-->
		                            <!-- 1702 라벨 클릭 시 클래스 on 추가  -->
		                            <label for="danawa-member-joinStep-checkBox-agree-all" id="as" class="lb_chk_box" title="회원가입 약관에 모두 동의합니다. 필수 입력 항목"><strong>회원가입 약관에 모두 동의합니다.</strong></label>
		                            <!--1702 웹접근성 포커스 (Tab키) 이동 시 클래스 focus 추가 탭키 이동 관련 개발 필요 -->
		                            <input type="checkbox" id="danawa-member-joinStep-checkBox-agree-all" class="check-all" title="[체크박스]"  />
		                        </div>
							</div>
							
							<!-- join_box -->
							<div class="join_box join_agree_box">
								<div class="agree_con agree_con1">
									<h5 class="tit_h5">
										<!-- 1702 라벨 클릭 시 클래스 on 추가 -->
										<label for="danawa-member-joinStep-checkBox-agree-service" id="service" class="lb_chk_box" title="서비스 이용 약관 필수 입력 항목">
											<strong>서비스 이용 약관</strong>
											<span> (필수)</span>
											<span class="blind"> 서비스 이용 약관에 동의합니다.</span>
										</label>
										<!--1702 약관보기 클릭 시 클래스 on 과 내용닫기 텍스트 변경 -->
										<span class="btn_view ico on">
											<button type="button" onclick="javascript:doDisplay();" id="danawa-member-joinStep-guide-button-service" title="약관보기 버튼 누르면 상세 내용이 열립니다">약관보기 ▼</button>
										</span>
										<!--1702 웹접근성 포커스 (Tab키) 이동 시 클래스 focus 추가 탭키 이동 관련 개발 필요 -->
                               			<input type="checkbox" id="danawa-member-joinStep-checkBox-agree-service" class="ab" title="[체크박스]" />
                               	 	</h5>
									<div class="agree_textarea_wrap">
										<textarea readonly="readonly"  class="textarea_member" id="danawa-member-joinStep-guide-textDesc-service" cols="" rows="" style="display:none;" title="서비스 이용 약관 안내 내용"></textarea>
										<!-- 이용약관 설정 -->
										<textarea readonly="readonly"  class="textarea_member" id="danawa-member-joinStep-member-agreement" cols="" rows="" style="display:none;" title="개인회원 서비스 이용 약관 안내 내용">
											
제 1장 총칙

제 1 조 (목 적)

이 약관은 ㈜ (전자상거래 사업자)가 운영하는 인터넷 서비스 "" (www.danawa.com) 및  관련 제반 서비스 사이트(접속 가능한 유,무선 단말기의 종류와는 상관없이 이용 가능한 '회사' 가 제공하는 모든 "서비스" 를 의미하며, 이하 '사이트'라 함)에서 제공하는 상품 및 가격정보 등 상품에 대한 정보 제공 및 광고서비스를 이용함에 있어 '회사' 와 이용자의 권리와 의무 및 책임사항 등을 규정함을 그 목적으로 합니다.

제 2 조 (정의)

① '회사' 란 ㈜가 재화 또는 용역(이하 '상품'이라 함) 및 서비스를 이용자에게 제공하기 위하여 컴퓨터 등 정보통신설비를 이용하여 상품을 거래할 수 있도록 설정한 가상의 영업장을 말하며, 아울러 '회사' 를 운영하는 사업자의 의미로도 사용합니다.
② '서비스' 란 '회사' 와 계약을 통하여 입점 및 제휴한 쇼핑몰들의 상품 및 가격정보를 비교하여 회원의 구매를 돕는 서비스 및 기타 각종 서비스를 의미합니다 
③ '이용자'란 '회사' 에 접속하여 이 약관에 따라 '회사' 가 제공하는 서비스를 받는 회원 및 비회원을 말합니다. 
④ '회원'이라 함은 '회사' 에 개인정보를 제공하여 회원등록을 한 자로서, '회사' 의 정보를 지속적으로 제공받으며, '회사' 가 제공하는 서비스를 계속적으로 이용할 수 있는 자를 말합니다. 
⑤ '비회원'이라 함은 회원에 가입하지 않고 '회사' 가 제공하는 서비스를 이용하는 자를 말합니다. 
⑥ '상품정보' 란 '회사' 가 보유한 웹 페이지 형태의 텍스트, 음성, 화상, 이미지 등의 각종 데이터를 지칭하며 보유 유형은 다음 각호와 같습니다.
가. '회사' 가 자체 제작한 경우
나. '회사' 가 계약 등을 통해 "업체회원" 이외의 업체로부터 확보한 경우
다. '회사' 가 "업체회원" 으로부터 제공받은 경우
⑦ '가격정보' 란 '회사' 가 이용자에게 고지하는 상품의 가격을 말합니다.

제 3 조 (약관의 명시와 개정)

① '회사' 는 이 약관의 내용과 상호 및 대표자의 성명, 영업소 소재지, 사업자등록번호, 통신판매업신고번호, 개인정보보호책임자, 연락처(전화, 팩스, 전자우편 주소 등) 등을 이용자가 쉽게 알 수 있도록 '회사' 의 초기 서비스화면(전면)에 게시합니다. 다만, 약관의 내용은 이용자가 연결화면을 통하여 볼 수 있도록 할 수 있습니다.
② '회사' 는 이용자가 약관에 동의하기에 앞서 약관에 정하여져 있는 내용 중 구매취소ㆍ배송책임ㆍ환불조건 등과 같은 중요한 내용을 이용자가 이해할 수 있도록 별도의 연결화면 또는 팝업화면 등을 제공하여 이용자의 확인을 구하여야 합니다. 
③ '회사' 는 전자상거래 등에서의 소비자보호에 관한 법률, 약관의규제등에 관한 법률, 전자거래기본법, 전자서명법, 정보통신망 이용 촉진 및 정보보호등에 관한 법률, 방문판매등에 관한 법률, 소비자기본법 등 관련법을 위배하지 않는 범위에서 이 약관을 개정할 수 있습니다. 
④ '회사' 는 약관을 개정할 경우에는 적용일자 및 개정사유를 명시하여 현행 약관과 함께 '회사' 의 초기화면에 그 적용일자 15일 이전부터 적용일자 전일까지 공지합니다. 다만, 이용자에게 불리하게 약관 내용을 변경하는 경우에는 최소한 30일 이상의 사전 유예기간을 두고 공지합니다. 이 경우 '회사' 는 개정 전과 개정 후 내용을 명확하게 비교하여 이용자가 알기 쉽도록 표시합니다. 
⑤ '회사' 는 전자거래기본법, 전자서명법, 정보통신망 이용촉진 및 정보보호등에 관한 법률 등 관계법령을 위배하지 않는 범위에서 합리적 사유가 있는 경우 회원의 사전 동의 없이 본 약관을 개정할 수 있습니다. 
⑥ '회사' 는 개정된 약관의 공지 후 효력발생일 이전까지 거부 의사 표시 또는 탈퇴를 하지 않을 경우 개정 약관에 동의하는 것으로 간주합니다. 회원이 개정약관의 적용에 동의하지 않는 경우 '회사' 는 개정 약관의 내용을 적용할 수 없으며, 이 경우 '회사' 또는 회원은 이용계약을 해지할 수 있습니다.
⑦ 이 약관에서 정하지 아니한 사항과 이 약관의 해석에 관하여는 전자상거래 등에서의 소비자보호에 관한 법률, 약관의 규제 등에 관한 법률, 공정거래위원회가 정하는 전자상거래 등에서의 소비자보호지침 및 관계 법령 또는 상관례에 따릅니다.

제 2장 서비스의 제공

제 4 조 (서비스의 제공 및 변경)

① '회사' 는 다음과 같은 업무를 수행합니다. 
가. 재화 또는 용역(이하 상품이라 함)에 대한 정보 제공 및 구매계약의 체결
나. 구매계약이 체결된 상품의 배송
다. 게시판형 서비스
라. 기타 '회사' 가 정하는 업무
② '회사' 는 상품의 품절 또는 기술적 사양의 변경 등의 경우에는 장차 체결되는 계약에 의해 제공할 재화/용역의 내용을 변경할 수 있으며 해당 사항을 공지합니다.
③ '회사' 가 제공하기로 한 이용자와 계약을 체결한 서비스의 내용을 상품의 품절 또는 기술적 사양의 변경 등의 사유로 변경할 경우에는 그 사유를 이용자에게 통지 가능한 주소로 통지합니다. 단, '회사' 에 입점한 판매점에서 제공하는 상품이 품절 또는 사양의 변경 등이 있을 경우 통지의 의무는 해당 판매점에게 있습니다. 
④ 전항의 경우 '회사' 는 이로 인하여 이용자가 입은 손해를 배상합니다. 단, '회사' 의 고의 또는 과실이 없음을 입증하는 경우에는 그러하지 아니합니다.

제 5 조 (서비스의 중단)

① '회사' 는 긴급한 시스템 점검, 증설 및 교체 등 부득이한 사유로 인하여 예고 없이 일시적으로 서비스를 중단할 수 있으며, 새로운 서비스의 교체 등 '회사' 가 적절하다고 판단하는 사유에 의하여 현재 제공되는 서비스를 완전히 중단할 수 있습니다.
② 사업 종목의 전환, 사업의 포기, 업체간의 통합 등의 이유로 서비스를 제공할 수 없게 되는 경우에는 '회사' 는 제8조에 정한 방법으로 이용자에게 통지합니다.
③ '회사' 는 서비스를 특정 범위로 분할하여 각 범위 별로 이용가능 시간을 별도로 지정할 수 있습니다. 다만 이 경우 그 내용을 공지합니다.

제 3장 회원의 가입 및 탈퇴

제 6조 (회원가입)

① 이용자는 '회사' 가 정한 가입 양식에 따라 회원정보를 기입한 후 이 약관에 동의한다는 의사표시를 함으로서 회원가입을 신청합니다. 
②'회사' 는 제1항과 같이 회원으로 가입할 것을 신청한 이용자 중 다음 각 호에 해당하지 않는 한 회원으로 등록합니다.
가. 만 14세 미만인 자
나. 회원가입 신청자가 과거 회원 자격을 상실한 적이 있는 경우('회사' 로부터 회원자격의 제재조치를 받고 임의탈퇴 또는 강제탈퇴 한 경우를 포함)
다. 회원 가입 시 기재한 내용에 허위, 누락, 오기가 있는 경우
라. 기타 회원으로 가입하는 것이 '회사' 가 제공하는 서비스에 현저한 지장이 있다고 판단되는 경우
③회원가입의 성립시기는 '회사' 의 이용 승낙의 의사가 해당 서비스화면에 게시하거나, email 또는 기타 '회사' 가 정하는 방법으로 이용자에게 도달한 시점으로 합니다.
④회원은 제16조 제1항에 의한 등록사항에 변경이 있는 경우, 즉시 전자우편 또는 기타 방법으로 '회사' 에 그 변경사항을 알려야 합니다.
⑤회원이 이용계약 종료(해지 포함) 후 재가입하는 경우에는 최종 탈퇴 시의 아이디를 재사용할 수 없으며, 30일 이후 새로운 아이디로 재가입이 가능합니다.

제 7 조 (회원탈퇴 및 자격상실)

① 회원은 '회사' 에 언제든지 탈퇴를 요청할 수 있으며 '회사' 는 즉시 회원탈퇴를 처리합니다. 
② 회원이 다음 각 호의 사유에 해당하는 경우, '회사' 는 회원 자격을 제한 및 정지시킬 수 있습니다.
가. 가입 신청 및 회원정보 변경 시 허위 내용을 등록한 경우
나.'회원' 의 행위로 인하여 '회사' 의 신용도 및 대외적 이미지가 저해된 경우
다. 타인의 '회사' 이용을 방해하거나 타인의 정보를 도용하는 등 전자거래질서를 위협하는 경우
라. '회사' 의 운영진, 임직원 또는 관계자를 사칭하는 경우
마. '회사' 의 서비스 운영에 고의 또는 과실로 불이익을 주거나 방해를 하는 경우
바. 타인의 명예를 훼손하거나 모욕하는 경우
사. 법령 또는 이 약관에서 금지하거나 공서양속에 반하는 행위를 하는 경우
③ 회원은 전 항의 귀책사유로 인하여 '회사' 나 다른 회원 및 이용자에게 입힌 손해를 배상할 민사상의 책임이 있으며, 범죄 행위에 대해서는 형사 상의 책임을 부담합니다.
④ '회사' 는 회원 자격을 제한/정지 시킨 후, 동일한 행위가 반복되거나 상당기간 그 사유가 시정되지 아니하는 경우 '회사' 는 회원자격을 상실 시킬 수 있습니다.
⑤ '회사' 는 회원의 자격을 상실 시키는 경우에는 회원등록을 말소합니다. 이 경우 회원에게 이를 통지하고, 회원등록 말소 전에 최소한30일 이상의 기간을 정하여 소명할 기회를 부여합니다.

제 8 조 (회원에 대한 통지)

① '회사' 는 회원에 대한 통지를 하는 경우, 회원이 '회사' 와 미리 약정하여 지정한 전자우편 주소를 원칙으로 하며 전화, 팩스 등 유, 무선 연락처로도 통지할 수 있습니다.
② '회사' 는 불특정다수 회원에 대한 통지의 경우 1주일 이상 '회사' 게시판에 게시함으로써 개별 통지에 갈음할 수 있습니다. 다만, 회원 본인의 거래와 관련하여 중대한 영향을 미치는 사항에 대하여는 개별 통지합니다.
③ '회원' 이 '회사' 에 통지하는 경우에는 고객센터 페이지 상에 게재된 절차와 내용에 따라야 합니다. '회사' 는 '회원' 이 이러한 통지 절차 또는 내용을 준수하지 않는 경우 통지를 수령하지 아니하며, 이로 인하여 발생하는 모든 문제에 대한 책임은 '회원' 이 부담하여야 합니다. 

제 9 조 (대리행위 및 보증인의 부인)

① '회사' 는 구매자와 판매자 간의 자유로운 상품의 거래를 위한 시스템을 운영 및 관리, 제공할 뿐이므로 구매자 또는 판매자를 대리하지 않으며, 이용자 사이에 성립된 거래에 관련된 책임과 회원이 제공한 정보에 대한 책임은 해당 이용자가 직접 부담하여야 합니다.
② '회사' 를 이루어지는 구매자와 판매자 간의 거래와 관련하여 판매 의사 또는 구매 의사의 존부 및 진정성, 등록 상품의 품질, 완전성, 안정성, 적법성 및 타인의 권리에 대한 비침해성, 구매자 또는 판매자가 입력하는 정보 및 그 정보를 통하여 링크된 URL에 게재된 자료의 진실성 또는 적법성 등 일체에 대하여 보증하지 아니하며, 이와 관련한 일체의 위험과 책임은 해당 이용자가 전적으로 부담합니다.

제 4장 서비스 이용

제 10 조 (구매 신청)

① 이용자는 '회사' 의 서비스상에서 다음 또는 이와 유사한 방법에 의하여 구매를 신청하며, '회사' 는 이용자가 구매신청을 함에 있어서 다음의 각 내용을 알기 쉽게 제공하여야 합니다. 단, 회원인 경우 제2호 내지 제4호의 적용을 제외할 수 있습니다.
가. 상품의 검색 및 선택
나. 성명, 주소, 전화번호, 전자우편주소(또는 이동전화번호) 등의 입력 
다. 약관 내용, 청약철회권이 제한되는 서비스, 배송료ㆍ설치비 등의 비용부담과 관련한 내용에 대한 확인 
라. 이 약관에 동의하고 위3호의 사항을 확인하거나 거부하는 표시(예, 마우스 클릭) 
마. 상품의 구매신청 및 이에 관한 확인 또는 '회사' 의 확인에 대한 동의 
바. 결제 방법의 선택
② 이용자는 상품을 구매하기 전에 반드시 판매자가 사이트 내에 작성한 상품정보와 거래의 조건을 정확하게 확인한 후 구매를 하여야 합니다. 구매하려는 상품의 내용과 거래의 조건을 확인하지 않고 구매하여 발생한 모든 손실, 손해는 이용자 본인에게 있습니다.
③ '회사' 는 판매자가 상품 등록한 상품의 내용과 거래조건에 대해서 어떠한 보증이나 대리를 하지 않습니다. 따라서 구매자는 상품 구매 시 스스로의 책임하에 상품을 구매하여야 합니다.
④ '회사' 가 이용자의 서비스 이용 편의를 위하여 직접 제작하거나 제휴업체 또는 제3자가 제공하는 방식으로 정보나 콘텐츠를 제공하는 경우라도, 이용자는 상품 구매 시 자신의 판단과 책임으로 결정하여 구매하여야 하며, '회사' 는 어떠한 경우에도 회원의 구매결정에 대하여 책임을 부담하지 않습니다.
⑤ 미성년자의 상품구매 시 법정 대리인이 해당 계약에 대하여 동의를 하지 아니하면, 미성년자 본인 또는 법정대리인이 그 계약을 취소 할 수 있습니다. 미성년자의 거래에 관한 상세한 사항은 관련 법령이 정한 바에 의합니다.

제 11 조 (계약의 성립)

① '회사' 는 제9조와 같은 구매 신청에 대하여 다음 각 호에 해당하면 승낙하지 않을 수 있습니다.
가. 신청 내용에 허위, 기재 누락, 오기가 있는 경우 
나. 기타 구매 신청에 승낙하는 것이 '회사' 의 기술상 현저히 지장이 있다고 판단하는 경우
② '회사' 의 승낙이 제12조 제1항의 수신확인통지형태로 이용자에게 도달한 시점에 계약이 성립한 것으로 봅니다.
③ '회사' 의 승낙의 의사표시에는 이용자의 구매 신청에 대한 확인 및 판매가능여부, 구매신청의 정정, 취소 등에 관한 정보 등을 포함하여야 합니다. 

제 12 조 (지급방법)

① '회사' 에서 구매한 상품에 대한 대금지급방법은 다음 각 호의 방법 중 가용한 방법으로 할 수 있습니다. 단, '회사' 는 이용자의 지급방법에 대하여 상품의 대금에 어떠한 명목의 수수료도 추가하여 징수할 수 없습니다.
가. 가상계좌 (현금 입금)
나. 신용카드 등의 각종 카드 결제
다. 기타 전자적 지급방법에 의한 대금 지급 등
② 이용자는 상품의 구매 시 결제방법을 사용함에 있어 반드시 본인 명의의 결제수단을 사용하여야 하며, 타인의 결제수단의 임의 사용 등을 하여서는 안 됩니다. 타인의 결제수단을 임의 사용함으로써 발생하는 '회사' 결제수단 소유자, 판매자의 손실과 손해에 대한 모든 책임은 구매자인 이용자에게 있습니다.
③ '회사'는 이용자가 매매대금 결제 시 사용한 결제 수단에 대해 정당한 사용권한을 가지고 있는지의 여부를 확인할 수 있으며, 이에 대한 확인이 완료될 때까지 거래 진행을 중지하거나 해당 거래를 취소할 수 있습니다

제 13 조 (수신확인통지, 구매신청 변경 및 취소)

① '회사' 는 이용자의 구매신청이 있는 경우 이용자에게 수신확인통지를 합니다.
② 수신확인통지를 받은 이용자는 의사표시의 불일치 등이 있는 경우에는 수신확인 통지를 받은 후 즉시 구매신청 변경 및 취소를 요청할 수 있고, '회사' 는 배송 전에 이용자의 요청이 있는 경우에는 지체 없이 그 요청에 따라 처리하여야 합니다. 다만, 이미 대금을 지불한 경우에는 제16조의 청약철회 등에 관한 규정에 따릅니다. 
③ 이용자가 구매(주문)신청일로부터 7일 이내 상품 대금에 대해 입금이 확인되지 않을 경우 '회사' 는 별도 의사 표시 없이 구매계약을 해제하는 것으로 처리할 수 있습니다.

제 14 조 (상품의 공급)

① '회사' 는 직접 제공하는 상품에 대하여 이용자와 공급시기에 관한 별도의 약정이 없는 이상 이용자가 청약을 한 날로부터 7일 이내에 상품을 배송 할 수 있도록 필요한 조치를 취합니다. 다만, '회사' 는 이미 상품의 대금의 전부 또는 일부를 받은 경우에는 대금의 전부 또는 일부를 받은 날부터 3영업일 이내에 조치를 취합니다. 이때 '회사' 는 이용자가 상품의 공급 절차 및 진행사항을 확인할 수 있도록 적절한 조치를 합니다.
② '회사' 는 이용자가 구매한 재화에 대해 배송수단, 수단별 배송비용 부담자, 수단별 배송기간 등을 명시합니다.
③ '회사' 와 이용자간에 상품의 인도시기 또는 용역의 제공 시기에 관하여 별도의 약정이 있는 경우에는 당해 약정이 이 약관에 우선합니다.

제 15 조 (상품의 배송)

① '회사' 는 이용자가 상품을 구매한 경우 이용자의 결제에 대한 통지를 판매자로부터 받은 후 3영업일 이내에 배송을 개시할 수 있도록 합니다.
② 상품을 운송할 경우 이용자가 물품을 수령하기까지의 위험은 '회사' 가 부담합니다. 이에 따라 '회사' 는 이용자가 하자(파손, 멸실, 부패 등)없는 물품을 수령할 수 있도록 물품의 포장, 운송업체의 선정, 기타 필요한 조치를 하여야 합니다.
③ 정확한 배송을 위해 이용자의 배송관련 정보는 개인정보처리방침에 의하여 판매자에게 제공될 수 있으며, '회사' 는 상품의 배송 이외의 목적으로 해당 정보를 사용하지 않습니다.
④ 공휴일 및 기타 휴무일 또는 천재지변 등 불가피한 사유가 있는 경우 배송 소요기간은 지연될 수 있습니다.

제 16 조 (상품의 교환, 반품, 환불)

① 상품의 교환은 배송완료일을 기준으로 7영업일 이내에 교환 요청을 하여야 합니다. 교환 요청일이 지난 경우에는 판매자와 직접 처리하여야 합니다.
② 구매자는 ' 전자상거래 등에서의 소비자보호에 관한 법률' 제17조에 의해, 구매한 상품을 배송 받은 후 7일 이내에 반품 또는 교환을 요청할 수 있으며, 반품에 관한 일반적인 사항은 ' 전자상거래 등에서의 소비자보호에 관한 법률' 등 관련 법령이 판매자가 제시한 조건보다 우선합니다. 단, 다음 각 호의 경우에는 구매자가 반품 또는 교환을 요청할 수 없습니다.
가. 구매자의 귀책사유로 말미암아 상품이 훼손된 경우
나. 구매자의 사용 또는 일부 소비에 의하여 상품의 가치가 현저히 감소한 경우
다. 시간의 경과에 의하여 재판매가 곤란할 정도로 상품의 가치가 현저히 감소한 경우
라. 복제가 가능한 상품의 포장을 훼손한 경우
마. 기타 구매자가 환불 또는 교환을 요청할 수 없는 합리적인 사유가 있는 경우
③ 반품이 필요한 상품은 반품을 요청한 시점으로부터 3영업일 이내에 구매한 판매점으로 반품하여야 합니다.
④ '회사' 의 귀책사유로 인해 발생한 반품의 경우 배송에 필요한 모든 비용을 '회사' 가 부담합니다.
⑤ 구매자의 단순 변심 또는 구매자 귀책사유로 인해 발생하는 반품의 경우 배송에 필요한 모든 비용을 구매자가 부담합니다.
⑥ 환불 승인은 개별 판매자가 직접 처리하며 판매자의 환불승인일을 기준으로 현금결제의 경우 1영업일 후, 카드결제의 경우 카드사에 따라 5~7영업일 후 환불 및 승인 취소가 이루어 집니다.
⑦ '회사' 는 판매자가 교환, 반품에 대하여 사실확인 진행 절차에 적극적으로 임하지 않거나 지연하는 경우 구매자에게 교환 또는 반품의 원인을 파악한 후 해당 거래를 취소하여 구매자에게 보관중인 결제대금을 환불할 수 있습니다.
⑧ '회사' 는 구매자의 교환 또는 반품의 요청이 정당하지 않다고 판단하는 경우는 구매자의 의사표시를 취소하여 보관중인 결제대금을 판매자에게 지급할 수 있습니다. 또한 구매자의 교환, 반품 등이 접수된 날로부터 14일이 경과할 때까지 기 수령한 상품을 판매자에게 반환하지 않거나 연락(전화, 이메일 등)이 되지 않는 경우에는 교환, 반품의 의사를 철회한 것으로 간주하여 보관중인 결제대금을 판매자에게 지급할 수 있습니다.
⑨ 판매된 상품의 취소, 반품, 교환, 환불과 관련한 업무 주체는 판매자이며 그에 따른 책임도 판매자에게 있으며, '회사' 는 취소, 반품, 교환, 환불 업무를 처리할 수 있는 시스템만을 제공 합니다.
⑩ 정상적으로 구매 결정된 이후 발생하는 문제에 대해서는 구매자가 판매자와 직접 처리 합니다.

제 17 조 (청약철회 등)

① '회사' 와 상품 등의 구매에 관한 계약을 체결한 이용자는 상품 배송이 완료된 날로부터 7일 이내에 청약을 철회할 수 있습니다.
② 구매자는 상품을 배송 받은 경우 다음 각호의 1에 해당하는 경우에는 반품 및 교환을 할 수 없습니다.
가. 구매자에게 책임 있는 사유로 상품이 멸실 또는 훼손된 경우
(다만, 상품의 내용 확인을 위하여 포장 등을 훼손한 경우에는 청약철회를 할 수 있습니다.)
나. 구매자의 사용 또는 일부 소비에 의하여 상품의 가치가 현저히 감소한 경우
다. 시간의 경과에 의하여 재판매가 곤란할 정도로 상품의 가치가 현저히 감소한 경우 
라. 같은 성능을 지닌 상품으로 복제가 가능한 경우 그 원본인 상품의 포장을 훼손한 경우
마. 그 밖에 거래의 안전을 위하여 전자상거래 등에서의 소비자보호에 관한 법률 시행령 21조(청약철회 등의 제한)에서 정하는 경우
③ 제2항 제2호 내지 제4호의 경우에 '회사' 가 사전에 청약철회 등이 제한되는 사실을 소비자가 쉽게 알 수 있는 곳에 명기하거나 시용 상품을 제공하는 등의 조치를 하지 않았다면 이용자의 청약철회 등이 제한되지 않습니다.
④ 이용자는 제1항 및 제2항의 규정에 불구하고 상품의 내용이 표시ㆍ광고 내용과 다르거나, 계약내용과 다르게 이행된 경우에는 당해 상품을 공급받은 날로부터 3월 이내, 그 사실을 안 날 또는 알 수 있었던 날로부터 30일 이내에 청약철회 등을 할 수 있습니다.

제 18 조 (청약철회 등의 효과)

① '회사' 는 본 약관 제16조에 따라 청약철회가 있은 후 이용자로부터 상품을 반환 받은 경우 3영업일 이내에 이미 지급받은 상품의 대금을 환급합니다. 
② '회사' 는 위 대금을 환급함에 있어서 이용자가 신용카드 등의 결제수단으로 상품의 대금을 지급한 때에는 지체 없이 당해 결제수단을 제공한 사업자로 하여금 상품의 대금의 청구를 정지 또는 취소하도록 요청합니다.
③ 청약철회 등의 경우 공급받은 상품의 반환에 필요한 비용은 이용자가 부담합니다. '회사' 는 이용자에게 청약철회등을 이유로 위약금 또는 손해배상을 청구하지 않습니다. 다만 상품의 내용이 표시/광고 내용과 다르거나 계약내용과 다르게 이행되어 청약철회등을 하는 경우 상품의 반환에 필요한 비용은 '회사' 가 부담합니다.
④ 이용자가 상품을 제공받을 때 배송비를 부담한 경우에 '회사' 는 청약 철회 시 그 비용을 누가 부담하는지를 이용자가 알기 쉽도록 명확하게 표시합니다.
⑤ 이용자는 구매한 상품에 청약철회의 원인이 발생한 경우 수령한 상품을 임의로 사용하거나 훼손되도록 방치하여서는 안 됩니다. 청약철회 상품의 임의사용이나 상품 보관의 미흡으로 인한 상품 훼손에 대하여 합당한 비용을 부담하여야 합니다.

제 5장 회원정보

제 19 조 (개인정보보호)

① '회사' 는 이용자의 정보수집 시 구매계약 이행에 필요한 최소한의 정보를 수집합니다. 다음 사항을 필수사항으로 하며 그 외 사항은 선택사항으로 합니다.
가. 성명
나. 희망ID(회원의 경우)
다. 비밀번호(회원의 경우) 
라. 전자우편주소(회원의 경우)
마. 닉네임
② '회사' 는 이용자의 개인식별이 가능한 개인정보를 수집하는 때에는 반드시 당해 이용자의 동의를 받습니다. 
③ 제공된 개인정보는 당해 이용자의 동의 없이 목적 외의 이용이나 제3자에게 제공할 수 없으며, 이에 대한 모든 책임은 '회사' 가 집니다. 다만, 다음의 경우에는 예외로 합니다. 
가. 배송 업무상 배송업체에게 배송에 필요한 최소한의 이용자의 정보(성명, 주소, 전화번호)를 알려주는 경우
나. 통계작성, 학술연구 또는 시장조사를 위하여 필요한 경우로서 특정 개인을 식별할 수 없는 형태로 제공하는 경우
다. 상품의 거래에 따른 대금 정산을 위하여 필요한 경우 
라. 도용 방지를 위하여 본인확인에 필요한 경우
마. 법률의 규정 또는 법률에 의하여 필요한 불가피한 사유가 있는 경우
④ '회사' 는 제2항과 제3항에 의해 이용자의 동의를 받아야 하는 경우에 개인정보보호 책임자의 신원(소속, 성명 및 전화번호 기타 연락처), 정보의 수집목적 및 이용목적, 개인정보의 보유 기간 및, 이용 기간, 제3자에 대한 정보제공 관련 사항(제공 받는 자, 제공목적 및 제공할 정보의 내용) 등 정보통신망 이용촉진 및 정보보호등에 관한 법률 제22조 제2항이 규정한 사항을 미리 명시하거나 고지해야 하며 이용자는 언제든지 이 동의를 철회할 수 있습니다.
⑤ 이용자는 언제든지 '회사' 가 가지고 있는 자신의 개인정보에 대해 열람 및 오류정정을 요구할 수 있으며 '회사' 는 이에 대해 지체 없이 필요한 조치를 취할 의무를 집니다. 이용자가 오류의 정정을 요구한 경우에 '회사' 는 그 오류를 정정할 때까지 당해 개인정보를 이용하지 않습니다. 
⑥ '회사' 는 개인정보 보호를 위하여 관리자를 한정하여 그 수를 최소화하며 신용카드, 은행계좌 등을 포함한 이용자의 개인 정보의 분실, 도난, 유출, 변조 등으로 인한 이용자의 손해에 대하여 모든 책임을 집니다.
⑦ '회사' 또는 그로부터 개인정보를 제공받은 제3자는 개인정보의 수집목적 또는 제공받은 목적을 달성한 때에는 당해 개인정보를 지체 없이 파기합니다. 
⑧ 기타 개인정보 취급과 관련한 내용은 '개인정보처리방침'에 고지하고 있으며 약관과 별도의 동의를 얻습니다.

제 20 조 (ID및 비밀번호 관리)

① 회원의 ID와 비밀번호에 관한 관리책임은 회원에게 있습니다. 
② 회원은 자신의 ID 및 비밀번호를 제3자에게 이용하게 해서는 안됩니다. 
③ 회원이 자신의 ID 및 비밀번호를 도난 당하거나 제3자가 사용하고 있음을 인지한 경우에는 바로 '회사' 에 통보하고 '회사' 의 안내가 있는 경우에는 그에 따라야 합니다.

제 21 조 (이용자의 금지행위)

① 신청 또는 변경 시 허위내용의 등록
② 타인의 정보 도용 
③ '회사' 에 게시된 정보의 변경
④ '회사' 가 정한 정보 이외의 정보(컴퓨터 프로그램 등)의 송신 또는 게시 
⑤ '회사' 기타 제3자의 저작권 등 지적재산권에 대한 침해 
⑥ '회사' 기타 제3자의 명예를 손상시키거나 업무를 방해하는 행위 
⑦ 외설 또는 폭력적인 메시지/화상/음성 기타 공서양속에 반하는 정보를 공개 또는 게시하는 행위

제 6장 권리관계 및 저작권 등

제 22 조 ('회사' 와 연결된 '몰'과의 관계)

① '회사' 와 연결된 '몰'(웹사이트)이란 하이퍼링크(예: 하이퍼링크의 대상에는 문자, 그림 및 동화상 등이 포함됨)방식 등으로 연결된 경우를 말합니다.
② '회사' 는 연결된 '몰'(웹사이트)이 독자적으로 제공하는 상품에 의하여 이용자와 행하는 거래에 대해서 보증 책임을 지지않는다는 뜻을 '회사' 의 초기화면 또는 연결되는 시점의 팝업화면으로 명시한 경우에는 그 거래에 대한 보증책임을 지지 않습니다.

제 23 조 (저작권 및 게시물의 관리)

① '회사' 가 작성한 저작물에 대한 저작권 기타 지적재산권은 '회사' 에 귀속합니다. 
② 이용자는 '회사' 를 이용함으로써 얻은 정보 중 '회사' 에게 지적재산권이 귀속된 정보를 '회사' 의 사전 승낙 없이 복제, 송신, 출판, 배포, 방송 기타 방법에 의하여 영리목적으로 이용하거나 제3자에게 이용하게 하여서는 안됩니다. 
③ '회사' 는 약정에 따라 이용자에게 귀속된 저작권을 사용하는 경우 당해 이용자에게 통보하여야 합니다.
④ '회사' 는 이용자가 게시하거나 작성하는 모든 내용물(회원간 전달 포함)이 다음 각 호의 경우에 해당한다고 판단되는 경우 사전통지 없이 삭제할 수 있으며, 이에 대해 '회사' 는 어떠한 책임도 지지 않습니다.
가. '회사' 다른 이용자 또는 제3자를 비방하거나 중상모략으로 명예를 손상시키는 내용인 경우
나. 공공질서 및 미풍양속에 위반되는 내용의 정보, 문장, 도형 등의 유포에 해당하는 경우
다. 범죄적 행위에 결부된다고 인정되는 내용인 경우
라. '회사' 의 저작권, 제3자의 저작권 등 기타 권리를 침해하는 내용인 경우
마. 불필요하거나 승인되지 않은 광고 등 게시물을 게재하는 경우
바. 기타 관계 법령 및 '회사' 의 지침, 규칙 등에 위반된다고 판단되는 경우
바. 게시글이 게시판 성격에 부합하지 않는 내용인 경우

제 24 조 ('회사' 의 면책)

① '회사' 는 회원의 귀책사유로 인한 서비스 이용의 장애 또는 손해에 대하여 책임을 지지 않습니다.
② '회사' 는 회원의 컴퓨터 오류에 의해 손해가 발생한 경우 또는 회원이 신상정보 및 전자우편 주소를 잘못 기재하여 손해가 발생한 경우 책임을 지지 않습니다.
③ '회사' 는 회원이 서비스에 게재한 각종 정보, 자료 등에 대해 정확성, 적법성을 보장하지 않습니다.
④ 회원간에 이루어지는 상품의 매매와 관련하여 발생하는 상품의 배송, 청약철회 또는 반품 등의 거래 진행은 거래의 당사자인 판매자 회원과 구매자 회원간에 수행되어야 하며, '회사' 는 거래진행에는 관여하지 않으며 어떠한 책임도 부담하지 않습니다.
⑤ 회원이 자신의 개인정보를 타인에게 유출 또는 제공함으로써, 발생하는 피해에 대해서 '회사' 는 일절 책임을 지지 않습니다.
⑥ '회사' 의 서비스 화면에서 링크, 배너 등을 통하여 연결된 '회사' (이하 피 연결'회사') 와 회원간에 이루어진 거래에 '회사' 는 개입하지 않으며, 해당 거래에 대하여 책임을 지지 않습니다.
⑦ '회사' 는 서비스 화면에 표시되는 판매자 회원 또는 제3자가 제공하는 상품 또는 정보 등의 정확성, 적시성, 타당성 등에 대하여 보증 하지 않으며, 그와 관련하여 어떠한 책임도 부담하지 아니 합니다.

제 7장 기타

제 25 조 (기타 사항)

① '회사' 는 필요한 경우 특정 서비스나 기능의 전부 또는 일부를 사이트를 통해 미리 공지한 후 일시적 또는 영구적으로 수정하거나 중단할 수 있습니다.
② 각 당사자는 상대방의 서면동의 없이 이 약관 상의 권리와 의무를 제3자에게 양도하거나 처분할 수 없습니다.
③ 이 약관과 관련하여 당사자간의 합의에 의하여 추가로 작성된 계약서, 협정서, 통보서 등과 '회사' 의 정책변경, 법령의 제 개정 또는 공공기관의 고시나 지침 등에 의하여 '회사' 가 공지하는 내용도 이용계약의 일부를 구성합니다.

제 26 조 (재판관할 및 준거법)

① '회사' 와 이용자간에 발생한 전자거래 분쟁에 관한 소송은 제소 당시의 이용자의 주소에 의하고, 주소가 없는 경우에는 거소를 관할하는 지방법원의 전속관할로 합니다. 다만, 제소 당시 이용자의 주소 또는 거소가 분명하지 않거나 외국 거주자의 경우에는 민사소송법상의 관할법원에 제기합니다. 
② '회사' 와 이용자간에 제기된 소송에는 한국법을 적용합니다.

<부칙> 본 개정약관은 2016년 5월 25일부터 시행합니다.
    
										</textarea>
										<textarea readonly="readonly" class="textarea_member" id="danawa-member-joinStep-company-agreement" cols="" rows="" style="display:none;" title="사업자회원 서비스 이용 약관 안내 내용">
											
제 1장 총칙

제 1 조 (목적)

본 약관은 ㈜(이하 '회사' 라 함)가 운영하는 인터넷 서비스 ""(www.danawa.com) 및  관련 제반 서비스 사이트
(접속 가능한 유/무선 단말기의 종류와는 상관없이 이용 가능한 '회사' 가 제공하는 모든 "서비스"를 의미하며, 이하 '사이트' 라 함)를 통한 
각 협력사(이하 '업체회원' 이라 함)가 제공하는 상품명, 상품가격 등 상품관련 정보 제공 및 광고의 노출 등 '회사' 의 제반 서비스를 이용함에 있어 
'회사' 와 '업체회원' 간의 권리와 의무를 규정함을 목적으로 합니다. 

제 2 조 (용어의 정의)

① '상품정보' 라 함은 '회사' 가 일반회원에게 제공하는 상품에 대한 정보로, 웹 페이지 형태의 텍스트, 음성, 화상, 이미지 등의 각종 데이터를 지칭하며
    상품정보의 유형은 다음 각호와 같습니다.

가. '회사' 가 자체 제작한 경우 
나. '회사' 가 계약 등을 통해 '업체회원' 이외의 업체로부터 확보한 경우 
다. '회사' 가 '업체회원' 로부터 제공받은 경우 
② '이용자' 란 '회사' 의 '사이트' 에 접속하여 제공되는 서비스를 이용하는 자로서, 회원과 비회원을 포함합니다. 
③ '업체회원' 이란 '회사' 가 제공하는 서비스를 이용하여 이용자에게 재화와 용역을 광고 및 할 목적으로 입점하는 회원을 말합니다. 
④ '가격정보' 란 '업체회원' 이 이용자에게 고지하는 상품의 가격을 말합니다. 
⑥ '가입비' 란 '신규업체회원' 이 '회사' 의 사이트에 입점하기 위해 최초로 지불하는 금액을 말합니다. 
⑦ '세팅비' 란 '회사' 가 '업체회원' 의 쇼핑몰을 제작 또는 '회사' 의 사이트에 보여지게 하는 작업에 대한 대가를 말합니다. 
⑧ ' 연동몰' 이란 '회사' 가 쇼핑몰을 제작하여 '업체회원' 에게 제공한 쇼핑몰을 말합니다. 

제 3 조 (약관의 명시와 개정)

① '회사' 는 "약관의규제에관한법률"(이하 "약관규제법"이라고 합니다), "정보통신망이용촉진및정보보호등에관한법률"(이하 "정통망법"이라고 합니다), 
    "전자상거래등에서의소비자보호에관한법률"(이하 "전자상거래법"이라고 합니다) 등 관련법령을 위반하지 않는 범위 내에서 이 약관을 개정할 수 있습니다. 
② '업체회원' 이 '회사' 의 '사이트' 에 가격정보 등록 및 상품의 광고를 하기 위해서는 본 약관과 '회사' 가 제시하는 "입점 업체 등록 기준"을 갖추어야 합니다. 
③ 본 약관의 개정은 효력 발생일 15일 전에 공지하며, 공지 후 효력발생일 이전까지 명시적으로 거부 의사 표시 또는 탈퇴를 하지 않을 경우 개정 약관에 
    동의하는 것으로 간주합니다. 개정된 약관에 동의하지 않은 회원 또는 업체회원은 서비스 이용을 중단하고 탈퇴할 수 있습니다. 
④ '회사' 는 필요한 경우 특정 서비스에 관하여 적용될 사항을 정하여 개별약관으로 미리 공지할 수 있으며, 회원 또는 업체회원이 이러한 개별약관에 동의하고 
    특정 서비스를 이용하는 경우에는 개별약관이 우선적으로 적용되고, 이 약관은 보충적인 효력을 갖습니다. 
⑤ 이 약관에서 정하지 아니한 사항이나 해석에 대해서는 별도의 '회사' 정책, 관계법령 또는 상관례에 의합니다. 회원 또는 업체회원은 '회사' 가 제공하는 
    서비스를 이용함에 있어 관련법령을 모두 준수하여야 하고, 이 약관의 규정을 들어 관련법령 위반에 대한 면책을 주장할 수 없습니다. 

제 2장 회원가입 및 입점

제 4 조 (회원가입 및 입점 등록기준)

① '회사' 의 '업체회원' 이 되고자 하는 이용자는 이 약관에 동의한 다음 실명확인절차를 거친 후 '회사' 가 정한 가입 양식에 따라 회원정보를
    정확히 입력하여 가입신청을 합니다. 
② '업체회원' 은 사업자 등록증을 보유 하고 있어야 하며, 만14세 미만의 자와 간이사업자는 입점할 수 없습니다. 단, 비가전 업체회원으로 입점 신청하는 경우 
    간이사업자라도 '회사' 의 승인이 있으면 입점할 수 있습니다. 
③ '업체회원' 의 가입신청 시 타인과 혼동할 수 있거나 불법적인 내용을 연상시키거나 또는 기타 사유로 '회사' 가 해당 아이디의 사용이 부적합하거나 
    불가능하다고 판단하는 경우, '회사' 는 이용자가 신청한 특정아이디를 사용할 수 없도록 제한할 수 있습니다. 
④ '업체회원' 은 입점 시 또는 입점 완료 후 통신판매신고를 하여야 합니다. 
⑤ '회사' 는 '업체회원' 이 입점 가입 시 매매보호 서비스(전자보증이나 결제대금예치) 가입승인을 받도록 요구할 수 있습니다. 
⑥ 입점을 위한 기타 등록 기준은 '회사' 의 운영 규칙에 규정되어 있으며, '회사' 는 필요 시 추가증빙서류 등을 요구할 수 있습니다. 
⑦ '업체회원' 이 '회사' 에게 등록한 정보가 관련 법규에 위반되는 불법 제품 광고 및 상품 등록 및 판매를 위한 것이거나 다음 각 호에 해당될 경우 
    '회사' 는 입점거부 혹은 '업체회원' 자격을 박탈할 수 있습니다. 
가. 입점 혹은 가입 신청 시 기재한 정보가 허위이거나 사실과 다른 경우 
나. '업체회원'으로 입점신청 시 지정한 인터넷 사이트가 인터넷쇼핑몰 또는 오픈마켓플레이스 등 웹 상에서 상품을 거래하는 사이트가 아닌 경우 
다. 입점신청 시 지정한 인터넷 사이트가 이용자가 직접 보유 또는 운영하지 않거나 또는 이용자가 해당 인터넷 사이트의 광고를 대행한다는 등의 
    관계가 없어 해당 인터넷 사이트 광고 자격이 모호한 경우 
라. 입점신청 시 지정한 인터넷 사이트와 관련하여 법령에 위반하거나 불법행위 기타 사회적 물의 발생 등의 사유로 해당 인터넷 사이트의 
    정상적인 영업이 어렵다고 '회사' 가 판단하는 경우 
마. 기타 이 약관에 위배되거나 위법 또는 부당한 입점신청이 확인된 경우 또는 '회사' 가 자체적인 기준으로 이용자의 입점이 '회사' 의 정책에 
    부합하지 않는다고 판단하는 경우 
입점 기간은 입점비용의 납부 등 입점 등록이 완료된 시점으로부터 1개월이며 입점방식에 따라 '회사' 가 제시하는 입점비용 및 납부방법에는 차이가 있습니다. 

제 5 조 (입점 등록 절차)

① '업체회원' 은 '회사' 의 사이트에서 입점 신청서를 작성한 뒤 사업자 등록증 사본을 첨부하여 '회사' 에게 제출하여야 합니다. 
② '회사' 는 입점 등록을 신청한 '업체회원' 에 대해 서비스 적합성 등을 심사한 후 1차 심사결과를 통보하여야 합니다. 통보 방법은 
    이메일 통보를 원칙으로 하며, 유,무선 등 기타의 방법으로 심사 결과를 통보할 수 있습니다. 
③ '업체회원' 이 서비스 적합 판정을 받은 경우, 입점방식에 따라 '회사' 는 '업체회원' 이매매보호서비스(전자보증이나 결제대금예치)에 
    가입을 하도록 요구할 수 있습니다. 
④ 필요한 경우, 매매보호서비스를 가입한 '업체회원' 에게 '회사' 는 최종 입점 승인을 통보하고 가입비 및 초기 세팅비를 청구할 수 있습니다. 
⑤ '회사' 는 비용 납부 사실을 확인 후 '업체회원' 에게 계정 (ID/Password)을 발급합니다. 이로써 '업체회원' 은 '회사' 의 서비스를 이용할 수 있습니다. 

제 6 조 (통지)

① '회사' 가 '업체회원' 에게 개별 통지하는 경우, 이 약관에서 달리 정하지 않는 한 '업체회원' 이 '회사' 에게 지정한 이메일(전자우편주소)로 통지하는 것을 
    원칙으로 하되, 전화 또는 팩스 등 유,무선으로도 통지할 수 있습니다. 
② 위 1항에도 불구하고 '회사' 가 불특정 다수의 회원에게 통지하는 경우 '사이트' 공지란 및 '업체회원' 의 서비스 페이지 또는 해당 서비스 안내페이지 등에 
    게시함으로써 통지에 갈음할 수 있습니다. 
③ '업체회원' 이 '회사' 에 통지하는 경우에는 고객센터 페이지상에 게재된 내용에 따라야 합니다. '회사' 는 '업체회원' 이 이러한 통지 절차 또는 내용을 
    준수하지 않는 경우 통지를 수령하지 아니하며, 이로 인하여 발생하는 모든 문제에 대한 책임은 '업체회원' 이 부담하여야 합니다. 

제 3장 회원정보의 보호

제 7조 (회원정보의 보호 및 변경)

① '회사' 는 아이디(ID) 등 서비스화면을 통하여 공개되는 정보를 제외하고는 '회사' 가 수집한 '업체회원' 의 정보를 정보수집 시에 밝힌 수집ㆍ이용목적, 
    원활한 서비스의 제공 및 제공서비스의 확대 외의 용도로 사용하거나 당해 '업체회원' 의 동의 없이 제3자에게 제공하지 않습니다. 
    다만, 법령이 '업체회원' 정보의 이용과 제3자에 대한 정보제공을 허용하거나 강제하고 있는 경우는 예외로 합니다. 
② '업체회원' 은 언제든지 자신에 관한 정보를 열람할 수 있고, '회사' 에게 잘못된 정보에 대한 정정을 요청할 수 있습니다. '회사' 는 '업체회원' 으로부터 
    정보정정의 요청이 있는 경우 그 오류를 정정하거나 정정하지 못하는 사유를 '업체회원' 에게 통지하는 등 필요한 조치를 취할 때까지 당해 정보를 
    이용하지 않습니다. 
③ '업체회원' 은 가입신청 시 기재한 사항이 잘못되었거나 변경되었을 경우 즉시 모든 회원계정에서 해당 사항을 수정해야 합니다. 회원정보가 변경되었음에도 
    해당 사항을 수정하지 않음으로써 발생한 각종 손해와 잘못된 수정으로 인하여 발생한 손해는 당해 '업체회원' 이 부담하여야 하며, '회사' 는 
    이에 대하여 아무런 책임을 지지 않습니다. 

제 4장 서비스의 이용 및 제공

제 8 조 (''업체회원'의 서비스)

① '회사' 는 '업체회원' 의 인터넷쇼핑몰 및 상품에 이용자가 보다 쉽게 접근할 수 있도록 광고영역 및 이동경로를 제공하는 가격비교 서비스입니다. 
② 상품의 판매는 '업체회원' 이 독자적으로 수행하고, '회사' 가 '업체회원' 을 위하여 판매를 대행, 대리하거나 수탁하지 않으며 재화 등의 판매에 있어서 
    어떠한 책임도 부담하지 않습니다. 
③ '업체회원' 과 이용자 사이에 성립된 거래와 관련된 책임은 거래당사자인 '업체회원' 과 이용자 스스로가 처리하여야 하며, '회사' 는 이에 대하여 
    관여하거나 책임을 부담하지 않습니다. 
④ '회사' 는 '업체회원' 의 상품정보 및 가격정보의 노출, 일반웹광고서비스 및 기타 서비스 등을 제공하며, 서비스의 종류 및 내용, 과금, 
    이용신청 방법 및 절차, 이용절차 등에 대한 내용은 고객센터 및 각 해당 서비스 안내페이지에 게시됩니다. 
⑤ '업체회원' 의 요청에 의하여 '회사' 가 제공하는 '연동몰' 에는 자체 회원을 유치할 수 없습니다. 
제 9 조 ('업체회원' 의 권리와 의무)

① '업체회원' 이 '회사' 의 사이트에 다수의 쇼핑몰로 입점하여 상품 및 가격정보를 제공할 경우 '업체회원' 은 각기 다른 가격을 표시하는 등의 소비자를 기만하는 
    행위를 하여서는 아니 되며, 이를 위배 시 '회사' 는 '업체회원' 에게 제재조치를 취할 수 있으며, '업체회원' 은 이에 관한 모든 책임을 집니다. 
② '업체회원' 은 상품 및 가격정보, 광고와 관련하여, '업체회원' 이 인터넷쇼핑몰 등을 운영하고 재화나 용역, 콘텐츠를 제공함에 있어, 전자상거래법, 정통망법, 
    표시광고의공정화에관한법률, 소비자기본법 등 관련법령 및 이 약관, 개별약정, 판매자 운영정책을 비롯하여 이용자 보호 및 서비스 신뢰도 제고 등을 위해 
    '회사' 가 제정하여 공개한 기타 정책을 준수하여야 합니다. 
③ '업체회원' 은 '회사' 에게 제공하는 상품 및 가격정보, 광고에 대하여 정확성과 신뢰성 유지에 최선을 다해야 합니다. 
④ '업체회원' 은 '업체회원' 의 쇼핑몰 이름으로 고객 서비스를 전담하며, 쇼핑몰에서의 구매상품 관련 정보 등록 및 이용자 문의와 주문을 신속히 처리해야 합니다. 
⑤ '업체회원' 은 쇼핑몰에서 취급하는 모든 상품에 대해 품질을 보증하여야 하며 상품 자체 및 상품 제공(배송, 반품 등)에 대한 클레임에 대해 책임을 지고 
    신속하고 성의 있게 해결해야 합니다. 
⑥ 아이디(ID) 및 비밀번호에 대한 관리책임은 '업체회원' 에게 있으며, 아이디(ID) 및 비밀번호를 타인에게 양도, 대여할 수 없습니다. 
⑦ 아이디(ID) 또는 비밀번호가 도용되거나 제3자가 무단사용하고 있음을 인지한 경우, 지체 없이 '회사' 에게 통지하여야 하고, '회사' 의 안내가 있는 경우에는 
    그에 따라야 합니다. '회사' 에 이를 지체 없이 통지하지 않거나 통지한 경우에도 '회사' 의 안내에 따르지 않은 때에는 도용 또는 제3자 무단사용으로 인한 
    손실이나 손해에 대하여 '회사' 는 책임을 지지 않습니다. 
⑧ '업체회원' 은 '회사' 의 요청이 있으면 서비스를 통해 발생한 매출, 트래픽, 그 변동 사항에 대한 정확한 데이터를 제공하여야 합니다. 또한, 자동화된 방법
    또는 기타 부정한 방법 등을 통하여 본인 또는 타 '업체회원' 의 광고상품에 대한 노출횟수 및 클릭횟수를 부정하게 생성 또는 증가하게 하여서는 안됩니다. 

제 10 조 (상품정보 및 가격정보 제공서비스)

①. '업체회원' 은 상품정보 및 가격정보 등록 시 '회사' 가 정한 기준과 절차를 준수하고 '회사' 가 정하는 정보를 빠짐없이 정확히 수록하여야 하며, 
    '회사' 가 지정하는 등록 양식, 방식 및 시스템 등을 준수하여야 합니다. 
② '회사' 는 이용자들에게 상품정보를 제공하기 위하여 '업체회원' 에게 상품정보의 제공을 요청할 수 있습니다. 
③ '회사' 는 '업체회원' 을 대신하여 소비자가 구매하고자 하는 상품정보에 대해 '업체회원' 이 상거래에서 사용할 수 있도록 제공할 수 있으며, 
    '회사' 가 제공한 상품정보가 사실과 다를 경우 즉시 '회사' 에게 통지하여야 합니다. 
④ '업체회원' 이 제1항 및 제2항을 위반할 경우 '회사' 는 해당 상품정보를 변경, 삭제, 등록 보류 등 '업체회원' 의 사전동의 없이 조치를 취할 수 있습니다. 
⑤ '업체회원' 은 '회사' 의 사이트에 등록한 '가격정보' 및 판매 조건에 대해 정확성과 적법성을 보장해야 하며, '업체회원' 이 고의, 과실, 착오 등으로 
    인하여 정확성 및 적법성 부분에 하자(瑕疵)가 발생하지 않도록 주의 의무를 다해야 합니다. 
⑥ '업체회원' 은 항상 정확한 최신의 가격 정보를 유지하여야 하며, '사이트' 에 '가격정보' 를 등록함에 있어 오류가 발생한 경우 '업체회원' 은 
    '회사' 에 즉시 통보해야 하여야 합니다. 
⑦ '업체회원' 이 전항의 의무에 관하여 제3자와 분쟁이 발생하였다면 '업체회원' 이 주된 책임을 지며, '회사' 는 분쟁해결을 위하여 본 약관과 
    '회사' 가 정한 범위 내에서 최대한 협조하도록 합니다. 
⑧ '업체회원' 은 상품 공급에 지장이 있을 것으로 예상되는 상품에 대해서는 사전에 가격정보를 삭제하여야 합니다. 
⑨ '회사' 는 '업체회원' 이 제공한 정보의 진실성, 타당성, 사실 부합성 또는 객관성 등에 관하여 일체의 책임을 지지 않습니다. 
⑩ '업체회원' 이 입력한 가격이 '회사' 의 사이트에 표출된 가격과 상이(相異)할 경우, '회사' 의 가격을 우선시 하는 것을 원칙으로 합니다. 
    다만, 예외적으로 이용자가 이 중에서 유리한 가격을 선택할 수 있도록 할 수 있습니다. 

제 11 조 (정보의 이용제한)

① '회사' 는 이용자에게 '사이트' 에 별도 표시되는 목적과 방식에 부합하는 한도에서 '회사' 에 게시된 게시물(상품정보 및 가격정보 포함)을 이용자의 
    블로그나 개인 홈페이지 등 웹에 복제하여 게시 할 수 있는 퍼가기 기능을 제공할 수 있습니다. 
② '업체회원' 이 '회사' 에 등록한 정보가 관련 법규에 위반되는 상품의 광고 및 상품등록, 상품판매를 위한 행위에 대해서는 '업체회원' 에 사전통보 없이 
    삭제 또는 변경할 수 있으며, 이에 대한 모든 민, 형사상의 책임은 '업체회원' 이 집니다. 
③ '업체회원' 은 다음과 같은 내용의 게시물(상품정보 및 가격정보 포함)을 등록하여서는 아니 되며, 이를 위반하는 경우 '회사' 는 사전 통보 없이 
    게시물의 삭제, 열람제한, 쓰기금지, 회원자격 박탈 및 이용계약의 해지 등을 할 수 있습니다. 다만, '회사' 는 해당 '업체회원' 에게 해지사유에 관한 
    의견진술의 기회를 부여할 수 있습니다. 
가. 공공질서나 미풍양속에 위배되는 내용 
나. 불법물, 음란물 또는 청소년유해매체물의 게시, 등록 또는 이와 관련된 상품의 홍보, 사이트 링크 등의 행위 
다. 타인의 권리나 개인정보, 명예, 신용 기타 정당한 이익을 침해하는 내용을 포함하는 경우 
라. 범죄행위와 관련된 내용을 포함하는 경우 
마. 허위 또는 과장 광고 내용을 포함하는 경우 
바. 정치, 경제적 분쟁을 야기하는 내용을 포함하는 경우 
사. 정보통신 설비의 오동작을 유발하거나, 혼란을 유발하는 컴퓨터 바이러스 또는 데이터를 포함하는 경우 
아. '회사' 가 제공하는 서비스 및 기타 '회사' 의 영업행위의 원활한 진행을 방해한다고 판단되는 경우 
자. 기타 이 약관 또는 대한민국의 관련 법령에 위반되는 내용을 포함하는 경우 

제 12 조 (상품의 등록, 공급, 배송)

① '업체회원' 은 '회사' 의 사이트에 같은 제품이라도 상이(相異)한 조건(예: 중고제품, 수입사 표기 등)의 제품을 '회사' 에게 확인 받지 않고 등록했을 경우 
    이와 관련하여 발생하는 모든 책임은 '업체회원' 에게 있으며, '회사' 는 이를 확인 시 본 약관에 따라 처리합니다. 
② '업체회원' 은 자신이 제공하는 상품의 가격, 품질, 배송 등 상품과 관련된 모든 책임과 의무를 부담하며, 그 기준은 '업체회원' 의 소비자 보호 규정에 따릅니다. 
    단, '업체회원' 의 소비자 보호 규정은 관계 법령을 준수해야 합니다. 
③ '업체회원' 이 제2항의 주의의무를 위반, 해태(懈怠) 또는 기타의 사유로 인하여 소비자 및 제3자와 분쟁이 발생할 경우, '업체회원' 은 자신의 책임과 비용으로 
    '회사' 을 면책 시켜야 하며, 발생한 분쟁을 조속한 시일 내에 처리해야 합니다. 
④ '업체회원' 은 가격 변동 및 재고 없음의 사유로 일방적인 주문취소를 해서는 아니 되며, 재화 등을 공급하기 곤란할 때에는 소비자에게 지체 없이 알려야 하고,
    이로 인하여 발생되는 모든 문제는 '업체회원' 에게 책임이 있습니다. 
⑤ '업체회원' 이 '회사' 의 사이트에 등록하는 상품이' 업체회원' 의 쇼핑몰에서 판매 중이거나 '회사' 의 서비스를 통해 접수된 주문 건에 대해서는 반드시 
    '회사' 의 사이트에 등록된 가격으로 판매하여야 합니다. 
⑥ '업체회원' 이 '회사' 의 서비스를 통해 접수된 주문건에 대해 배송처리 등을 원활히 처리하지 못하여 문제를 일으킬 것으로 예상될 경우 '회사' 는 '업체회원' 의 
    서비스 이용에 적절한 제재를 가할 수 있습니다. 
⑦ '회사' 는 '업체회원' 이 등록, 제공한 '상품정보' 및 '가격정보' 와 관련하여 다음 각호 중 하나의 사유가 있는 경우 임의로 상품 등록, 광고 및 광고의 
    중지, 삭제, 수정, 위치 변경 등의 조치를 취할 수 있습니다. 
가. 상품 판매 기간이 만료되었거나 품절된 경우 
나. 상품이 잘못된 상품 카테고리에 등록되었을 경우 
다. '회사' 의 서비스 내용, 방식 등에 변경이 있는 경우 
라. '회사' 가 정한 등록부적합상품 또는 광고부적합사이트인 경우 

제 13 조 (서비스 이용요금)

① '업체회원' 이 '회사' 에게 지불할 월별 서비스 이용 요금은 선불이 원칙이며, '업체회원' 은 납기일 내에 서비스 이용 요금을 납부해야 합니다. 
    단, 별도의 서비스 이용계약을 체결한 '업체회원'의 경우 해당 계약이 우선하여 적용됩니다. 
② '업체회원' 이 서비스 이용 요금을 납기일 내 납부하지 않을 경우 '회사' 는 '업체회원' 의 서비스 이용을 중지할 수 있습니다. 
③ '업체회원' 의 서비스 이용 요금은 등록 상품 수에 따라 차등 부과되며 이에 따르는 요금체계는 '회사' 가 별도 공지합니다. 
④ '회사' 는 신규 입점하는 '업체회원' 에 대하여 별도 공지한 가입비와 월 관리비를 받으며, '업체회원' 이 서비스를 이용하는 도중에 해지 또는 퇴점하여도 
    이미 '회사' 에게 지급된 비용은 반환되지 않습니다. 
⑤ '업체회원' 이 서비스를 중지한(월별 이용 요금 3개월 이상 연체로 인한 '업체회원' 의 관리자 ID 삭제 포함) 후에 재가입 할 경우에는 '회사' 는 동일 
    사업자에 한하여 세팅비는 청구하나 가입비는 면제되며, 이에 따르는 이용 요금은 시작일을 기준으로 일할 계산하여 별도 통보합니다. 
⑥ '통합배송 서비스' 의 기본 이용요금 및 정산방법은 서비스페이지에 별도 공지한 내용에 따라 과금하게 됩니다. 

제 5장 저작권 및 비밀준수

제 14 조 (저작권의 귀속 및 게시판이용)

① '회사' 가 운영하는 사이트를 통해서 이용되는 프로그램, 상품정보 및 가격정보를 포함한 모든 게시물의 저작권은 '회사' 에게 있으며 이를 이용하고자 할 경우에는 
    '회사' 의 사전승인이 있어야 합니다. '업체회원' 이 '회사' 의 사전승인 없이 '회사' 의 저작물을 복제, 전송, 출판, 배포, 방송, 2차적 저작물 작성, 
    기타의 방법으로 이용하거나 제3자에게 이용하도록 하여서는 안됩니다. 
② '업체회원' 이 '회사' 에게 제공한 정보는 '업체회원' 에게 저작권이 있습니다. 다만, '회사' 는 '업체회원' 이 제공한 정보에 대해 사용권을 가지며, 
    상품정보 본질을 해(害)하지 않는 범위 내에서 편집변환 등을 할 수 있습니다. 
③ 전항에 따라 '회사' 가 '업체회원' 의 저작물을 이용할 수 있는 권리는, 개별계약이 있는 경우 개별계약이 우선하고, 개별계약이 없는 경우에는 본 약관에 따라 
    '업체회원' 이 '회사' 에 대해 명시적으로 자신이 저작권자인 게시물의 삭제 및 이용 금지를 요청하지 않는 이상, '업체회원' 이 탈퇴한 후에도 유효합니다. 
④ '업체회원' 은 '회사' 의 사이트에 등록한 정보에 대해 정확성과 적법성을 보장해야 합니다. 또한 '업체회원' 은 상품에 관한 각종 정보를 '회사' 의 사이트에 
    등록하기 전에 정확성과 적법성에 문제가 없는지 신중하게 살펴 보아야 합니다. 
⑤ '회사' 는 이용자가 게시하거나 작성하는 모든 내용물(회원간 전달 포함)이 다음 각 호의 경우에 해당한다고 판단되는 경우 사전통지 없이 삭제할 수 있으며, 
    이에 대해 '회사' 는 어떠한 책임도 지지 않습니다. 
가. '회사' 다른 이용자 또는 제3자를 비방하거나 중상모략으로 명예를 손상시키는 내용인 경우 
나. 공공질서 및 미풍양속에 위반되는 내용의 정보, 문장, 도형 등의 유포에 해당하는 경우 
다. 범죄적 행위에 결부된다고 인정되는 내용인 경우 
라. '회사' 의 저작권, 제3자의 저작권 등 기타 권리를 침해하는 내용인 경우 
마. 불필요하거나 승인되지 않은 광고 등 게시물을 게재하는 경우 
바. 기타 관계 법령 및 '회사' 의 지침, 규칙 등에 위반된다고 판단되는 경우 
사. 게시글이 게시판 성격에 부합하지 않는 내용인 경우 

제 15 조 (비밀준수)

① '업체회원' 은 '회사' 의 기술 및 영업상 획득한 정보 등에 관하여 '회사' 의 동의 없이 제3자에게 제공하거나 공개해서는 아니 됩니다. 
② '회사' 는 관련법령이 정하는 바에 따라서 이용자의 개인정보를 보호하기 위하여 노력합니다. '업체회원' 은 이용자의 개인정보보호에 관해서는 관련법령 및 
    '회사' 가 정하는 "개인정보처리방침"에 정한 바에 따라야 하며 이를 위반함으로 인하여 발생되는 모든 문제는 '업체회원' 에게 책임이 있습니다. 

제 16 조 (권리의 양도금지위)

① '업체회원' 은 본 계약상의 권리와 의무를 제 3자에게 양도할 수 없으며, '업체회원' 의 양도를 적발할 경우 '회사' 는 '업체회원' 에 대해 임의로 자격의 
    정지(가격입력, 게시글 작성 금지 등) 또는 '업체회원' 의 자격을 박탈(퇴점) 할 수 있습니다. 

제 6장 서비스의 중단 및 종료

제 17 조 (서비스 중단)

① '회사' 는 '업체회원' 이 고의 및 과실로 상품 및 가격정보를 허위로 기재하거나 사실과 다른 정보를 기재하였다고 판단한 경우 '업체회원' 에게 
    사전통보 없이 '업체회원' 의 가격비교 서비스를 일시 정지할 수 있습니다. 
② 전 항에 따라 가격비교 서비스가 일시 정지된 경우 '회사' 는 '업체회원' 에게 이메일 및 유, 무선등의 방법으로 위 사실을 통보합니다. 
③ '업체회원' 이 '회사' 로부터 위 사실을 통보 받은 후 7일 이내에 시정조치를 하지 않은 경우 '회사' 는 계약을 해지할 수 있습니다. 

제 18 조 (계약의 종료)

① '회사' 는 '업체회원' 이 다음 각 호에 해당하는 경우 '업체회원' 에게 영업정지나 퇴점조치를 취할 수 있습니다. 
가. ' 업체회원' 이 본 약관의 규정을 위반한 경우 
나. ' 업체회원' 의 행위로 인하여 '회사' 의 신용도 및 대외적 이미지가 저해된 경우 
다. ' 업체회원' 이 고의 또는 상습적으로 가격 입력의 정확성을 지키지 않거나, 상이한 제품이나 가격으로 '회사' 의 신용도를 떨어뜨린 경우 
라. ' 업체회원' 이 파산선고 또는 해산명령을 받았을 경우 
마. ' 업체회원' 이 본 약관 및 관계법령를 위반하여 '회사' 로부터 이메일 또는 전화를 통한 경고를 받은 후에도 시정되지 않을 경우 
바. ' 업체회원' 이 '회사' 의 신규 입점 업체 등록 기준을 충족하지 못한 경우 
사. ' 업체회원' 이 '회사' 의 새로운 의무화 정책 또는 관리정책을 충족하지 못하는 경우 
아. ' 업체회원' 의 지속적인 배송 지연, 판매 거부 행위, 개인정보 유출 등 위법 행위, 부가조건 요구 등 가격등록 기준에 어긋나는 
    편법적인 가격입력행위 등의 경우 
자. ' 업체회원' 이 제3자의 저작권 등 기타 권리를 침해하는 경우 
차. ' 업체회원' 의 귀책 사유로 인한 상당한 문제 발생에도 불구하고, 서비스 개선 조치의 불이행 및 연락이 두절되는 경우 
카. ' 업체회원' 이 부당한 기술적 방법을 동원하여 '회사' 의 서비스를 방해하거나 제3자에게 피해를 주는 행위가 발생되었을 경우 
타. 기타 관계 법령에 위배 하거나 범죄행위와 관련이 있다고 판단되는 경우 
파. ' 업체회원' 은 '회사' 의 각 게시판에 올라온 게시물에 대하여 다른 이용자들을 염두에 두고 답변을 올려야 하며 무성의한 글이나 
    음해성 글을 작성시 '회사' 는 '업체회원' 에게 계약 해지 등을 통보할 수 있습니다. 
② '회사' 는 ' 업체회원' 에게 이용계약의 해지 또는 서비스 이용신청의 취소와 관련하여 별도의 위약금을 부과하지 않으며 '업체회원' 이 
    '회사' 에 기 지불한 광고대금 등에 대하여 환급금이 있는 때에는 '업체회원' 간의 광고계약서 규정에 따라 환급합니다. 
③ '회사' 다른 이용자 또는 제3자를 비방하거나 중상모략으로 명예를 손상시키는 내용인 경우 

제 19 조 (손해배상)

① '회사' 의 귀책사유로 '업체회원' 이 4시간 이상 서비스를 이용하지 못하거나 월 장애누적시간이 24시간을 초과하는 손해 발생시 '업체회원' 은 
    그 사실을 발견 즉시 '회사' 에게 통보하여야 하며, '회사' 는 '업체회원' 의 월 관리비 범위 내에서 서비스 중단 시간에 대하여 해당 
    월의 일 평균 요금에 서비스 제공 중지시간을 24로 나눈 수를 곱하여 산출한 금액을 '업체회원' 에게 지급합니다. 
② '업체회원' 이 위법한 행위를 하거나 본 약관의 의무 이행을 성실히 이행하지 않아 '회사' 에게 손해를 끼칠 경우 그 손해를 배상해야 합니다. 

제 20 조 ('회사' 의 면책)

① '회사' 는 다음 각 호의 사유를 이유로 서비스를 제공하지 못하게 될 경우에는 손해배상의 책임을 부담하지 않습니다. 
가. 전쟁, 폭동, 천재지변 등과 같은 불가항력적인 사유가 발생한 경우 
나. 서비스의 질(質)을 개선하기 위해 정보통신 설비를 보수, 점검을 하는 경우 
다. ' 회사' 의 고의 또는 과실 없이 정보통신 설비가 고장 나거나 두절되는 경우 
라. 시스템 관리자의 고의, 과실이 없는 하드웨어의 장애, 시스템의 다운, 해킹 등이 발생한 경우 
마. 법규상의 제한, 공공기관의 행정지도, '회사' 의 운영방침 또는 이에 준하는 경우 
바. 새로운 서비스로의 교체 기타 '회사' 가 적절하다고 판단하는 사유에 기하여 현재 제공되는 서비스를 완전히 중단하는 경우 
사. '이용자' 또는 '업체회원' 의 귀책사유로 인한 서비스 이용의 장애가 발생한 경우 
② 제1항에 의한 서비스 중단의 경우에는 '회사' 는 '업체회원' 에게 통지합니다. 다만, '회사' 가 통제할 수 없는 사유로 인한 서비스의 중단으로 인하여 
    사전 통지가 불가능한 경우에는 사후에 통지합니다. 
③ '회사' 는 '회사' 또는 '업체회원' , 이용자가 게재한 정보, 자료, 사실의 정확성 및 신뢰성 등을 보증하지 않으며, 이를 신뢰함으로써 '업체회원' , 
    이용자 기타 제3자가 입은 손해에 대하여 책임을 지지 않습니다. 
④ '업체회원' 은 미성년자와 거래를 진행할 시에는 미성년자 법정대리인의 사전동의를 필히 득하여야 하며 '회사' 는 '업체회원' 과 미성년자와의 
    거래에 대하여 일체의 책임을 부담하지 않습니다. 

제 21 조 (재판관할 및 준거법)

① 본 약관에 명시되지 아니한 사항 또는 계약조항의 해석에 관하여 이견(異見)이 발생하였을 때에는 관계법령 및 상관례에 따라 '회사' 와 '업체회원' 이 
    상호 협의하여 처리합니다. 또한 '회사' 와 별도의 서비스 이용계약을 체결한 경우 해당 계약이 본 약관보다 우선하여 적용됩니다. 
② 본 약관과 관련하여 발생하는 일체의 분쟁은 대한민국 법령을 준거법으로 하며, '회사' 와 '업체회원' 간 발생한 분쟁에 관한 소송은 
    민사소송법상의 관할법원에 제소합니다. 

<부칙 > 본 개정약관은 2012년 02월 27일부터 시행합니다.
										</textarea>
									</div>
								</div>
								<div class="agree_con agree_con2" id="agree">
									<h5 class="tit_h5">
										<!-- 1702 라벨 클릭 시 클래스 on 추가 -->
										<label for="danawa-member-joinStep-checkBox-agree-privacy" id="privacy" class="lb_chk_box" title="개인정보 수집 및 이용 안내 필수 입력 항목">
											<strong>개인정보 수집 및 이용 안내</strong>
											<span> (필수)</span>
										</label>
										<!--1702 약관보기 클릭 시 클래스 on 과 내용닫기 텍스트 변경 -->
										<span class="btn_view ico">
											<button type="button" onclick="javascript:doDisplay2();" id="danawa-member-joinStep-guide-button-privacy" title="약관보기 버튼 누르면 상세 내용이 열립니다">약관보기 ▼</button>
										</span>
										<!--1702 웹접근성 포커스 (Tab키) 이동 시 클래스 focus 추가 탭키 이동 관련 개발 필요 -->
										<input class="ab" type="checkbox"  id="danawa-member-joinStep-checkBox-agree-privacy" title="[체크박스]" />
									</h5>
									<div class="agree_textarea_wrap" id="danawa-member-joinStep-guide-textDesc-privacy" style="display:none;" title="개인정보 수집 및 이용 안내 내용">
										
<!-- 2018-01 개인정보 수집 :priv_r_tbl 추가 -->
<!-- priv_r_tbl -->
<div class="priv_r_tbl">
	<!-- text_w -->
	<div class="text_w">
		<p>1. 수집하는 개인정보의 항목 및 수집방법 <br><br>
			가. 수집하는 개인정보의 항목<br>
			회사는 회원가입, 원활한 고객상담, 각종 서비스의 제공 등을 위해 아래와 같은 개인정보를 수집하고 있습니다.</p><br>
	</div>
	<!--// text_w -->
	<table summary="개인정보 수집방침 테이블로 구분, 수집/이용항목, 수집/이용 목적 정보 안내">										
		<caption class="blind">개인정보 수집방침</caption>
		<colgroup>
			<col class="col_1">
			<col class="col_2">
			<col class="col_3">
			<col class="col_4">
		</colgroup>
		<thead>
			<tr>
				<th colspan="2" scope="col" class="col_1">구분</th>
				<th scope="col" class="col_3">수집/이용 항목</th>
				<th scope="col" class="col_4">수집/이용 목적</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td class="col_1">가입시 (일반)</td>
				<td class="col_2">필수</td>
				<td class="col_3">아이디, 비밀번호, 이름, 닉네임, 이메일주소, 만 14세 이상 여부</td>
				<td class="col_4">개인 식별, 고지사항 전달, 서비스 관련 상담, 민원사항 처리 등</td>
			</tr>
			<tr>
				<td rowspan="2" class="col_1">가입시 (사업자)</td>
				<td class="col_2">필수</td>
				<td class="col_3">아이디, 비밀번호, 이름, 닉네임, 이메일주소, 회사명, 대표자명, 사업자등록번호, 만 14세 이상 여부</td>
				<td rowspan="2" class="col_4">사업자 식별, 고지사항 전달, 서비스 관련 상담, 민원사항 처리, 부가가치세법에 따른 세금계산서 발행</td>
			</tr>
			<tr>
				<td class="col_2">선택</td>
				<td class="col_3">휴대폰 번호</td>
			</tr>
			<tr>
				<td rowspan="2" class="col_1">구매 시</td>
				<td class="col_2">필수</td>
				<td class="col_3">중복가입확인정보(DI), 실명, 연령, 수령인 이름, 휴대폰번호, 주소</td>
				<td rowspan="2" class="col_4">주문 상품 결제, 배송, 민원사항 처리</td>
			</tr>
			<tr>
				<td class="col_2">선택</td>
				<td class="col_3">추가 연락처</td>
			</tr>
			<tr>
				<td class="col_1">간편 로그인 시</td>
				<td class="col_2">필수</td>
				<td class="col_3">닉네임, 프로필 사진(프로필 사진이 등록되어 있을 경우)</td>
				<td class="col_4">개인 식별</td>
			</tr>
			<tr>
				<td class="col_1">성인콘텐츠 접근 시</td>
				<td class="col_2">필수</td>
				<td class="col_3">연령(성인여부)</td>
				<td class="col_4">성인여부 확인</td>
			</tr>
			<tr>
				<td class="col_1">장터 글쓰기 시</td>
				<td class="col_2">필수</td>
				<td class="col_3">중복가입확인정보(DI), 실명</td>
				<td class="col_4">부정거래 방지</td>
			</tr>
			<tr>
				<td class="col_1">사이버머니 환급 시</td>
				<td class="col_2">필수</td>
				<td class="col_3">중복가입확인정보(DI), 실명, 은행, 계좌번호, 휴대폰번호, 신분증 사본</td>
				<td class="col_4">계정정보와 환급계좌정보 일치 여부 확인, 서비스 관련 상담, 소득세법에 따른 소득신고 처리</td>
			</tr>
			<tr>
				<td class="col_1">서비스 이용 시 생성되어 수집되는 정보</td>
				<td class="col_2">필수</td>
				<td class="col_3">IP 주소, 쿠키, 방문일시, 서비스 이용 기록</td>
				<td class="col_4">서비스 이용 통계</td>
			</tr>
			<tr>
				<td class="col_1">모바일 서비스 이용 시</td>
				<td class="col_2">필수</td>
				<td class="col_3">UUID(임의 생성한 앱 고유값). 푸시토큰(생성값), OS 종류 및 버전, 디바이스 종류</td>
				<td class="col_4">서비스 이용 통계, 모바일 알리미 서비스 제공 등</td>
			</tr>
		</tbody>
	</table>
	<!-- text_w -->
	<div class="text_w">
		<p> <br>나. 개인정보 수집방법 <br>
			회사는 다음과 같은 방법으로 개인정보를 수집합니다. <br>
			- 홈페이지, 모바일 어플리케이션, 모바일 웹페이지, 서면양식, 팩스, 전화, 상담 게시판, 전자우편, 이벤트 응모, 배송요청 <br>
			- 협력회사로부터의 제공 <br>
		</p>
		<br>
		<p>
			2. 개인정보의 수집 및 이용목적 <br> <br>
			가. 회사는 기본적인 서비스 제공을 위한 필수 정보만을 수집하고 있으며 서비스에 맞는 별도의 개인 정보를 제공받기 위해서는 정보 수집 시 별도 동의를 얻고 있습니다. 선택 정보를 입력하지 않은 경우에도 서비스 이용 제한은 없습니다. <br> <br>

			나. 회사는 다음과 같은 목적으로 개인정보를 수집하여 이용할 수 있습니다. 다만, 전자상거래 등에서의 소비자보호에 관한 법률, 국세기본법, 전자금융거래법 등 관련법령에 따라 주민등록번호 및 은행계좌번호의 수집·보관이 불가피한 경우에는 이용자에게 고지하여 해당 정보를 수집할 수 있습니다. <br><br>

			[회원관리] <br>
			회원제 서비스 이용 및 특정 서비스 이용 단계에서 제한적 본인 확인제에 따른 본인확인, 개인식별, 가입의사 확인,  이용약관에 위배되는 회원의 부정이용방지, 분쟁 조정을 위한 기록보존, 불만처리 등 민원처리, 신규서비스 및 신상품이나 이벤트 정보안내 <br> <br>

			[서비스 제공에 관한 계약 이행 및 서비스 제공에 따른 요금정산] <br>
			컨텐츠 제공, 특정 맞춤 서비스 제공, 물품배송 또는 청구서 등 발송, 본인인증, 구매 및 요금 결제, 요금추심 <br> <br>

			[신규 서비스 개발 및 마케팅/광고에의 활용] <br>
			신규 서비스 개발 및 맞춤 서비스 제공, 통계학적 특성에 따른 서비스 제공 및 광고 게재, 서비스의 유효성 확인, 이벤트 및 광고성 정보 제공 및 참여기회 제공, 회원의 서비스 이용에 대한 통계 <br> <br>

		</p>
		<p>
			3. 개인정보의 보유 및 이용기간 <br>
			이용자의 개인정보는 원칙적으로 개인정보의 수집 및 이용목적이 달성되면 지체 없이 파기합니다. 단, 아래의 경우에는 예외로 합니다. <br> <br>

			가. 관련법령에 의한 정보보유 사유 <br>
			상법, 전자상거래 등에서의 소비자보호에 관한 법률 등 관계법령의 규정에 의하여 보존할 필요가 있는 경우 회사는 관계법령에서 정한 일정한 기간 동안 회원정보를 보관합니다. 이 경우 회사는 보관하는 정보를 그 보관의 목적으로만 이용하며, 보존기간은 아래와 같습니다. <br> <br>
			- 계약 또는 청약철회 등에 관한 기록 <br>
			보존 이유 : 전자상거래 등에서의 소비자보호에 관한 법률 <br>
			보존 기간 : 5년 <br> <br>
			- 대금결제 및 재화 등의 공급에 관한 기록 <br>
			보존 이유 : 전자상거래 등에서의 소비자보호에 관한 법률 <br>
			보존 기간 : 5년 <br> <br>
			- 회원의 불만 또는 분쟁처리에 관한 기록 <br>
			보존 이유 : 전자상거래 등에서의 소비자보호에 관한 법률 <br>
			보존 기간 : 3년 <br> <br>
			- 방문에 관한 기록 <br>
			보존 이유 : 통신비밀보호법 <br>
			보존 기간 : 3개월 <br> <br>

			나. 가입자가 1년간 에서 이용 기록이 없을 시, 서비스 미이용자의 개인정보는 '정보통신망 이용촉진 및 정보보호등에 관한 법률 제29조' 에 근거하여 이용자에게 사전통지하고 개인정보를 별도로 분리하여 저장 관리합니다. <br> <br>

		</p>
	</div>
	<!--// text_w -->
</div>
									</div>
								</div>
								<div class="agree_con agree_con3">
		                            <h5 class="tit_h5">
			                            <!-- 1702 라벨 클릭 시 클래스 on 추가 -->
			                            <label for="danawa-member-joinStep-checkBox-agree-age" id="age" class="lb_chk_box" title="만 14세 이상 확인 필수 입력 항목"> 
				                            <strong>만 14세 이상 확인</strong>
				                            <span> (필수)</span>
				                            <span class="txt_grey"> 는 만 14세 이상부터 회원가입이 가능합니다.</span>
			                            </label>
			                            <!--1702 웹접근성 포커스 (Tab키) 이동 시 클래스 focus 추가 탭키 이동 관련 개발 필요 -->
			                            <input class="ab" type="checkbox" id="danawa-member-joinStep-checkBox-agree-age" title="[체크박스]" />
		                            </h5>
	                            	<!-- 웹접근성을 위해 textarea의 id값과 label의 for값을 동일하게 해주세요.-->
	                        	</div>
								<div class="agree_con agree_con4">
		                            <h5 class="tit_h5">
			                            <!-- 1702 라벨 클릭 시 클래스 on 추가 -->
			                            <label for="danawa-member-joinStep-checkBox-agree-mailing" id="mailing" class="lb_chk_box" title="메일 수신 여부 항목">
				                            <strong>메일 수신 여부</strong>
				                            <span class="txt_blue"> (선택)</span>
			                            </label>
			                            <!--1702 약관보기 클릭 시 클래스 on 과 내용닫기 텍스트 변경 -->
			                            <span class="btn_view ico">
			                            <button type="button" onclick="javascript:doDisplay3();" id="danawa-member-joinStep-guide-button-mailing" title="약관보기 버튼 누르면 상세 내용이 열립니다">약관보기 ▼</button>
			                            </span>
			                            <!--1702 웹접근성 포커스 (Tab키) 이동 시 클래스 focus 추가 탭키 이동 관련 개발 필요 -->
			                            <input class="input_check" type="checkbox"  id="danawa-member-joinStep-checkBox-agree-mailing" name="useMailing" value="Y"  title="[체크박스]" />
		                            </h5>
		                            <!-- 웹접근성을 위해 textarea의 id값과 label의 for값을 동일하게 해주세요.-->
	                            
		                            <div class="agree_textarea_wrap">
		                                <div class="mail_r_tbl" id="danawa-member-joinStep-guide-textDesc-mailing" style="display:none;">
		                                   <p class="tit_p">고객님께서는 동의를 거부할 수 있으며, 동의하지 않아도 가입이 가능합니다.</p>
		                                    <table summary="메일수신여부 수집방침 테이블로 이용목적, 수집항목, 보유기간 정보 안내">
		                                        <caption class="blind">메일수신여부 수집방침</caption>
		                                        <colgroup>
		                                            <col style="width:132px" />
		                                            <col style="width:131px" />
		                                            <col /> 
		                                        </colgroup>
		                                        <thead>
		                                            <tr>
		                                                <th scope="col">이용목적</th>
		                                                <th scope="col">수집항목</th>
		                                                <th scope="col">보유기간</th>
		                                            </tr>
		                                        </thead>
		                                        <tbody>
		                                            <tr>
		                                                <td>할인혜택, 소식 및 이벤트 당첨 알림 서비스제공</td>
		                                                <td style="text-align:center;">이메일 주소</td>
		                                                <td>회원탈퇴 또는 개인정보 유효기간 도래시까지 보관<br />(단, 관계 법령에 따라 고객님의 개인정보를 보존해야 하는 경우, 회사는 해당 법령에서 정한 기간동안 보관합니다.)
		                                                </td>
		                                            </tr>
		                                        </tbody>
		                                    </table>
		                                </div>
		                            </div>
	                        	</div>
							</div>
							<!--// join_box -->
							<div class="join_title_area">
								<h4 class="tit_con">정보 입력</h4>
								<span class="noti_txt">* 표시는 필수 입력항목입니다.</span>
							</div>
							<!-- join_box -->
							<div class="join_box join_input_box">
								<!-- 20160128 btn_inpt_error -->
<!-- 								<a href="/pwdRule" target="_blank" class="btn_inpt_error" title="입력한 내용이 자꾸 초기화 되시나요? 내용 새 창이 열립니다.">입력한 내용이 자꾸 초기화 되시나요?</a> -->
								<div class="join_input_area">
									<dl class="contents_row">
										<dt><label for="danawa-member-joinStep-member-email-emailFirst" class="input_title" title="이메일 필수 입력 항목">이메일*</label></dt>
										<dd class="email_certi_row">
											<div class="email_certi_noti">
												<p>- 가입 완료를 위한 이메일 인증이 진행되니 정확한 이메일 주소를 입력해주시기 바랍니다.
												</p>
											</div>
											<span class="input_wrap email_certi1"><input type="text" id="danawa-member-joinStep-member-email-emailFirst" name="firstemail" title="이메일 앞자리 입력창" class="" /></span>
											<span class="email_at">@</span>
											<span class="input_wrap email_certi2"><input type="text" onkeyup="emailcheck();" id="danawa-member-joinStep-member-email-emailSecond" name="secendemail" title="이메일 뒷자리 입력창" class=""  /></span>
											<select id="danawa-member-joinStep-selectBox-email" title="이메일 뒷자리 선택" class="slct_email_tail" >
												<option value="1">직접입력</option>
												<option value="naver.com">naver.com</option>
												<option value="hanmail.net">hanmail.net</option>
												<option value="nate.com">nate.com</option>
												<option value="gmail.com">gmail.com</option>
												<option value="hotmail.com">hotmail.com</option>
												<option value="lycos.co.kr">lycos.co.kr</option>
												<option value="empal.com">empal.com</option>
												<option value="korea.com">korea.com</option>
											</select>
											<p id="em"></p>
											<span class="input_alert_txt" id="danawa-member-joinStep-message-email"></span>
										</dd>
									</dl>
									<dl class="contents_row"><!-- 웹접근성을 위해 input의 id값과 label의 for값을 동일하게 해주세요.-->
										<dt><label for="danawa-member-joinStep-member-id" class="input_title" title="아이디 필수 입력 항목">아이디*</label></dt>
										<dd>
											<span class="input_wrap"><input type="text" id="danawa-member-joinStep-member-id" name="memberId" title="아이디 입력창" /></span>
											<span class="input_alert_txt" id="danawa-member-joinStep-message-id"></span>
										</dd>
									</dl>
									<dl class="contents_row">
										<dt><label for="danawa-member-joinStep-member-password" class="input_title" title="비밀번호 필수 입력 항목">비밀번호*</label></dt>
										<dd>
											<span class="input_wrap"><input type="password" id="danawa-member-joinStep-member-password" name="memberPwd"  onkeyup="passwordCheckFunction(this)" title="비밀번호 입력창" /></span>
											<span class="input_alert_txt" id="danawa-member-joinStep-message-password"></span>
										</dd>
									</dl>
									<dl class="contents_row">
										<dt><label for="danawa-member-joinStep-member-passwordConfim"  class="input_title" title="비밀번호 확인 필수 입력 항목">비밀번호확인*</label></dt>
										<dd>
											<span class="input_wrap"><input type="password" id="danawa-member-joinStep-member-passwordConfim" onkeyup="passwordCheckFunction(this)"  name="memberPwdConfirm" title="비밀번호 확인 입력창" /></span>
											<span class="input_alert_txt" id="danawa-member-joinStep-message-passwordConfirm"></span>
											<p id="abc"></p>
											
										</dd>
									</dl>
									<dl class="contents_row">
										<dt><label for="danawa-member-joinStep-member-name" class="input_title" title="이름 필수 입력 항목">이름*</label></dt>
										<dd>
											<span class="input_wrap"><input type="text" id="danawa-member-joinStep-member-name" name="memberName" title="이름 입력창" /></span>
											<span class="input_alert_txt" id="danawa-member-joinStep-message-name"></span>
										</dd>
									</dl>
									<dl class="contents_row">
										<dt><label for="danawa-member-joinStep-member-nickname" class="input_title" title="닉네임 필수 입력 항목">닉네임*</label></dt>
										<dd>
											<span class="input_wrap"><input type="text" id="danawa-member-joinStep-member-nickname" name="memberNickname" title="닉네임 입력창" /></span>
											<span class="input_alert_txt" id="danawa-member-joinStep-message-nickname"></span>
										</dd>
									</dl>
									
									<!-- 사업자 정보 입력 -->
									<div id="danawa-member-joinStep-company-self" style="display:none;">
										<dl class="contents_row">
											<dt><label for="joinCompany" class="input_title" title="회사명 필수 입력 항목">회사명*</label></dt>
											<dd><span class="input_wrap"><input type="text" id="danawa-member-joinStep-company-name" name="joinCompany" title="회사명 입력창" /></span></dd>
										</dl>
										<dl class="contents_row res_name">
											<dt><label for="joinBoss" class="input_title " title="대표자명 필수 입력 항목">대표자명*</label></dt>
											<dd>
												<p class="text_caution">- 장터에서 상품 판매 또는 광고 상품 구매를 원하실 경우, 대표자명이 가입자명과 일치해야 합니다.</p>
												<span class="input_wrap input_num_wrap"><input type="text" id="danawa-member-joinStep-company-boss" name="joinBoss" title="대표자명 입력창" /></span>
											</dd>
										</dl>
										<dl class="contents_row">
											<dt><label for="joinLicense1" class="input_title" title="사업자 등록 번호 필수 입력 항목">사업자등록번호*</label></dt>
											<dd>
												<span class="input_wrap input_num_wrap"><input type="text" id="danawa-member-joinStep-company-license-1" name="joinLicense1" title="사업자등록번호 앞자리 입력창" /></span> -
												<span class="input_wrap input_num_wrap"><input type="text" id="danawa-member-joinStep-company-license-2" name="joinLicense2" title="사업자등록번호 중간자리 입력창" /></span> -
												<span class="input_wrap input_num_wrap"><input type="text" id="danawa-member-joinStep-company-license-3" name="joinLicense3" title="사업자등록번호 끝자리 입력창" /></span>
											</dd>
										</dl>
										<dl class="contents_row">
											<dt><label for="joinPhone1" class="input_title" title="휴대폰 번호">휴대폰번호</label></dt>
											<dd>
												<span class="input_wrap input_num_wrap"><input type="text" name="joinPhone1" title="휴대폰 번호 앞자리 입력창"/></span> -
												<span class="input_wrap input_num_wrap"><input type="text" name="joinPhone2" title="휴대폰번호 중간자리 입력창" /></span> -
												<span class="input_wrap input_num_wrap"><input type="text" name="joinPhone3" title="휴대폰번호 끝자리 입력창" /></span>
											</dd>
										</dl>
									</div>
									<!-- //사업자 정보 입력 -->
									<div class="bottom_btn_area">
										<a href="javascript:;" id="danawa-member-joinStep-memberJoin" onclick="return checkForm();" class="btn_join_sty1" title="확인 버튼 누르면 회원가입이 완료됩니다.">확인</a>
									</div>
								</div>
							</div>
							<!--// join_box -->
						</div>
						<!--// join_contents -->
					</div>
					<!--// join_container -->
					
					<!-- footer_type1 -->
					<div class="footer_type1">
		                <div class="dnw_service_wrap">
		                    <p class="tit"><span class="blue_txt"> 서비스 이용</span>을 환영합니다.</p>
		                </div>
		                <address>Copyright&copy; <strong>danawa</strong> Co., Ltd. All Rights Reserved.</address>
		            </div>
					<!--// footer_type1 -->
				</div>
				<!--// join_member -->
			</div>
		</form>
	<script type="text/javascript">_TRK_PI="RGF";</script>
	<script src="//static.danawa.com/globaljs/static/logger_Insight_WebAnalytics.js"></script>
	
	</body>

</html>
