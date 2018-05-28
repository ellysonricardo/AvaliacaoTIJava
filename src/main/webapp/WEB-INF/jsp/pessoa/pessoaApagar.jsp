<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">

<link rel="stylesheet" href="<c:url value="/resources/css/jquery.mobile-1.4.5.min.css"/>">
<script src="<c:url value="/resources/javascript/jquery.min.js"/>"></script>
<script src="<c:url value="/resources/javascript/jquery.mobile-1.4.5.min.js"/>"></script>


</head>
<body>

	<!-- CRIANDO O ELEMENTO PAGE DO JQUERY MOBILE -->
	<div data-role="page" >
		
		<!-- CRIANDO O HEAD DA PÁGINA -->	
		<div data-role="header" data-position="fixed" data-theme="b">
		    <h1>Agenda</h1>
		    <a href="<c:url value="/pessoa/index"/>" class="ui-btn ui-btn-a ui-corner-all ui-btn-inline ui-mini ui-btn-left ui-btn-icon-left ui-icon-carat-l">Voltar</a>
		  
		</div>
		
		<!-- CRIANDO O CONTEXTO ONDE VAMOS ADICIONAR OS NOSSOS COMPONENTES HTML -->
		<div class="ui-content" role="main">
		
			<ul data-role="listview" data-filter="true" data-filter-placeholder="Pessoas..." data-inset="true" data-split-icon="delete">


			    <li data-role="list-divider">Pessoas<span class="ui-li-count">${fn:length(nomeList)}</span></li>
			    
			    <c:forEach var="pessoa" items="${nomeList}">
				    <li>

				    	<a href="#">
				    		<h2>${pessoa.nome}</h2>
				    	</a>
				    	<a href="#" onclick="$('form#form_delete_${pessoa.cpf}').trigger('submit')"></a>
				    	
				    	<form id="form_delete_${pessoa.cpf}" action="<c:url value="/pessoa/deletar"/>" method="post" data-ajax="false">
				    		<input type="hidden" name="pessoa.cpf" value="${pessoa.cpf}"/>
				    	</form>
				    	
				    </li>
			    </c:forEach>
    
			</ul>
			
		</div>
		
	
		<div data-role="footer" data-position="fixed" data-theme="b">
		<h2>Ellyson Ricardo</h2>	    
		</div>
		
	
	</div>


    		
</body>
</html>