<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>


<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="<c:url value="/resources/css/jquery.mobile-1.4.5.min.css"/>">
<script src="<c:url value="/resources/javascript/jquery.min.js"/>"></script>
</head>

<body>
<div data-role="page">
		<div data-role="header" data-position="fixed" data-theme="b">
			<h1>Avaliação TI Java</h1>
 		</div>
					
					<div class="ui-body ui-body-a">
						<span style="color: blue;" id="id_span_mensagem_sucesso">${msg}</span>
						
	    <h1>Pessoa</h1>
	</div>
	
	<!-- CRIANDO O CONTEXTO ONDE VAMOS ADICIONAR OS NOSSOS COMPONENTES HTML -->
	<div class="ui-content" role="main">

		<!-- CRIANDO O AGRUPADOR -->
		<div class="ui-corner-all">	
  			<div class="ui-bar ui-bar-a">
    			<h1>OPÇÕES</h1>
  			</div>
  		
    		<!-- CRIANDO A LISTA COM AS OPÇÕES -->
			<a href="<c:url value="/pessoa/pessoaNovo"/>" class="ui-btn ui-btn-a ui-corner-all">Cadastrar</a>  
			<a href="<c:url value="/pessoa/pessoaBusca"/>" class="ui-btn ui-btn-a ui-corner-all">Buscar</a>  
			<a href="<c:url value="/pessoa/pessoaBucaApagar"/>" class="ui-btn ui-btn-a ui-corner-all">Apagar</a>  
			<a href="<c:url value="/pessoa/pessoaBucaEditar"/>" class="ui-btn ui-btn-a ui-corner-all">Editar</a>  
			    

    		
	</div>
	
	

	</div>
		
		<div data-role="footer" data-position="fixed" data-theme="b">
			<h2>Ellyson Ricardo</h2>
		</div>
	</div>

</body>
</html>
