<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h1>Cadastrar Pessoa</h1>
	<hr />
	<form action="cadastro" method="post">
		<label> Nome: <input type="text" name="nome" />
		</label> <label> Idade: <input type="number" name="idade" min="0" />
		</label> <label> Aposentado: <input type="checkbox"
			name="ehAposentado" />
		</label> <input type="submit" value="Cadastrar" />
	</form>
</body>
</html>