<%@page import="com.mytf.common.PagingVO"%>
<%@page import="com.mytf.post.model.postVO"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

<%
	//뷰페이지
	List<postVO> list = (List<postVO>)request.getAttribute("list");

	PagingVO pageVo = (PagingVO)request.getAttribute("pageVo");
   


    //3.
    SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
%>
<!DOCTYPE HTML>
<html lang="ko">
<head>
<title>자유게시판 글 목록 - 허브몰</title>
<meta charset="utf-8">
<link rel="stylesheet" type="text/css" href="../css/mainstyle.css" />
<link rel="stylesheet" type="text/css" href="../css/clear.css" />
<link rel="stylesheet" type="text/css" href="../css/formLayout.css" />
<link rel="stylesheet" type="text/css" href="../css/mystyle.css" />

<script type="text/javascript" src="../js/jquery-3.5.1.min.js"></script>
<script type="text/javascript">   
   $(function(){
      //gt(0) 등 사용가능
      $('.divList table.box2 tbody tr').hover(function(){
         $(this).css('background', 'rgb(224, 240, 255)');
      }, function(){
         $(this).css('background', '');
      });
   });
   
</script>

<style type="text/css">
   body{
      padding:5px;
      margin:5px;
    }   
</style>   
</head>   
<body>
<h2>자유게시판</h2>
 
<div class="divList">
<table class="box2"
       summary="기본 게시판에 관한 표로써, 번호, 제목, 작성자, 작성일, 조회수에 대한 정보를 제공합니다.">
   <caption>기본 게시판</caption>
   <colgroup>
      <col style="width:10%;" />
      <col style="width:50%;" />
      <col style="width:15%;" />
      <col style="width:15%;" />
      <col style="width:10%;" />      
   </colgroup>
   <thead>
     <tr>
       <th scope="col">번호</th>
       <th scope="col">제목</th>
       <th scope="col">작성자</th>
       <th scope="col">작성일</th>
       <th scope="col">프로젝트 번호</th>
     </tr>
   </thead> 
   <tbody>  
   <%
   //post list
     	if(list==null || list.isEmpty()){
     %>
   		<tr>
   			<td colspan="5">데이터가 존재하지 않습니다.</td>
   		</tr>
   <%
   	}else{
   %>
   
	     <!--게시판 내용 반복문 시작  -->   
	     <%
   	     	int curPos = pageVo.getCurPos();
   	     	     int num = pageVo.getNum();
   	     	     
   	     	     for(int i=0; i<pageVo.getPageSize(); i++){
   	     	    	 if(pageVo.getNum()<1) break;
   	     	    	               
   	     	            postVO vo=list.get(curPos++);
   	     	            num--;
   	     %>   
	         <tr style="text-align:center">
	            <td><%=vo.getPostNo()%></td>
	            <td><%=vo.getTitle()%></td>
	            <td>${name }</td>
	            <td><%=vo.getProjectNo()%></td>
	            <td><%=sdf.format(vo.getPostDate())%></td>
	         </tr> 
	     <%}//for
     }//if%>
     <!--반복처리 끝  -->
     </tbody>
</table>      
</div>
<%-- <div class="divPage">
   <!-- 페이지 번호 추가 -->      
   <!-- 이전 블럭으로 이동 -->    
   <%if(pageVo.getFirstPage()>1){ %>
   <a href="<%=request.getContextPath() %>/post/list_all.do?currentPage=<%=pageVo.getFirstPage()-1%>">
   		<img src="../images/first.JPG" alt = "이전블럭으로 이동">
   	</a>
    <%}//if %>          
   <!-- [1][2][3][4][5][6][7][8][9][10] -->
   <%
   		for(int i=pageVo.getFirstPage(); i<=pageVo.getLastPage(); i++){
   			if(i>pageVo.getTotalPage()) break; 
   			
   			if(i==pageVo.getCurrentPage()){%>
   				<span style="color:blue; font-weight:bold"><%=i %></span>
   			<%}else{ %>
   			<a href="<%=request.getContextPath() %>/post/list_all.do?currentPage=<%=i %>">[<%=i %>]</a>
   		<%}//if %>
   	<% 	}//for %>
   	
   	<!-- 다음 블럭으로 이동 -->
    <%if(pageVo.getLastPage()<pageVo.getTotalPage()){ %>
   <a href="<%=request.getContextPath() %>/post/list.do?currentPage=<%=pageVo.getLastPage()+1%>">
   		<img src="../images/last.JPG" alt = "다음블럭으로 이동">
   	</a>  
   	<%} %>	
   	
   <!--  페이지 번호 끝 -->
</div> --%>


<div class="divBtn">
    <a href='<%=request.getContextPath() %>/post/write_all.do' >글쓰기</a>
</div>

</body>
</html>
