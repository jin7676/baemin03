<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="com.baemin.orderlist.cart.*"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@ page import = "java.util.*"%>
<%@ page import = "com.baemin.orderlist.*" %>

 
<%
//자바 구문
request.setCharacterEncoding("UTF-8");
System.out.println("------NewOrderList.jsp");
//SimpleDateFormat sdf = new SimpleDateFormat("HH:mm");

int shop_No=Integer.parseInt((String)session.getAttribute("shop_No"));
System.out.println(shop_No);
OrderListDAO orderListDAO = OrderListDAO.getInstance();
List<OrderListDTO> list = orderListDAO.getListOfCurrent(shop_No);

CartDTO cartDTO=new CartDTO();
%>
<%

for(int i=0;i<list.size();i++)
{	
	OrderListDTO orderListDTO=list.get(i);
	String k="";
	k=Order2Cart.toMsg(orderListDTO.getOrderList());
	%>
	    <!-- load  new order  -->
	<div class="w3-section">
	<div class="w3-card w3-padding">
		<!-- 상단 컨테이너 끝 -->
		<div class="w3-row">
			<!-- 왼쪽 -->
			<div class="w3-col w3-container w3-left" style="width: 150px;">
				<h1><big><strong><%=orderListDTO.getOrderDate()%></strong></big></h1>
				<input type="hidden" value="<%=orderListDTO.getNo()%>">

			</div>
			<!-- 왼쪽 끝 -->

			<!-- 오른쪽-->
			<div class="w3-col w3-container w3-right"
				style="width: 200px; padding: 0px;">
				<%
					if(orderListDTO.getStatus()==0){
				%>
				<button class="w3-button w3-blue h100"  onclick="jumunBtn(this)" data-toggle="modal" data-target="#take_over">조리버튼</button>
				<div class="count0" style="display:none;"><%=orderListDTO.getStatus() %></div>
				<%
					}else if(orderListDTO.getStatus()==1){
				%>
				<button class="w3-button w3-blue h100" onclick="baesongBtn(this)">배달출발</button>
				<div class="count1" style="display:none;"><%=orderListDTO.getStatus() %></div>
				<%
					}
				%>
				<button class="w3-button w3-yellow h100"  onClick="cancelBtn(this)" data-toggle="modal" data-target="#jumoon_calcel">주문취소</button>
			</div>
			<!-- 오른쪽-->
			<!-- 가운데 -->
			<div class="w3-rest w3-container">
				<div class="w3-row">
					<div class="w3-col">
						<strong>[메뉴 4개]</strong> &nbsp;<%=orderListDTO.getName()%>
					</div>
					<div class="w3-col">주문번호 : <%= %></div>
				</div>
				<div class="w3-row"><%=orderListDTO.getAddr() +"  "+ orderListDTO.getAddr2() %></div>
			</div>
			<!-- 가운데 끝 -->
		</div>
		<!-- 상단 컨테이너 끝 -->
		<!-- 하단 컨테이너 -->
		<div>
			<div class="w3-row w3-padding"><%=k %></div>
			<div class="w3-row w3-padding"><%=orderListDTO.getComment() %></div>
		</div>
		<!-- 하단 컨테이너 끝-->
	</div>
</div>
<!-- 접수대기 리스트 끝 -->
<%
	}//for end
%>


<script>
	// 스크립트

	function jumunBtn(e) {
		var a1 = e.parentNode.parentNode.children[0].children[0].value;
	
	}
	function baesongBtn(e) {
		var a1 = e.parentNode.parentNode.children[0].children[0].value;
		console.log(a1);
	}
	function cancelBtn(e) {
		var a1 = e.parentNode.parentNode.children[0].children[0].value;
		console.log(a1);
		
	}
</script>



