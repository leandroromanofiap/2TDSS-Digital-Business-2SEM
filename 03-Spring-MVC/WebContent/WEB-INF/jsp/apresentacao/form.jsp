<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="tags" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<tags:template titulo="Criar Apresentação">
	<jsp:body>
		<c:if test="${not empty mensagem}">
			<div class="alert alert-success">
				${mensagem}
			</div>
		</c:if>
		<form method="post" action="cadastrar">
			<div class="form-group">
				<label for="id-nomegrupo">Nome do Grupo</label>
				<input type="text" class="form-control" name="nome" id="id-nomegrupo" />
			</div>
			<div class="form-group">
				<label for="id-duracao">Duração (minutos)</label>
				<input type="number" class="form-control" name="duracao" id="id-duracao" />
			</div>
			<div class="form-group">
				<label for="id-descricao">Descrição</label>
				<textarea rows="5" cols="50" class="form-control" name="descricao" id="id-descricao"></textarea>
			</div>
			<div class="form-group">
				<label for="id-apresentado">
					<input type="checkbox" name="apresentado" id="id-apresentado" />
					Apresentado?
				</label>
			</div>
			<div>
				<input type="submit" class="btn btn-success" value="Cadastrar apresentação" />
			</div>
		</form>
	</jsp:body>
</tags:template>