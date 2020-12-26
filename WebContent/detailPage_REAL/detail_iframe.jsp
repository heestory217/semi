<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <link rel="stylesheet" href="../css/detail_chooseOp.css">

<script type="text/javascript"> 


function calcHeight(){

 //find the height of the internal page



 var the_height=

 document.getElementById('#asideIframe').contentWindow.

 document.body.scrollHeight;



 //change the height of the iframe

 document.getElementById('#asideIframe').height=

 the_height;



 //document.getElementById('the_iframe').scrolling = "no";

 document.getElementById('#asideIframe').style.overflow = "hidden";

}

//

</script>

<div class="asidePage2">


        <div id="choose"><p><b>선물선택</b></p></div>	
        
            <iframe id="asideIframe" src="detail_choose.jsp" scrolling="" style=" margin-left:-8px; width: 296px; height: 600px;"
            		name="option_redirect"></iframe>
       
</div>


