<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Contato</title>
</head>
<body>
	Meu Contato
	<form action="contato/enviar" method="post">
		<p>Nome: <input type="text" name="nome" /></p>
		<p>Mensagem: <textarea cols="50" rows="5" name="mensagem"></textarea></p>
		<input type="submit" value="Enviar" />
	</form>
 </body>
</html>