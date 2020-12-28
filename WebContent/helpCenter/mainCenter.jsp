<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>펀딩고 :: FUNDINGO</title>

<!-- Required CSS files -->
<link href="https://fonts.googleapis.com/css?family=Roboto:300,300i,400,400i,500,500i,700,700i" rel="stylesheet">
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/owl.carousel.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/barfiller.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/animate.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/font-awesome.min.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/bootstrap.min.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/slicknav.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/main.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/main_footer.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/top.css">

<!-- Spoca Han Sans 폰트 -->
<link href='//spoqa.github.io/spoqa-han-sans/css/SpoqaHanSans-kr.css'
	rel='stylesheet' type='text/css'>
<link href='//spoqa.github.io/spoqa-han-sans/css/SpoqaHanSans-jp.css'
	rel='stylesheet' type='text/css'>

</head>

<body>
	<header class="header-wrap">

		<div class="container top_container">
			<div class="row">
				<div class="nav-column left-nav" style="padding-left:30px;">
					<div class="logo-column">
						<a href="<%=request.getContextPath()%>/mainArticle.jsp"
							class="f_logo"> <img
							src="<%=request.getContextPath()%>/img/topLogo.png"
							alt="로고 이미지">
						</a>
						<nav id="menu" class="d-lg-block right-nav-detail">
							<a
								href="<%=request.getContextPath()%>/helpCenter/mainCenter.jsp">
								<span>헬프센터</span>
							</a>
						</nav>
					</div>
				</div>
				<div class="nav-column" style="margin-left: 65%;">
					<nav id="menu" class="d-lg-block right-nav-detail"> 
						</span> <a href="<%=request.getContextPath()%>/fg_contact.jsp"
							class="login"> <span>1:1 문의하기</span>
						</a>
					</nav>
				</div>
			</div>
		</div>
	</header>
