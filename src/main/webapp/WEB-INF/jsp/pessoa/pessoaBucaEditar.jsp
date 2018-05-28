<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>


<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="<c:url value="/resources/css/jquery.mobile-1.4.5.min.css"/>">
<link rel="stylesheet" href="<c:url value="/resources/css/jquery-ui.css"/>">
<script src="<c:url value="/resources/javascript/jquery-ui.js"/>"></script>
<script src="<c:url value="/resources/javascript/jquery.min.js"/>"></script>
<script	src="<c:url value="/resources/javascript/jquery.mobile-1.4.5.min.js"/>"></script>
</head>


<body>

	<div data-role="page">
		<div data-role="header" data-position="fixed" data-theme="b">
			<h1>Agenda</h1>

			<a href="<c:url value="/pessoa/index"/>" class="ui-btn ui-btn-a ui-corner-all ui-btn-inline ui-mini ui-btn-left ui-btn-icon-left ui-icon-carat-l">Voltar</a>
			<a href="#" onclick="$('form#form_agenda').trigger('submit')"
				class="ui-btn ui-btn-a ui-corner-all ui-btn-inline ui-mini ui-btn-right ui-btn-icon-right ui-icon-check">Buscar</a>
		</div>
		<div class="ui-content" role="main">
			<form id="form_agenda" action="<c:url value="/pessoa/pessoaEditar"/>" method="post" data-ajax="false">
				<div class="ui-corner-all custom-corners">
					<div class="ui-bar ui-bar-a">
						<h3>Buscar</h3>
					</div>
					
					<div class="ui-body ui-body-a">
						<span style="color: blue;" id="id_span_mensagem_sucesso">${msg}</span>
						
						<label for="cpf">CPF:</label> 
						<input name="cpf" id="cpf" type="text" maxlength="60">
						
											
					</div>
				</div>
			</form>
		</div>
		<div data-role="footer" data-position="fixed" data-theme="b">
			<h2>Ellyson Ricardo</h2>
		</div>
	</div>
</body>
</html>
