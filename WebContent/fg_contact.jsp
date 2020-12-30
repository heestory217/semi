<%@ page language="java" contentType="text/html; charset=UTF-8"
<<<<<<< HEAD
	pageEncoding="UTF-8"%>

=======
   pageEncoding="UTF-8"%>
   
>>>>>>> branch 'develop' of https://github.com/heestory217/semi.git
<!-- header 위치 -->
<%@ include file="inc/top.jsp"%>

<%@ page import="java.util.*,java.io.*"%>

<!-- WEB-INF/lib/javax.mail.jar -->
<%@ page import="javax.mail.*"%>
<%@ page import="javax.mail.internet.*"%>


<<<<<<< HEAD
<%
request.setCharacterEncoding("utf-8");
=======
<%   
   request.setCharacterEncoding("utf-8");
>>>>>>> branch 'develop' of https://github.com/heestory217/semi.git

String content = request.getParameter("content");
if (content != null) {
	////////////  메일 보내기 시작 songis
	content = new String(content.getBytes("iso-8859-1"), "UTF-8");
	String host = "smtp.gmail.com";//smtp 서버
	String subject = request.getParameter("subject");
	subject = new String(subject.getBytes("iso-8859-1"), "UTF-8");
	String from = request.getParameter("from");
	String fromName = request.getParameter("name");
	fromName = new String(fromName.getBytes("iso-8859-1"), "UTF-8");
	String to = "fundingoinfoteam@gmail.com";
	
	StringBuffer body = new StringBuffer();
	body.append(content);

<<<<<<< HEAD
	String alert_msg = "";

	try {
		// 프로퍼티 값 인스턴스 생성과 기본세션(SMTP 서버 호스트 지정)
		Properties props = new Properties();
=======
   if(content!=null){
      ////////////  메일 보내기 시작 songis
      String host = "smtp.gmail.com";//smtp 서버
      String subject = request.getParameter("subject"); 
      String from = request.getParameter("from");
      String fromName = request.getParameter("name");
      String to = "fundingoinfoteam@gmail.com"; 
      
      StringBuffer body = new StringBuffer(); 
      body.append(content);
      
      String alert_msg="";
>>>>>>> branch 'develop' of https://github.com/heestory217/semi.git

<<<<<<< HEAD
		// G-Mail SMTP 사용시
		props.put("mail.smtp.starttls.enable", "true");
		props.put("mail.transport.protocol", "smtp");
		props.put("mail.smtp.host", "smtp.gmail.com");
		props.setProperty("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
		props.put("mail.smtp.port", "465");
		//props.put("mail.smtp.user", "fundingoinfoteam");
		props.put("mail.smtp.auth", "true");

		Session mailSession = Session.getInstance(props, new javax.mail.Authenticator() {
		protected PasswordAuthentication getPasswordAuthentication() {
			return new PasswordAuthentication("fundingoinfoteam", "fuofklefkeqkcpds");
			}
		});

		Message msg = new MimeMessage(mailSession);
		//msg.setFrom(new InternetAddress(from/*,  MimeUtility.encodeText(fromName, "8859_1", "B") */));//보내는 사람 설정
		msg.setFrom(new InternetAddress(from,  MimeUtility.encodeText(fromName, "utf-8", "B")));//보내는 사람 설정

		InternetAddress[] address = {new InternetAddress(to)};

		msg.setRecipients(Message.RecipientType.TO, address);//받는 사람설정

		//msg.setSubject(subject/*MimeUtility.encodeText(subject, "8859_1", "B")*/);// 제목 설정
		msg.setSubject(MimeUtility.encodeText(subject, "utf-8", "B"));// 제목 설정

		msg.setSentDate(new java.util.Date());// 보내는 날짜 설정
		msg.setContent(body.toString(), "text/html;charset=UTF-8"); // 내용 설정 (HTML 형식)

		System.out.println(body.toString());
		Transport.send(msg); // 메일 보내기
		alert_msg = alert_msg + " 메일이 발송 되었습니다. Email has been sent successfully.";
		
		
	} catch (MessagingException ex) {
		ex.printStackTrace();
		alert_msg = alert_msg
		+ " 메일 발송에 실패 하였습니다. 관리자에게 문의하여 주십시오. Fail to email. Please ask to Info Team(760-4291) if it occurs again.";
	} catch (Exception e) {
		e.printStackTrace();
		alert_msg = alert_msg
		+ " 메일 발송에 실패 하였습니다. 관리자에게 문의하여 주십시오. Fail to email. Please ask to Info Team(760-4291) if it occurs again.";
	}

	System.out.println(alert_msg);
	response.getWriter().println("<script>alert('"+ alert_msg +"')</script>");

	/////////// 메일 보내기 끝  
}
=======
      try{
         // 프로퍼티 값 인스턴스 생성과 기본세션(SMTP 서버 호스트 지정)
         Properties props = new Properties();
         
         // G-Mail SMTP 사용시
         props.put("mail.smtp.starttls.enable","true");
         props.put("mail.transport.protocol", "smtp");
         props.put("mail.smtp.host", "smtp.gmail.com");
         props.setProperty("mail.smtp.socketFactory.class","javax.net.ssl.SSLSocketFactory");
         props.put("mail.smtp.port", "465");
         // props.put("mail.smtp.user", from);
         props.put("mail.smtp.auth", "true");
         
         Session mailSession = Session.getInstance(props,
              new javax.mail.Authenticator() {
               protected PasswordAuthentication getPasswordAuthentication() {
                  return new PasswordAuthentication("fundingoinfoteam", "fuofklefkeqkcpds");
               }
              });
         
         Message msg = new MimeMessage(mailSession);
         msg.setFrom(new InternetAddress(from, MimeUtility.encodeText(fromName,"8859_1","B")));//보내는 사람 설정
         
         InternetAddress[] address = {new InternetAddress(to)};
      
         
         msg.setRecipients(Message.RecipientType.TO, address);//받는 사람설정

         msg.setSubject(MimeUtility.encodeText(subject,"8859_1","B"));// 제목 설정
         //msg.setSubject(subject);// 제목 설정
         msg.setSentDate(new java.util.Date());// 보내는 날짜 설정
         msg.setContent(body.toString(),"text/html;charset=euc-kr"); // 내용 설정 (HTML 형식)
         
         Transport.send(msg); // 메일 보내기
         alert_msg = alert_msg + " 메일이 발송 되었습니다. Email has been sent successfully.";
      } catch ( MessagingException ex ) {
         ex.printStackTrace();
         alert_msg = alert_msg + " 메일 발송에 실패 하였습니다. 관리자에게 문의하여 주십시오. Fail to email. Please ask to Info Team(760-4291) if it occurs again.";
      } catch ( Exception e ) {
         e.printStackTrace();
         alert_msg = alert_msg + " 메일 발송에 실패 하였습니다. 관리자에게 문의하여 주십시오. Fail to email. Please ask to Info Team(760-4291) if it occurs again.";
      }
           
      System.out.println(alert_msg);
      response.getWriter().println("<script>alert('메일전송 성공!')</script>");
      /////////// 메일 보내기 끝  
   }
   
>>>>>>> branch 'develop' of https://github.com/heestory217/semi.git
%>

<script type="text/javascript"
   src="//dapi.kakao.com/v2/maps/sdk.js?appkey=de5c22ba5fabd256158cb202c3fbe747"></script>
<script type="text/javascript"
   src="//dapi.kakao.com/v2/maps/sdk.js?appkey=APIKEY&libraries=LIBRARY"></script>
<script type="text/javascript"
   src="//dapi.kakao.com/v2/maps/sdk.js?appkey=APIKEY&libraries=services,clusterer,drawing"></script>
<script>
<<<<<<< HEAD
	$(document).ready(
			function() {
				var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
				mapCenter = new kakao.maps.LatLng(37.49890258909643,
						127.0319105269556), // 지도의 중심좌표
				mapOption = {
					center : mapCenter, // 지도의 중심좌표
					level : 2
				// 지도의 확대 레벨
				};
=======
      $(document).ready(function() {
         var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
         mapCenter = new kakao.maps.LatLng(37.49890258909643, 127.0319105269556), // 지도의 중심좌표
         mapOption = {
            center : mapCenter, // 지도의 중심좌표
            level : 2
         // 지도의 확대 레벨
         };
>>>>>>> branch 'develop' of https://github.com/heestory217/semi.git

<<<<<<< HEAD
				var map = new kakao.maps.Map(mapContainer, mapOption);
=======
         var map = new kakao.maps.Map(mapContainer, mapOption);
         
         // 마커가 표시될 위치입니다 
         var markerPosition  = new kakao.maps.LatLng(37.49890258909643, 127.0319105269556); 
>>>>>>> branch 'develop' of https://github.com/heestory217/semi.git

<<<<<<< HEAD
				// 마커가 표시될 위치입니다 
				var markerPosition = new kakao.maps.LatLng(37.49890258909643,
						127.0319105269556);

				// 마커를 생성합니다
				var marker = new kakao.maps.Marker({
					position : markerPosition
				});

				// 마커가 지도 위에 표시되도록 설정합니다
				marker.setMap(map);

				// 아래 코드는 지도 위의 마커를 제거하는 코드입니다
				// marker.setMap(null);

				// 일반 지도와 스카이뷰로 지도 타입을 전환할 수 있는 지도타입 컨트롤을 생성합니다
				var mapTypeControl = new kakao.maps.MapTypeControl();

				// 지도에 컨트롤을 추가해야 지도위에 표시됩니다
				// kakao.maps.ControlPosition은 컨트롤이 표시될 위치를 정의하는데 TOPRIGHT는 오른쪽 위를 의미합니다
				map.addControl(mapTypeControl,
						kakao.maps.ControlPosition.TOPRIGHT);

				// 지도 확대 축소를 제어할 수 있는  줌 컨트롤을 생성합니다
				var zoomControl = new kakao.maps.ZoomControl();
				map.addControl(zoomControl, kakao.maps.ControlPosition.RIGHT);
			});
</script>
=======
         // 마커를 생성합니다
         var marker = new kakao.maps.Marker({
             position: markerPosition
         });

         // 마커가 지도 위에 표시되도록 설정합니다
         marker.setMap(map);

         // 아래 코드는 지도 위의 마커를 제거하는 코드입니다
         // marker.setMap(null);
         
         // 일반 지도와 스카이뷰로 지도 타입을 전환할 수 있는 지도타입 컨트롤을 생성합니다
         var mapTypeControl = new kakao.maps.MapTypeControl();

         // 지도에 컨트롤을 추가해야 지도위에 표시됩니다
         // kakao.maps.ControlPosition은 컨트롤이 표시될 위치를 정의하는데 TOPRIGHT는 오른쪽 위를 의미합니다
         map.addControl(mapTypeControl, kakao.maps.ControlPosition.TOPRIGHT);

         // 지도 확대 축소를 제어할 수 있는  줌 컨트롤을 생성합니다
         var zoomControl = new kakao.maps.ZoomControl();
         map.addControl(zoomControl, kakao.maps.ControlPosition.RIGHT);
      });
   </script>
>>>>>>> branch 'develop' of https://github.com/heestory217/semi.git


<div class="page-title sp"
   style="background-image: 
   url(<c:url value='/img/contact-bg.jpg' />)">
   <div class="container text-center">
      <h2>펀딩고에 문의하기</h2>
      <p style="color: #000;">이메일로 문의를 남겨주세요. 영업일 기준 2일 내에 답변 드리겠습니다.</p>
   </div>
</div>
<div class="contact-area sp">
   <div class="container">
      <div class="row">
         <div class="col-md-5 contact-info">
            <div class="single-info">
               <h5>대표전화</h5>
               <p>02-8282-9999</p>
            </div>
            <div class="single-info">
               <h5>이메일</h5>
               <p>fundingoinfoteam@google.com</p>
            </div>
            <div class="single-info">
               <h5>주소</h5>
               <p>서울시 펀딩구 고로 100, 펀딩캐슬 펜트하우스</p>
            </div>
            <div class="single-info">
               <h5>소셜미디어</h5>
               <p>
                  <a href="#" class="fa fa-facebook"></a> <a href="#"
                     class="fa fa-twitter"></a> <a href="#" class="fa fa-linkedin"></a>
                  <a href="#" class="fa fa-pinterest"></a>
               </p>
            </div>
         </div>
         <div class="col-md-7">
            <form action="fg_contact.jsp" class="contact-form" method="post">
               <div class="row">
                  <div class="col-lg-6">
                     <input type="text" placeholder="보내는사람" name="name">
                  </div>
                  <div class="col-lg-6">
                     <input type="email" placeholder="이메일 주소" name="email">
                  </div>
                  <div class="col-lg-12">
                     <input type="text" placeholder="제목" name="subject">
                  </div>
                  <div class="col-lg-12">
                     <textarea placeholder="내용" name="content"></textarea>
                  </div>
                  <div class="col-lg-12">
                     <input class="button" type="submit" value="전송">
                  </div>
               </div>
            </form>
         </div>
      </div>
   </div>
</div>
<div id="map" style="width: 100%; height: 400px;"></div>


<!-- footer위치 -->
<%@ include file="inc/bottom.jsp"%>