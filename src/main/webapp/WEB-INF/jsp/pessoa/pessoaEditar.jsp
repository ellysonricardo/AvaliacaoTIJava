<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
<head>

<meta name="viewport" content="width=device-width, initial-scale=1">

<link rel="stylesheet" href="<c:url value="/resources/css/jquery.mobile-1.4.5.min.css"/>">
<script src="<c:url value="/resources/javascript/jquery.min.js"/>"></script>
<script src="<c:url value="/resources/javascript/jquery.mobile-1.4.5.min.js"/>"></script>

<script type="text/javascript">
	
	$(document).ready(function(){
		
		$("input").focus(function() {
			
			$("span[style='color:red;']").text("");
			$("span[style='color:blue;']").text("");
		});
	});
	
</script>

</head>

<body>



	<!-- CRIANDO O ELEMENTO PAGE DO JQUERY MOBILE -->
	<div data-role="page" >
		
		<!-- CRIANDO O HEAD DA PÁGINA -->	
		<div data-role="header" data-position="fixed" data-theme="b">
		    <h1>Agenda</h1>
		     
		    <a href="/pessoa/index" class="ui-btn ui-btn-a ui-corner-all ui-btn-inline ui-mini ui-btn-left ui-btn-icon-left ui-icon-carat-l" data-rel="back">Voltar</a>
		  
		    <a href="#"  onclick="$('form#form_agenda').trigger('submit')"  class="ui-btn ui-btn-a ui-corner-all ui-btn-inline ui-mini ui-btn-right ui-btn-icon-right ui-icon-check">Salvar</a>
		</div>
		
		<!-- CRIANDO O CONTEXTO ONDE VAMOS ADICIONAR OS NOSSOS COMPONENTES HTML -->
		<div class="ui-content" role="main">
			
			<form id="form_agenda" action="<c:url value="/pessoa/AlterarPessoa"/>"  method="post" data-ajax="false">	
			
			<!-- CRIANDO O AGRUPADOR -->
			<div class="ui-corner-all custom-corners">	
	  			<div class="ui-bar ui-bar-a">
	    			<h3>Editar Registro</h3>
	  			</div>
	  		<div class="ui-body ui-body-a">    		
					  <c:forEach var="pessoa" items="${nomeList}">
					
					<label for="text-cpf">CPF:</label> 
						<input name="pessoa.cpf" id="text-cpf" type="text" maxlength="60" value="${pessoa.cpf}">
					
					
	 				<label for="text-nome">Nome:</label>
					<input name="pessoa.nome" id="text-nome" type="text" maxlength="60" value="${pessoa.nome}">
					
					<label for="text-email">E-mail:</label> 
						<input name="pessoa.email" id="text-email" type="text" maxlength="60" value="${pessoa.email}">
		
					<fieldset data-role="controlgroup">
					    
					    <input name="pessoa.ativo" 
					    	   id="checkbox-tem" 
					    	   type="checkbox" 
					    	   value="S"
					    	   <c:if test="${pessoa.ativo == 'S'}">checked="checked"</c:if>
					    	  />
					    <label for="checkbox-tem">Ativo</label>
					</fieldset>
					
					 <label for="select-custom">Estado civil:</label>
				    <select name="pessoa.estadoCivil" id="select-custom ">
						    <option value="Casado" >Casado</option>
						    <option value="Solteiro">Solteiro</option>
					</select>
						
						 
						
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
		
					  </c:forEach>
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
