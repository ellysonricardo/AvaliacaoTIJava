<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>


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
	
<div class="ui-content" role="main">
		
			<ul data-role="listview" data-filter="true" data-filter-placeholder="Contatos..." data-inset="true" data-split-icon="delete">


			    <li data-role="list-divider">Apagar<span class="ui-li-count">${fn:length(nomeListApagar)}</span></li>
			    
			    <c:forEach var="pessoa" items="${nomeListApagar}">
				    <li>

				    	<a href="#">
				    		<h2>${pessoa.nome}</h2>
				    	</a>
				    	<a href="#" onclick="$('form#form_delete_${pessoa.cpf}').trigger('submit')"></a>
				    	
				    	<form action="<c:url value="/pessoa/deletar"/>" method="post">
				    		<input type="hidden" name="cpf" value="${pessoa.cpf}"/>
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