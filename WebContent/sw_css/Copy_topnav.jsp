<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
 <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>



<!-- HEAD ------------------------------------------------------------------------------------ -->
<!-- head가 맨 나중?나중에 나온 요소가 레이어 맨위로... ---------------------------------------->
<div class="topnav w3-card-4" id="topNav">
	<a href="Main.jsp" class="w3-baemint active"> 배달의 인종 </a>
	<!-- -------------------------------------------------------------------------- -->
	<a> <strong>${sessionScope.id }</strong> </a>
	<!-- -------------------------------------------------------------------------- -->
	<a href="../memberShop/MyPageShop.jsp">마이페이지</a>
	<!-- -------------------------------------------------------------------------- -->
	<a href="https://ceo.baemin.com/guide/detail/G73002">배민가이드</a>
	<!-- -------------------------------------------------------------------------- -->
	<a href="../util/Logout.jsp">로그아웃</a>
	<!-- -------------------------------------------------------------------------- -->
	<a href="javascript:void(0);" class="icon"
		onclick="responsiveMenuPopUp()"> <i class="fa fa-bars"></i>
	</a>
</div>

<script>
	/* Toggle between adding and removing the "responsive" class to topnav when the user clicks on the icon */
	function responsiveMenuPopUp() {
		var x = document.getElementById("topNav");
		if (x.className === "topnav w3-card-4") {
			x.className += " responsive";
		} else {
			x.className = "topnav w3-card-4";
		}
	}

	window.onresize = function() {
		var x = document.getElementById("topNav");
		x.className = "topnav w3-card-4";

	}
</script>


