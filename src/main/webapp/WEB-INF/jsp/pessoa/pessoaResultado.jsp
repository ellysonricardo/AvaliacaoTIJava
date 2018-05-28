<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>


<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="<c:url value="/resources/css/jquery.mobile-1.4.5.min.css"/>">
<script src="<c:url value="/resources/javascript/jquery.min.js"/>"></script>
<script	src="<c:url value="/resources/javascript/jquery.mobile-1.4.5.min.js"/>"></script>
</head>

<body>

	<div data-role="page">
		<div data-role="header" data-position="fixed" data-theme="b">
			<h1>Agenda</h1>
	</div>
	

		
						<c:forEach items="${nomeList}" var="pessoa">
						${pessoa.nome} - ${pessoa.dataNascimento}
						<br />
						</c:forEach>
				</div>
		<div data-role="footer" data-position="fixed" data-theme="b">
			<h2>Ellyson Ricardo</h2>
		</div>
</body>
</html>
