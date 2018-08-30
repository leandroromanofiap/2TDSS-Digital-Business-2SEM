<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="tags" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<tags:template titulo="Lista de Produtos">
	<jsp:attribute name="scripts">
		<script>
			$(".botao-remover").on('click', function(e) {
				var produtoId = e.target.id;
				var $produto = $("#" + produtoId);
				
				$('#id-remover').val(produtoId);
				$('#nome-produto').text($produto.text())
			});
		</script>
	</jsp:attribute>

	<jsp:body>
		<h1>Lista de Produtos</h1>
	
		<c:if test="${not empty msg}">
			<div class="alert alert-success">
				${msg}
			</div>
		</c:if>
	
		<table class="table">
			<tr>
				<th>Id</th>
				<th>Nome</th>
				<th>Preço</th>
				<th>Perecível</th>
				<th></th>
				<th></th>
			</tr>
			<c:forEach items="${produtos }" var="p">
				<tr>
					<td>${p.codigo }</td>
					<td id="${p.codigo }">${p.nome }</td>
					<td>${p.preco }</td>
					<td>${p.perecivel?"Sim":"Não" }</td>
					<td>
						<a class="btn btn-primary" href="<c:url value="/produto/editar/${p.codigo }" />">Editar</a>
					</td>
					<td>
						<!-- Button trigger modal -->
						<button type="button" id="${p.codigo}" class="btn btn-danger botao-remover" data-toggle="modal" data-target="#exampleModal">
						  Remover
						</button>
					</td>
				</tr>
			</c:forEach>
		</table>
		
		<!-- Modal -->
		<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
		  <div class="modal-dialog" role="document">
		    <div class="modal-content">
		      <div class="modal-header">
		        <h5 class="modal-title" id="exampleModalLabel">Desejar apagar o registro?</h5>
		        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
		          <span aria-hidden="true">&times;</span>
		        </button>
		      </div>
		      <form action="apagar" method="post">
			      <div class="modal-body">
			        <input type="hidden" id="id-remover" name="id" />
			        <p>Deseja apagar o produto <span id="nome-produto"></span>?</p>
			      </div>
			      <div class="modal-footer">
			        <button type="button" class="btn btn-secondary" data-dismiss="modal">Fechar</button>
			        <button type="submit" class="btn btn-danger">Apagar</button>
			      </div>
		      </form>
		    </div>
		  </div>
		</div>
	</jsp:body>
	
</tags:template>