<body>
	<!-- 타이틀 시작 -->
	<div class="page-title sp"
		style="background-image: url(assets/img/page-title.jpg)">
		<div class="container text-center">
			<h2>약관 및 정책</h2>
			<p>
				펀딩고의 약관 및 정책 정보를 담은 페이지입니다.<br>상세 문의는 1:1 문의하기를 이용해주세요.
			</p>
		</div>
	</div>
	<!-- 타이틀 끝 -->

	<!-- 약관1 시작 -->
	<div class="tabs-area spb">
		<div class="container">
			<ul class="nav tabs-nav" id="pills-tab" role="tablist">
				<li class="nav-item"><a class="nav-link active"
					id="pills-home-tab" data-toggle="pill" href="#mission"> <i
						class="fa fa-puzzle-piece"></i> <span>이용약관</span>
				</a></li>
				<li class="nav-item"><a class="nav-link" id="pills-profile-tab"
					data-toggle="pill" href="#vision"> <i class="fa fa-binoculars"></i>
						<span>개인정보 처리방침</span>
				</a></li>
				<li class="nav-item"><a class="nav-link" id="pills-profile-tab"
					data-toggle="pill" href="#funds"> <i class="fa fa-pie-chart"></i>
						<span>공개검토 기준</span>
				</a></li>
				<li class="nav-item"><a class="nav-link" id="pills-profile-tab"
					data-toggle="pill" href="#history"> <i class="fa fa-qrcode"></i>
						<span>프로젝트 선정 기준</span>
				</a></li>

			</ul>
			<div class="tab-content" id="pills-tabContent">
				<div class="tab-pane fade show active" id="mission" role="tabpanel">
					<div class="row">
						<div class="col-md-6">
							<p>이용약관 왼</p>
						</div>
						<div class="col-md-6">
							<p>이용약관 오</p>
						</div>
					</div>
				</div>
				<div class="tab-pane fade" id="vision" role="tabpanel">
					<div class="row">
						<div class="col-md-6">
							<p>개인정보처리방침 왼</p>
						</div>
						<div class="col-md-6">
							<p>개인정보처리방침 오.</p>
						</div>
					</div>
				</div>
				<div class="tab-pane fade" id="funds" role="tabpanel">
					<div class="row">
						<div class="container">
							<h1>프로젝트 공개검토 기준</h1>
							<p>시행일: 2020. 8. 3.</p>
							<p>&nbsp;</p>
							<h3>제1조 목적</h3>
							<p>펀딩고에서 진행되는 모든 프로젝트는 이용약관에 따라, 모금상의 신뢰와 안전을 위해 공개되기 전에 펀딩고
								커뮤니티 팀(이하 ‘운영자’)의 심사를 거칩니다. 이 기준은 창작자가 작성한 프로젝트를 운영자가 심사하는
								‘공개검토’ 절차상 승인 및 반려 요건을 규정하기 위해 작성되었습니다.</p>
							<p>&nbsp;</p>
							<h3>제2조 용어의 정의</h3>
							<p>① 이 기준에서 사용하는 용어의 뜻은 다음과 같습니다.</p>
							<ol style="margin-left: 20px;">
								<li>‘공개검토’란 창작자의 프로젝트를 운영자가 검수·심사하여 승인 또는 반려하는 것을 말합니다.</li>
								<li>‘승인’이란 프로젝트가 공개검토를 통과하여 모금을 진행할 수 있게 된 상태를 뜻합니다.</li>
								<li>‘재검토’란 창작자가 수정하거나 보완한 프로젝트를 다시 공개검토하는 것을 말합니다.</li>
								<li>‘반려’란 프로젝트가 공개검토 기준에 맞지 않아 모금을 진행할 수 없다고 판단하는 것을 뜻합니다.</li>
							</ol>
							<p>② 본 기준에서는 본 조에서 정한 용어가 우선적으로 적용되며, 본 조에서 정의되지 않은 용어는 텀블벅
								이용약관 및 관련 법령·관습에 따릅니다.</p>
							<p>&nbsp;</p>
							<h3>제3조 공개검토 절차</h3>
							<p>
								① 창작자는 ‘<a
									href="<%=request.getContextPath()%>/projectManager/projectUpload.jsp">프로젝트
									올리기</a>’를 통해 직접 프로젝트 내용을 작성하고 필수 서류를 제출하여야 하며, 작성이 완료되었을 때 공개검토를
								요청할 수 있습니다.
							</p>
							<p>② 내용이 모두 작성되지 않았거나, 보완 요청 사항을 반영하지 않은 채로 다시 검토를 요청하는 경우
								요청이 반려될 수 있습니다.</p>
							<p>③ 운영자는 창작자가 작성한 프로젝트 내용과 제출한 자료를 검토하여 승인 요건을 갖추지 못한 경우 수정을
								요청하거나 프로젝트 공개를 반려할 수 있습니다.</p>
							<p>④ 공개검토 과정상 운영자와 창작자 간의 소통은 창작자 계정에 등록된 이메일을 통해 이루어지며, 이메일
								소통이 불가한 경우에는 공개검토 진행이 불가합니다.</p>
							<p>⑤ 창작자가 공개검토 과정에서 심사 요건에 위배되는 사항을 숨기거나 사실과 다른 내용을 기재하는 경우
								공개검토 승인이 취소될 수 있습니다.</p>
							<p>&nbsp;</p>
							<h3>제4조 프로젝트 모금 목적</h3>
							<p>① 프로젝트는 기존에 없던 작품, 제품, 디지털 콘텐츠, 활동, 행사 등을 제작하고 실현시키기 위한
								활동으로서 뚜렷한 완료의 기준과 예상 결과물이 있어야 합니다.</p>
							<p>② 기존의 제품·콘텐츠를 추가 제작하거나 단순히 복제, 수집, 조립, 소분, 재포장하여 제공하기 위한
								프로젝트는 진행할 수 없습니다. 단, 기존 제품·콘텐츠를 기반으로 고유한 기획과 독창적인 제작 과정 등을 통해
								새로운 제품·콘텐츠로 만들고자 하는 경우에는 진행이 가능합니다.</p>
							<p>&nbsp;</p>
							<h3>제5조 예산 및 제작·전달 계획</h3>
							<p>① 프로젝트가 현재 어느 단계까지 준비되었는지 사실대로 기재해야 하며, 아직 만들어지지 않은 결과물이
								마치 이미 존재하는 것처럼 오인될 수 있는 표현을 사용해서는 안 됩니다.</p>
							<p>② 제작 과정이 길고 복잡한 프로젝트인 경우 운영자는 구동이나 체험이 가능한 가제품·샘플 제작 여부
								확인을 요청할 수 있습니다.</p>
							<p>③ 만들고자 하는 결과물의 예상되는 사양과 견본 이미지, 영상, 음원 등을 기재하여 후원자가 상세한
								내용을 가늠할 수 있도록 해야 합니다.</p>
							<p>④ 앞으로의 예상 제작 일정을 중간 단계를 포함하여 구체적인 날짜로 기재해야 합니다.</p>
							<p>⑤ 제작에 필요한 예산을 사실대로 기재하여야 하며, 이미 투입된 자금을 마치 앞으로 필요한 예산인 것처럼
								기재하거나 프로젝트의 제작 및 실현과 무관한 내용을 기재해서는 안 됩니다.</p>
							<p>⑥ 제작이 이미 되었거나, 펀딩 기간 동안 제작을 모두 완료할 계획인 경우 제작비를 선모금하는 목적이
								분명하지 않으므로 프로젝트를 진행할 수 없습니다.</p>
							<p>⑦ 후원자에게 선물을 전달할 방법(배송, 현장수령, 텀블벅 메시지 등)을 명시해야 하며, 선물 수령을
								위해 추후 후원금 외 별도 비용이나 불필요한 타서비스 가입, 개인정보 제공 등을 요구할 수 없습니다.</p>
							<p>⑧ 프로젝트의 계획에 불확실한 사항이나 위험 요소가 있는 경우 이를 고지하고, 이로 인해 진행에 차질이
								발생할 경우 대처 방안을 기재해야 합니다.</p>
							<p>⑨ 선물 전달 과정에서 파손이나 불량이 발생할 경우를 위한 기준 및 대처방안을 기재해야 합니다.
								참가권이나 사용권 형태의 선물이 있는 경우 타인 양도 가부 등 사용범위 등 선물 전달 및 사용에 관한 정책을
								기재해야 합니다.</p>
							<p>&nbsp;</p>
							<h3>제6조 창작자 신뢰도</h3>
							<p>① 프로젝트를 실제로 진행하는 개인 또는 사업자가 프로젝트를 작성하고 관리해야 하며 다음과 같이 인증 및
								서류 제출을 완료해야 합니다.</p>
							<ol style="margin-left: 20px;">
								<li>(개인인 경우) 만 19세 이상의 본인인증 및 신분증 사본 제출</li>
								<li>(사업자인 경우) 대표자 또는 사업자에 속한 담당자의 본인인증 및 사업자등록증 제출</li>
								<li>한국에서 개설된, 창작자 본인 명의의 입금 가능한 은행계좌 등록</li>
								<li>연락 가능한 한국 통신사의 핸드폰 번호 등록</li>
							</ol>
							<p>② 프로젝트를 여러 주체가 공동으로 기획하였거나 제작·관리에 여러 주체가 참여하는 경우, 계정에 등록된
								창작자가 프로젝트와 후원자에 대한 모든 책임을 지며 각 참여자의 참여 범위를 프로젝트에 분명하게 기재해야 합니다.</p>

							<p>③ 개인 또는 개인사업자는 동시에 1개의 계정으로만 프로젝트를 진행할 수 있습니다. 법인사업자 또는
								단체는 최대 5개의 계정으로 프로젝트를 진행할 수 있으며, 복수 계정 운영시 각 계정에 다른 담당자를 등록하여야
								합니다.</p>
							<p>④ 텀블벅 또는 타 크라우드펀딩 플랫폼에서 앞서 진행한 프로젝트가 있는 창작자는 다음과 같은 경우 새
								프로젝트 진행이 제한됩니다. 본 항의 진행 제한은 개인·사업자가 아닌 계정 단위로 이루어집니다.</p>
							<ol style="margin-left: 20px;">
								<li>펀딩이 성사된 첫 프로젝트가 아직 선물 전달을 완수하기 전인 경우 (단, 일부 후원자만 선물 수령
									포기 등 부득이한 사유로 전달하지 못한 경우는 완수한 것으로 간주)</li>
								<li>앞서 진행한 프로젝트의 선물 전달이 지연되고 있거나 해결되지 않은 분쟁이 있는 경우</li>
								<li>현재 2개 이상의 프로젝트를 동시 진행하고 있는 경우 (단, 텀블벅과의 제휴를 통해 다수의
									프로젝트를 동시에 진행해야 할 필요성이 인정되는 경우는 예외)</li>
							</ol>
							<p>⑤ 프로젝트에 관한 중대한 논란 또는 법적 분쟁 중이거나 약관 위반으로 이용 정지 중인 창작자는 새로운
								프로젝트 진행이 제한됩니다. 본 항의 진행 제한은 창작자에 해당하는 개인·사업자가 보유한 모든 계정에 적용됩니다.
							</p>
							<p>⑥ 동일한 모금 목적으로 여러 플랫폼(국내·해외 무관)에서 동시에 프로젝트를 진행하거나, 외부 모금(계좌
								입금 유도 등)을 병행할 수 없습니다.</p>
							<p>&nbsp;</p>
							<h3>제7조 선물 제공 불가 항목</h3>
							<p>① 아래와 같은 선물은 텀블벅의 취지와 상이하여 제공을 제한합니다.</p>
							<ol style="margin-left: 20px;">
								<li>시중에 판매·유통되었던 제품·콘텐츠 (국내·해외 무관, 이전 펀딩을 통해 제작이 완료된 재고 포함)
								</li>
								<li>수익성 항목 (현금, 주식, 지분, 복권, 사이버머니, 상품권 등)</li>
								<li>추첨을 통해서만 선물을 받을 수 있는 자격</li>
							</ol>
							<p>② 아래와 같은 선물은 커뮤니티의 안전과 현행법 준수를 위해 제공을 제한합니다.</p>
							<ol style="margin-left: 20px;">
								<li>성인 인증이 필요한 성인용 제품 또는 콘텐츠</li>
								<li>무기류, 군복 및 군용장구, 경찰제복 및 장비, 라이터 등 위험 품목</li>
							</ol>
							<p>③ 본 조의 제한은 각 항목을 직접 제공이 아닌 쿠폰이나 추후 지급권과 같은 형태로 제공하는 경우 또는
								프로젝트의 공개검토 이후에 선물을 추가하는 경우 등에도 동일하게 적용됩니다.</p>
							<p>&nbsp;</p>
							<h3>제8조 카테고리·품목별 확인 사항</h3>

							<p>① 프로젝트의 카테고리 및 제공 선물의 품목에 따라 운영자가 사이트에 고지한 카테고리·품목별 확인 사항을
								충족해야 합니다.</p>
							<p>② 카테고리·품목별 확인 사항은 관련 법·제도 개정 등 필요에 따라 수시로 변경될 수 있습니다.</p>
							<p>&nbsp;</p>
							<h3>제9조 콘텐츠 준수 사항</h3>


							<p>① 텀블벅 커뮤니티 운영원칙에 의해 금지된 콘텐츠가 포함된 프로젝트는 진행할 수 없습니다.</p>
							<p>② 프로젝트에 사용된 이미지나 텍스트 서식에 관해 운영자가 사이트에 고지한 프로젝트 스타일 가이드를
								준수하여야 하며, 이용자의 사용성 또는 가독성을 지나치게 저해하거나 텀블벅 플랫폼 상의 일관성을 훼손할 여지가 있는
								내용이 있을 경우 운영자는 수정을 요청할 수 있습니다.</p>
							<p>③ ‘판매’, ‘구매’, ‘기부’ 등 제작 비용 모금이라는 펀딩의 취지와 상이한 표현을 사용할 수
								없습니다. 선물 카드에는 최소후원금, 배송비, 얼리버드 혜택을 제외한 가격 혜택을 기재할 수 없습니다.</p>
							<p>④ 프로젝트의 창작 분야 또는 주제와 가장 관련성이 높은 카테고리를 선택해야 하며, 검색용 태그나
								프로젝트 요약 등에 프로젝트와 무관한 내용을 기재할 수 없습니다. 카테고리나 검색용 태그는 운영자에 의해 필요에
								따라 수정될 수 있습니다.</p>
							<p>&nbsp;</p>


							<h3>제10조 후원자 개인정보 보호</h3>
							<p>① 후원자 대상 공지나 문의 처리 등의 소통을 위해 텀블벅 커뮤니티와 메시지 기능을 우선적으로 사용하여야
								하며, 외부 채널을 주된 문의처로 기재할 수 없습니다.</p>
							<p>② 후원자의 배송정보와 연락처는 텀블벅 시스템을 통해 개인정보 제공 동의를 거쳐 수집된 배송정보와
								연락처를 사용하여야 하며, 부득이한 사유 없이 별도의 배송정보를 수집해는 안 됩니다.</p>
							<p>③ 선물 이용 코드나 디지털 파일 링크 전달 등을 위해서는 텀블벅 메시지, 커뮤니티, 메일 보내기 기능을
								우선적으로 사용해야 하며, 부득이한 사유 없이 후원자의 이메일 주소를 수집해서는 안 됩니다.</p>

							<h4>부칙</h4>
							<p>본 기준은 프로젝트의 공개검토 요청일을 기준으로 적용되며 2020년 8월 3일부터 시행됩니다.</p>
						</div>
					</div>
				</div>
				<div class="tab-pane fade" id="history" role="tabpanel">
					<div class="row">
						<div class="col-md-6">
							<p>프로젝트 선정기준 왼</p>
						</div>
						<div class="col-md-6">
							<p>프로젝트 선정기준 오</p>
						</div>
					</div>
				</div>
			</div>

		</div>
	</div>
	<!-- 약관1 끝 -->

	<!-- 약관2 시작 -->
	<div class="service-area bg2 sp" style="margin-bottom: 5%">
		<div class="container">
			<div class="row">

				<div class="col-lg-4 col-md-6 single-service">
					<div class="inner">
						<div class="title">
							<div class="icon">
								<i class="fa fa-bullhorn"></i>
							</div>
							<h4>공지사항</h4>
						</div>
						<div class="content">
							<p><a href="">펀딩고의 새로운 소식을 전달드립니다.<br>최신 공지사항을 보러가려면 클릭하세요!</a></p>
						</div>
					</div>
				</div>
				<div class="col-lg-4 col-md-6 single-service">
					<div class="inner">
						<div class="title">
							<div class="icon">
								<i class="fa fa-magic"></i>
							</div>
							<h4>창작자 가이드</h4>
						</div>
						<div class="content">
							<p>
								<a href="https://www.notion.so/105a1cf14fc2461c82a65c9bf8279ee5">오늘의
									창작자님을 위해 준비한 상세가이드입니다.<br>클릭 시 상세가이드 페이지로 넘어갑니다.
								</a>
							</p>
						</div>
					</div>
				</div>
				<div class="col-lg-4 col-md-6 single-service">
					<div class="inner">
						<div class="title">
							<div class="icon">
								<i class="fa fa-bar-chart"></i>
							</div>
							<h4>수수료 정책</h4>
						</div>
						<div class="content">
							<p><a href="<%=request.getContextPath()%>/feeAndFundingPolicy.jsp">펀딩고의 '이용 수수료' 그리고 '후원금 정산'에 대한 모든 정보를 알려드릴게요</a></p>
						</div>
					</div>
				</div>
				<!-- 	<div class="col-lg-4 col-md-6 single-service">
					<div class="inner">
						<div class="title">
							<div class="icon">
								<i class="fa fa-film"></i>
							</div>
							<h4>Video Making</h4>
						</div>
						<div class="content">
							<p>Pellentesque habitant morbi tristique senectus et netus et
								malesuada fames.</p>
						</div>
					</div>
				</div>
				<div class="col-lg-4 col-md-6 single-service">
					<div class="inner">
						<div class="title">
							<div class="icon">
								<i class="fa fa-camera"></i>
							</div>
							<h4>Photography</h4>
						</div>
						<div class="content">
							<p>Pellentesque habitant morbi tristique senectus et netus et
								malesuada fames.</p>
						</div>
					</div>
				</div>
				<div class="col-lg-4 col-md-6 single-service">
					<div class="inner">
						<div class="title">
							<div class="icon">
								<i class="fa fa-music"></i>
							</div>
							<h4>Music Composing</h4>
						</div>
						<div class="content">
							<p>Pellentesque habitant morbi tristique senectus et netus et
								malesuada fames.</p>
						</div>
					</div>
				</div> -->
			</div>
		</div>
	</div>
	<!-- 약관2 끝 -->

	<!-- 스킬 시작 -->
	<!-- 	<div class="skill-area spb">
		<div class="container">
			<div class="row">
				<div class="col-md-4">
					<div class="skill-title">
						<h2>Our skills</h2>
						<p>Lorem ipsum dolor sit amet conse</p>
						<a href="#" class="button">See our work</a>
					</div>
				</div>
				<div class="col-md-8">
					<div class="row">
						<div class="col-sm-6 single-skill">
							<h4>HTML</h4>
							<div class="barfiller">
								<span class="tip"></span> <span class="fill"
									data-percentage="50"></span>
							</div>
						</div>
						<div class="col-sm-6 single-skill">
							<h4>PHP</h4>
							<div class="barfiller">
								<span class="tip"></span> <span class="fill"
									data-percentage="50"></span>
							</div>
						</div>
						<div class="col-sm-6 single-skill">
							<h4>JavaScript</h4>
							<div class="barfiller">
								<span class="tip"></span> <span class="fill"
									data-percentage="50"></span>
							</div>
						</div>
						<div class="col-sm-6 single-skill">
							<h4>CSS</h4>
							<div class="barfiller">
								<span class="tip"></span> <span class="fill"
									data-percentage="50"></span>
							</div>
						</div>
						<div class="col-sm-6 single-skill">
							<h4>AJAX</h4>
							<div class="barfiller">
								<span class="tip"></span> <span class="fill"
									data-percentage="50"></span>
							</div>
						</div>
						<div class="col-sm-6 single-skill">
							<h4>Database</h4>
							<div class="barfiller">
								<span class="tip"></span> <span class="fill"
									data-percentage="50"></span>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div> -->
	<!-- 스킬 끝 -->
	<footer>
		<%@ include file="../inc/bottom.jsp"%>
	</footer>



	</div>

	<!--Required JS files-->
	<script
		src="<%=request.getContextPath()%>/assets/js/jquery-2.2.4.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/assets/js/vendor/popper.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/assets/js/vendor/bootstrap.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/assets/js/vendor/owl.carousel.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/assets/js/vendor/isotope.pkgd.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/assets/js/vendor/jquery.barfiller.js"></script>
	<script
		src="<%=request.getContextPath()%>/assets/js/vendor/loopcounter.js"></script>
	<script
		src="<%=request.getContextPath()%>/assets/js/vendor/slicknav.min.js"></script>
	<script src="<%=request.getContextPath()%>/assets/js/active.js"></script>

</body>

</html>

