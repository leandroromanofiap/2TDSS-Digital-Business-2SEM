<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Cadastrar Cliente</title>
</head>
<body>

	<form method="post" action="">
		<div>
			<label for="id-nome">Nome</label>
			<input type="text" name="nome" id="id-nome" />
		</div>
		<div>
			<label id="id-idade">Idade</label>
			<input type="number" name="idade" id="id-idade" />
		</div>
		<div>
			<label id="id-cnh">CNH</label>
			<input type="checkbox" name="cnh" id="id-cnh">
		</div>
		<div>
			<label id="id-genero">Genero</label>
			<select id="id-genero" name="genero">
				<option value="MASCULINO">Masculino</option>
				<option value="FEMININO">Feminino</option>
			</select>
		</div>
		<div>
			<input type="submit" value="Cadastrar" />
		</div> 
	</form>

</body>
</html>