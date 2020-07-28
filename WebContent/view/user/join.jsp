<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<% request.setCharacterEncoding("UTF-8");%>
<% response.setContentType("text/html charset=UTF-8");%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>

	<style type="text/css">
		
		body {
			text-align: center;
		}
		
		#addr {
			width: 70px;
		}
		
		#phone {
			width: 60px;
		}
		table {
			margin-left: auto;
			margin-right: auto;
		}
		#id, #nick, #pw, #pwchk, #email, #addr_detail {
			width: 200px;
		} 
		td {
			text-align: left;
			padding-bottom: 10px;
		} 
		.asdf {
			padding: 0px;
		}
	
	</style>
</head>
<body>
<%@ include file="../form/header.jsp" %>
<br>
<br>
<br>
	<div>
	<h1>회원 가입</h1>
		<table>
			<tr>
				<td class="col">아이디 : </td><td><input type="text" id="id" placeholder="아이디를 입력해 주세요"></td><td><input type="button" value="중복확인" onclick="location.href='#'"></td>
			</tr>
			<tr>
				<td class="col">닉네임 : </td><td><input type="text" id="nick" placeholder="닉네임을 입력해 주세요"></td>
			</tr>
			<tr>
				<td class="col">비밀번호 : </td><td><input type="password" id="pw" placeholder="비밀번호를 입력해 주세요"></td>
			</tr>
			<tr>
				<td class="col">비밀번호<br> 확인 : </td><td> <input type="password" id="pwchk" placeholder="비밀번호를 다시 입력해 주세요"></td>
			</tr>
			<tr>
				<td class="col">이메일 : </td> <td> <input type="text" id="email" placeholder="이메일을 입력해 주세요"></td><td><input type="button" value="본인인증" onclick=""></td>
			</tr>
			<tr>
				<td class="col" class="asdf">주소 : </td> <td class="asdf"> <input type="text" id="addr" readonly="readonly"> - <input type="text" id="addr" readonly="readonly"></td><td class="asdf"><input type="button" value="우편번호찾기"></td>
			</tr>
			<tr>
				<td></td><td colspan="2"><input type="text" id="addr_detail" placeholder="상세주소를 입력해 주세요"></td>	
			</tr>
			<tr>
				<td class="col">전화번호 : </td> <td colspan="2"> <input type="text" id="phone"> - <input type="text" id="phone"> - <input type="text" id="phone"></td>
			</tr>
		</table>
		<input type="button" value="가입하기">
	</div>
	<br>
	<br>
	<br>
	<br>
<%@ include file="../form/footer.jsp" %>

</body>
</html>	