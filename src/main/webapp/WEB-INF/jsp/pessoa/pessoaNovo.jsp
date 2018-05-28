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
<link rel="stylesheet" href="<c:url value="/resources/css/jquery-ui.css"/>">
<script src="<c:url value="/resources/javascript/jquery-ui.js"/>"></script>
</head>

<body>

	<div data-role="page">
		<div data-role="header" data-position="fixed" data-theme="b">
			<h1>Agenda</h1>

			<a href="<c:url value="/pessoa/index"/>" class="ui-btn ui-btn-a ui-corner-all ui-btn-inline ui-mini ui-btn-left ui-btn-icon-left ui-icon-carat-l">Voltar</a>
			<a href="#" onclick="$('form#form_agenda').trigger('submit')"
				class="ui-btn ui-btn-a ui-corner-all ui-btn-inline ui-mini ui-btn-right ui-btn-icon-right ui-icon-check">Salvar</a>
		</div>
		<div class="ui-content" role="main">
			<form id="form_agenda" action="<c:url value="/pessoa/pessoaSalvar"/>" method="post" data-ajax="false">
				<div class="ui-corner-all custom-corners">
					<div class="ui-bar ui-bar-a">
						<h3>Novo Registro</h3>
					</div>
					<div class="ui-body ui-body-a">
						<span style="color: blue;" id="id_span_mensagem_sucesso">${msg}</span>
						
						<label for="text-cpf">CPF:</label> 
						<input name="pessoa.cpf" id="text-cpf" type="text" maxlength="60" value="${pessoa.cpf}">
							<script>
							if($("#text-cpf") === null){
								alert("Por favor, preencha os campos corretamente.");  
								}  
							</script>
						
						<label for="text-nome">Nome:</label> 
						<input name="pessoa.nome" id="text-nome" type="text" maxlength="60" required="required">
						<script>
							if($("#text-nome") === null){
								alert("Por favor, preencha os campos corretamente.");  
								}  
							</script>
						
						<label for="text-email">E-mail:</label> 
						<input name="pessoa.email" id="text-email" type="text" maxlength="60" value="${pessoa.email}" required="required">
							<script>
							if($("#text-email") === null){
								alert("Por favor, preencha os campos corretamente.");  
								}  
							</script>
						
						 <label for="select-custom">Estado civil:</label>
				    <select name="pessoa.estadoCivil" id="select-custom ">
						    <option value="Casado" >Casado</option>
						    <option value="Solteiro">Solteiro</option>
					</select>
						
						<fieldset data-role="controlgroup">
					    <input name="pessoa.ativo" id="checkbox-ativo" type="checkbox" value="S"/>
					    <label for="checkbox-ativo">Ativo:</label>
					</fieldset>
						
						<fieldset data-role="controlgroup">
					    <legend>Sexo:</legend>
					        <input name="pessoa.sexo" id="radio-masculino" value="m" checked="checked" type="radio"/>
					        <label for="radio-masculino">Masculino</label>
					        <input name="pessoa.sexo" id="radio-feminino" value="f" type="radio"/>
					        <label for="radio-feminino">Feminino</label>
					</fieldset>
						 
						 	<label for="dataFormat">Data de Nascimento:</label> 
						<input type="text" id="dataFormat" name="pessoa.dataNascimento" />
						<script>
							$("#dataFormat").datepicker({
								dateFormat : 'dd/mm/yy'
							});
						</script>
						
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
